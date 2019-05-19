#!/usr/bin/env python


import rospy
from ian_bot.msg import PWM
from ian_bot.srv import PWMgetResponse, PWMget
import pigpio

class RPiPWM():

	def __init__(self):
		self.sub = rospy.Subscriber("/pi/pwm", PWM, self.set_PWM_callback)
		self.srv = rospy.Service('/pi/pwm_duty', PWMget, self.handle_get_PWM)
		self.gpio = pigpio.pi()
		if not self.gpio.connected:
			rospy.logerr("pigpio not connected") ##########start it
			exit()
		rospy.loginfo("initialized")
		
	def handle_get_PWM(self, req):
		return PWMgetResponse(self.gpio.get_PWM_dutycycle(req.pin))
		
	def set_PWM_callback(self, msg):
		#data.pin, data.duty
		if not 0<=msg.pin<=31 or not 0<=msg.duty<=255:
			rospy.logerr_throttle(1, "Malformed PWM message: " + msg)
		rospy.loginfo("Pin: %d, Duty: %d", msg.pin, msg.duty/255.0*100)
		self.gpio.set_PWM_dutycycle(msg.pin, msg.duty)

if __name__ == "__main__":
	try:
		rospy.init_node('rpi_pwm', anonymous=True)
		RPiPWM()
		rospy.spin()
	except rospy.ROSInterruptException:
		pass
