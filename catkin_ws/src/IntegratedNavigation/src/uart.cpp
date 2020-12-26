#include "uart.h"

int open_port()
{
    char *dev = "/dev/ttyUSB0";
    int fd = open( dev, O_RDWR | O_NOCTTY | O_NDELAY );
    if( fd == -1 ){
        std::cout<<"error1 ..."<<std::endl;
        return false;
    }
    if( fcntl( fd, F_SETFL, 0 ) < 0 ){
        std::cout<<"error2 ..."<<std::endl;
        return false;
    }
    if( isatty( STDIN_FILENO ) == 0 ){
        std::cout<<"error3 ..."<<std::endl;
        return false;
    }
    std::cout<<"open port successfully ..."<<std::endl;
    return fd;
}

int set_opt( int fd )
{
    struct termios newtio, oldtio;
    if( tcgetattr( fd, &oldtio ) != 0 ){
        std::cout<<"read old serial attributions failed ..."<<std::endl;
        return false;
    }
    bzero( &newtio, sizeof( newtio ) );

    newtio.c_cflag |= CLOCAL | CREAD;

    newtio.c_cflag &= ~CSIZE;
    newtio.c_cflag |= CS8;

    newtio.c_cflag &= ~PARENB;

    cfsetispeed( &newtio, B115200 );
    cfsetospeed( &newtio, B115200 );
    
    newtio.c_cflag &= ~CSTOPB;

    newtio.c_cc[VTIME] = 0;
    newtio.c_cc[VMIN] = 1;

    tcflush( fd, TCIFLUSH );
    
    if( ( tcsetattr( fd, TCSANOW, &newtio ) ) != 0 ){
        std::cout<<"com set error ... "<<std::endl;
        return false;
    }
    std::cout<<"set port successfully ..."<<std::endl;
    return true;
}

bool recvData( int fd, char *recvBuff, int n )
{
        int count = 1;
        read( fd, &recvBuff[0], 1 );
        if( recvBuff[0] == '$' ){
                do{
                        read( fd, &recvBuff[ count ], 1 );
                        count ++ ;
		}while( recvBuff[count - 1] != 0x0D && recvBuff[count] != 0x0A );// "count < n " should not be exist in here, maybe, waiting for a test

                std::cout<<"count is: "<<count<<std::endl;
		//for( int i = 1; i < count; i ++ )
		//	std::cout<<"recvBuff["<<i<<"] = "<<recvBuff[i]<<std::endl;
                count = 1;
        }
	else{
		return false;
	}
	return true;
}


bool send_Byte( int fd, char byte )
{
	if( write( fd, &byte, 1 ) != 1){
		return false;
	}
	else{
		return true;
		std::cout<<"send commander successfully ..."<<std::endl;
	}
}
