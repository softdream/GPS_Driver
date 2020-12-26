#include <ros/ros.h>
#include <iostream>
#include <unistd.h>
#include <string>
#include <vector>   
#include <sstream> 
#include <fstream>

#include <IntegratedNavigation/integratedNavigationMsg.h>
#include "uart.h"

/* buffer of receive */
char recvBuff[1024];

/* data of type of string be converted to type of number */
template <typename Type>
Type stringToNum(const std::string &str)
{
	std::stringstream iss(str);
	Type num;
	iss >> num;
	return num;
}


int main( int argc, char **argv )
{
	std::cout<<"Program begins ... "<<std::endl;
	
	int recvCount = 0;
	
	int previous = 0, rear = 0; // pointer to indicate the position of the exact data int a receive buffer.

	/* init the ros */
	ros::init( argc, argv, "IntegrateNavigationSystem" );
	ros::NodeHandle n;

	/* Publisher of the integrated navigation data */
	ros::Publisher pub = n.advertise<IntegratedNavigation::integratedNavigationMsg>( "/integratedNavigation/data", 1);


	/* open the uart device */
	int uart_fd = open_port();
	std::cout<<"uart fd = "<<uart_fd <<std::endl;
	if( uart_fd > 0 ){
		if( set_opt( uart_fd ) != true ){
			std::cerr<<"set port failed ... "<<std::endl;
			return false;
		}
	}
	else{
		std::cerr<<"open port failed ..."<<std::endl;
		exit(-1);
	}
	sleep( 1 );


	std::string s1; 
	std::vector<std::string> arr1; // define a vector of string
	int position = 0;	
	IntegratedNavigation::integratedNavigationMsg recvMsg;

	while(ros::ok()){
		memset( recvBuff, 0, sizeof( recvBuff ) );
		if( recvData( uart_fd, recvBuff, sizeof( recvBuff ) ) ){
			if( recvCount <= 1 ) recvCount ++;
			if( recvCount > 1 ){
				/* parse the one frame of message */
				s1 = recvBuff;
				//std::cout<<"s1 = "<< s1 <<std::endl;
				//std::cout<<"length = "<<s1.length()<<std::endl;
				do{
					std::string tmp_s;
					position = s1.find(","); //找到逗号的位置     
					tmp_s = s1.substr(0, position); //截取需要的字符串      
					s1.erase(0, position + 1); //将已读取的数据删去       
					arr1.push_back(tmp_s);   //将字符串压入容器中    
				} while (position != -1);
	
				int d0 = stringToNum<int>( arr1[1] ); // GPSWeek 
				//printf("GPSWeek = %d\r\n", d0);
				recvMsg.GPSWeek = d0;
				double d1 = stringToNum<double>( arr1[2] ); // GPSTime 
				//printf( "GPSTime = %f\r\n", d1 );
				recvMsg.GPSTime = d1;
				double d2 = stringToNum<double>( arr1[3] ); // Heading 
				//printf("heading = %f\r\n", d2);
				recvMsg.Heading = d2;
				double d3 = stringToNum<double>( arr1[4] ); // Pitch
				//printf( "pitch = %f\r\n", d3 ); 
				recvMsg.Pitch = d3;
				double d4 = stringToNum<double>( arr1[5] ); // Roll
				//printf( "roll = %f\r\n", d4 ); 
				recvMsg.Roll = d4;
				double d5 = stringToNum<double>( arr1[6] ); // gyroX
        	       	        //printf( "gyroX = %f\r\n", d5 );
				recvMsg.gyroX = d5;
				double d6 = stringToNum<double>( arr1[7] ); // gyroY
        	       	        //printf( "gyroY = %f\r\n", d6 );
				recvMsg.gyroY = d6;
				double d7 = stringToNum<double>( arr1[8] ); // gyroZ
               		        //printf( "gyroZ = %f\r\n", d7 );
				recvMsg.gyroZ = d7;
				double d8 = stringToNum<double>( arr1[9] ); // accX
        	                //printf( "accX = %f\r\n", d8 );
				recvMsg.accX = d8;
				double d9 = stringToNum<double>( arr1[10] ); // accY
                	        //printf( "accY = %f\r\n", d9 );
				recvMsg.accY = d9;
				double d10 = stringToNum<double>( arr1[11] ); // accZ
                	       	//printf( "accZ = %f\r\n", d10 );
				recvMsg.accZ = d10;
				double d11 = stringToNum<double>( arr1[12] ); // latitude
	       	                //printf( "latitude = %f\r\n", d11 );
				recvMsg.Lattitude = d11;
				double d12 = stringToNum<double>( arr1[13] ); // longitude
                	        //printf( "longtitude = %f\r\n", d12 );
				recvMsg.Longitude = d12;
				double d13 = stringToNum<double>( arr1[14] ); // attitude
                	    	//printf( "attitude = %f\r\n", d13 );
				recvMsg.Altitude = d13;
				double d14 = stringToNum<double>( arr1[15] ); // Ve
	       	                //printf( "Ve = %f\r\n", d14 );
				recvMsg.Ve = d14;
				double d15 = stringToNum<double>( arr1[16] ); // Vn
	       	                //printf( "Vn = %f\r\n", d15 );
				recvMsg.Vn = d15;
				double d16 = stringToNum<double>( arr1[17] ); // Vu
       		                //printf( "Vu = %f\r\n", d16 );
				recvMsg.Vu = d16;
				double d17 = stringToNum<double>( arr1[18] ); // V
        	      	        //printf( "V = %f\r\n", d17 );
				recvMsg.Baseline = d17;
				int d18 = stringToNum<int>( arr1[19] ); // NSV1 
                	       // printf( "NSV1 = %d\r\n", d18 );
				recvMsg.NSV1 = d18;
				int d19 = stringToNum<int>( arr1[20] ); // NSV2
	                        //printf( "NSV2 = %d\r\n", d19 );
				recvMsg.NSV2 = d19;
				char d20 = stringToNum<char>( arr1[21] ); // status
        	                //printf( "status = %d\r\n", d20 );
				recvMsg.Status = d20;
				double d21 = stringToNum<double>( arr1[22] ); // age
               		        //printf( "age = %f\r\n", d21 );
				recvMsg.Age = d21;

				recvMsg.header.stamp = ros::Time::now();
				pub.publish( recvMsg );
			}
		}
	}

	return 0;
}
