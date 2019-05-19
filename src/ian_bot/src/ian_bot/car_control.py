import rospy
import ian_bot.msg
import time
from threading import Thread



class Car():
	def __init__(self, timeout=3, slow=True):
		self.timeout=timeout
		self.thr=0
		self.steer=0
		self.updated=false
		self.slow=slow

		self.thread = Thread(target=self._timeout, args=(i,), daemon=True)
		t.start()

	def _timeout(self):
		while(1):
			time.sleep(self.timeout)
			if not updated and not steer=0 and not thr=0:
				self.set_thr(0)
				self.set_steer(0)
				updated=false
			else if updated:
				updated=false

	#-127 to 127 throttle
	def set_thr(self, thr):
		
		updated=true

	#-127 to 127 steering
	def set_steer(self, steer):
		
		updated=true

if __name__ == "__main__":
	try:
		rospy.init_node('rpi_pwm', anonymous=True)
		Car()
		rospy.spin()
	except rospy.RoSInterrupException:
		pass

