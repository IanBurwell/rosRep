#!/usr/bin/env python


import rospy
from ian_bot.msg import PWM
from ian_bot.srv import PWMgetResponse, PWMget
import pigpio

class RPiPWM():

	def __init__(self):
		self.sub = rospy.Subscriber("/pi/servo", PWM, self.set_PWM_callback)
		self.srv = rospy.Service('/pi/servo_pos', PWMget, self.handle_get_PWM)
		self.gpio = pigpio.pi()
		if not self.gpio.connected:
			rospy.logerr("pigpio not connected") ##########start it
			exit()
		rospy.loginfo("initialized")
		
	def handle_get_PWM(self, req):
		return PWMgetResponse(self.gpio.get_servo_pulsewidth(req.pin))
		
	def set_PWM_callback(self, msg):
		#data.pin, data.width
		if not 0<=msg.pin<=31 or not 0<=msg.<=3000:
			rospy.logerr_throttle(1, "Malformed PWM message: " + msg)
		rospy.loginfo("Pin: %d, Duty: %d", msg.pin, msg.width)
		self.gpio.set_servo_pulsewidth(msg.pin, msg.width)

if __name__ == "__main__":
	try:
		rospy.init_node('rpi_servo', anonymous=True)
		RPiPWM()
		rospy.spin()
	except rospy.ROSInterruptException:
		pass
