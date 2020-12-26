#ifndef __UART_H_
#define __UART_H_

#include <iostream>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#include <termios.h>
#include <string.h>

int open_port();
int set_opt( int fd );
bool recvData( int fd, char *recvbuff, int n );
bool send_Byte( int fd, char byte );

#endif
