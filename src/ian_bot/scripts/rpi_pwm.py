#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32MultiArray
import pigpio

class RPiPWM():

	def __init__(self):
		self.sub = rospy.Subscriber('', Float32MultiArray, callback)
		self.gpio = pigpio.pi()
		if not pi.connected:
			rospy.logerr("pigpio not connected")
			exit()
		
		


	def callback(self, data):
		#data.dim
		for pwm in data.data:
			


if __name__ == "__main__":
	try:
		rospy.init_node('rpi_pwm', anonymous=True)
		RPiPWM()
		rospy.spin()
	except rospy.RoSInterrupException:
		pass
