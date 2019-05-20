import rospy
from ian_bot.msg import PWM
from std_msgs.msg import Int16
import time
from threading import Thread

THR_PIN = 19
STEER_PIN = 20


class Car():
	def __init__(self, timeout=3, slow=True):
		self.timeout=timeout
		self.thr=0
		self.steer=0
		self.updated=False
		self.slow=True

		self.thr_sub = rospy.Subscriber("/car/throttle", Int16, self.set_thr)
		self.str_sub = rospy.Subscriber("/car/steer", Int16, self.set_steer)
		self.pwm_pub = rospy.Publisher("/pi/servo", PWM, queue_size=10)
		self.rate = rospy.Rate(10)
		rospy.loginfo("Initialised")
		self.timer = rospy.Timer(rospy.Duration(5), self._timeout, oneshot=True)

		while not rospy.is_shutdown():
			if self.updated:
				self.pwm_pub.publish(PWM(THR_PIN,(self.thr+127)/float(255)*2000+500))
				self.pwm_pub.publish(PWM(STEER_PIN,(self.steer+127)/float(255)*2000+500))
				self.updated = False
			self.rate.sleep()

	def reset_timer(self):
		self.timer.shutdown()
		self.timer = rospy.Timer(rospy.Duration(5), self._timeout, oneshot=True)

	def _timeout(self, event):
		rospy.loginfo("Timeout, dissabling pwm")
		self.thr=0
		self.steer=0
		self.pwm_pub.publish(PWM(THR_PIN,0))
		self.pwm_pub.publish(PWM(STEER_PIN,0))
		self.updated=False

	#-127 to 127 throttle
	def set_thr(self, thr):
		self.reset_timer()
		if thr.data == self.thr:
			return
		self.thr=thr.data
		self.updated=True

	#-127 to 127 steering
	def set_steer(self, steer):
                self.reset_timer()
                if thr.steer == self.steer:
			return
		self.steer=steer.data
		self.updated=True

if __name__ == "__main__":
	try:
		rospy.init_node('rpi_pwm', anonymous=True)
		Car()
		rospy.spin()
	except rospy.ROSInterruptException:
		pass

