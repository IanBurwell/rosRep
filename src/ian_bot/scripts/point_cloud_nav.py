#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import PointCloud
from geometry_msgs.msg import Point

closestPoint = Point()
def update_cloud(data):
    for pt in data.points:


def run():
    pubVel = rospy.Publisher('/mobile_base/commands/velocity', Twist, queue_size=10)
    subPc = rospy.Subscriber('/camera/depth/points', PointCloud, update_cloud)

    rospy.init_node('point_cloud_nav', anonymous=True)
    rate = rospy.Rate(1) # 10hz
    while not rospy.is_shutdown():

	rospy.loginfo()

        pub.publish(hello_str)
	rate.sleep()

if __name__ == '__main__':
    try:
        run()
    except rospy.ROSInterruptException:
        pass

