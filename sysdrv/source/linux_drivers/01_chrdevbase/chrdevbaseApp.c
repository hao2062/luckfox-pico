/***************************************************************
Copyright © ALIENTEK Co., Ltd. 1998-2029. All rights reserved.
文件名		: chrdevbaseApp.c
作者	  	: 正点原子
版本	   	: V1.0
描述	   	: chrdevbase驱测试APP。
其他	   	: 使用方法：./chrdevbase /dev/chrdevbase <1>|<2>
  			 argv[2] 1:读文件
  			 argv[2] 2:写文件		
论坛 	   	: www.openedv.com
日志	   	: 初版V1.0 2022/12/01 正点原子团队创建
***************************************************************/
#include "stdio.h"
#include "unistd.h"
#include "sys/types.h"
#include "sys/stat.h"
#include "fcntl.h"
#include "stdlib.h"
#include "string.h"

// 用户数据，用于测试
static char usrdata[] = {"usr data!"};

/*
 * @description		: main主程序
 * @param - argc 	: argv数组元素个数
 * @param - argv 	: 具体参数
 * @return 			: 0 成功;其他 失败
 */
int main(int argc, char *argv[])
{
	int fd, retvalue;	// 文件描述符（标识文件）和返回值
	char *filename;		// 文件路径（设备节点)
	char readbuf[100], writebuf[100];	// 读/写缓冲区

	// 参数数量检查
	if(argc != 3){
		printf("Error Usage!\r\n");
		return -1;
	}

	// 获取文件名
	filename = argv[1];

	/* 打开驱动文件 */
	// 打开设备文件（字符设备节点)
	fd  = open(filename, O_RDWR);
	if(fd < 0){
		printf("Can't open file %s\r\n", filename);
		return -1;
	}

	// 根据命令行参数决定操作
	// 如果第二个参数为 1，执行读操作
	if(atoi(argv[2]) == 1){ /* 从驱动文件读取数据 */
		// read（）：从 fd（设备文件)，读 50 个字节数据，存在 readbuf 里
		retvalue = read(fd, readbuf, 50);
		if(retvalue < 0){
			printf("read file %s failed!\r\n", filename);
		}else{
			/*  读取成功，打印出读取成功的数据 */
			printf("read data:%s\r\n",readbuf);
		}
	}

	// 如果第二个参数为 2，执行写操作
	if(atoi(argv[2]) == 2){
 	/* 向设备驱动写数据 */
		// 拷贝 userdata 的数据到 writebuf 里
		memcpy(writebuf, usrdata, sizeof(usrdata));
		// write（）：向 fd（设备文件）写 50 个字节，从 writebuf 里
		retvalue = write(fd, writebuf, 50);
		if(retvalue < 0){
			printf("write file %s failed!\r\n", filename);
		}
	}

	/* 关闭设备 */
	retvalue = close(fd);
	if(retvalue < 0){
		printf("Can't close file %s\r\n", filename);
		return -1;
	}

	return 0;
}



