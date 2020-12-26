#ifndef __TIMESYNCHRONIER_H_
#define __TIMESYNCHRONIER_H_

#include <ros/ros.h>
#include <iostream>
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/sync_policies/exact_time.h>
#include <sensor_msgs/PointCloud2.h>
#include <IntegratedNavigation/integratedNavigationMsg.h>


class mySynchronier
{	
public:
	mySynchronier();
	~mySynchronier()
	{

	}
	void callBack( const sensor_msgs::PointCloud2::ConstPtr& oriPointCloud, const IntegratedNavigation::integratedNavigationMsg::ConstPtr& oriNavigation );	

private:
	ros::Publisher pubNavigation;
	ros::Publisher pubLidar;
	ros::NodeHandle nh;
};

mySynchronier::mySynchronier()
{
	pubNavigation = nh.advertise<IntegratedNavigation::integratedNavigationMsg>( "/navigation/data", 1 );
	pubLidar = nh.advertise<sensor_msgs::PointCloud2>( "/lidar/data", 1 );
	
	message_filters::Subscriber<IntegratedNavigation::integratedNavigationMsg>  navigationSub( nh, "/integratedNavigation/data", 1 );
	message_filters::Subscriber<sensor_msgs::PointCloud2>  lidarSub( nh, "/ddd", 1 );
	
	typedef message_filters::sync_policies::ApproximateTime<sensor_msgs::PointCloud2, IntegratedNavigation::integratedNavigationMsg> mySyncPolicy;
	

	message_filters::Synchronizer<mySyncPolicy> sync(mySyncPolicy(10), lidarSub, navigationSub);
	
	sync.registerCallback( boost::bind( &mySynchronier::callBack, this, _1, _2 ) );
	ros::spin();
}

void mySynchronier::callBack( const sensor_msgs::PointCloud2::ConstPtr& oriPointCloud, const IntegratedNavigation::integratedNavigationMsg::ConstPtr& oriNavigation )
{
	//std::cerr<<"callback ......................."<<std::endl;
	sensor_msgs::PointCloud2 synPointCloud = *oriPointCloud;
	IntegratedNavigation::integratedNavigationMsg synNavigation = *oriNavigation;
	
	ROS_INFO( "pointCloud stamp: %f", synPointCloud.header.stamp.toSec() );
	ROS_INFO( "navigation stamp: %f", synNavigation.header.stamp.toSec() );

	pubLidar.publish( synPointCloud );
	pubNavigation.publish( synNavigation );
}

#endif
