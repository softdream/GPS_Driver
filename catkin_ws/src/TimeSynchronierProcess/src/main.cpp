#include "timeSynchronier.h"

int main( int argc, char **argv )
{
	ROS_INFO( "Program Begins ..." );
	ros::init( argc, argv, "TimeSynchronier" );

	mySynchronier mySync;

	//ros::spin();	

	return 0;
}
