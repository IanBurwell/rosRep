#!/usr/bin/env python


import rospy
from ian_bot.msg import PWM as PWMmsg
from ian_bot.srv import PWMResponse, PWM as PWMsrv
import pigpio

class RPiPWM():

	def __init__(self):
		self.sub = rospy.Subscriber('/pi/pwm', PWMmsg, set_PWM_callback)
		self.srv = rospy.Service('/pi/pwm_duty', PWMsrv, handle_get_PWM)
		self.gpio = pigpio.pi()
		if not pi.connected:
			rospy.logerr("pigpio not connected")###########start it
			exit()
		
		
	def handle_get_PWM(self, req):
		return PWMResponse(gpio.pi.get_PWM_dutycycle(req.pin))
		
		
	def set_PWM_callback(self, data):
		#data.pin, data.duty
		if 0>data.pin>31 or 0>data.duty>255:
			rospy.logerr_throttle(1, "Malformed PWM message: " + data)
		self.gpio.set_PWM_dutycycle(data.pin, data.duty)

if __name__ == "__main__":
	try:
		rospy.init_node('rpi_pwm', anonymous=True)
		RPiPWM()
		rospy.spin()
	except rospy.RoSInterrupException:
		pass
