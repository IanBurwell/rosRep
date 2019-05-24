#!/usr/bin/env python


import rospy
from ian_bot.msg import PWM
from ian_bot.srv import PWMgetResponse, PWMget, PWMfreq, PWMfreqResponse
import pigpio

class RPiPWM():

	def __init__(self):
		self.sub = rospy.Subscriber("/pi/servo", PWM, self.set_PWM_callback)
		self.pulseSrv = rospy.Service('/pi/servo_pos', PWMget, self.handle_get_PWM)
		self.freqSrv = rospy.Service('/pi/pwm_freq', PWMfreq, self.handle_freq_change)
		self.gpio = pigpio.pi()
		if not self.gpio.connected:
			rospy.logerr("pigpio not connected") ##########start it
			exit()
		rospy.loginfo("initialized")
		
	def handle_get_PWM(self, req):
		return PWMgetResponse(self.gpio.get_servo_pulsewidth(req.pin))
	
	def handle_freq_change(self, req):
		self.gpio.set_PWM_frequency(req.pin, req.freq)
		return PWMfreqResponce(self.gpio.get_PWM_frequency(req.pin))
	
	def set_PWM_callback(self, msg):
		#data.pin, data.width
		if not 0<=msg.pin<=31 or not (msg.width == 0 or 500<=msg.width<=2500):
			rospy.logerr_throttle(1, "Malformed PWM message: %d | %d" % (msg.pin, msg.width))
			return
		rospy.loginfo("Pin: %d, Timing: %d", msg.pin, msg.width)
		self.gpio.set_servo_pulsewidth(msg.pin, msg.width)

if __name__ == "__main__":
	try:
		rospy.init_node('rpi_servo', anonymous=True)
		RPiPWM()
		rospy.spin()
	except rospy.ROSInterruptException:
		pass
