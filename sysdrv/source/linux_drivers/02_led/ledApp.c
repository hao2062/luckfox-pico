/***************************************************************
Copyright © ALIENTEK Co., Ltd. 1998-2029. All rights reserved.
文件名		: ledApp.c
作者	  	: 正点原子
版本	   	: V1.0
描述	   	: LED 开关测试 APP。
其他	   	: 无
使用方法	 ：./ledtest /dev/led  0 关闭LED
		     ./ledtest /dev/led  1 打开LED		
论坛 	   	: www.openedv.com
日志	   	: 初版V1.0 2022/12/02 正点原子团队创建
***************************************************************/
#include "stdio.h"
#include "unistd.h"
#include "sys/types.h"
#include "sys/stat.h"
#include "fcntl.h"
#include "stdlib.h"
#include "string.h"

// 宏定义：控制 LED 打开和关闭的状态码
#define LEDOFF 	0
#define LEDON 	1

/*
 * @description		: main主程序
 * @param - argc 	: argv数组元素个数
 * @param - argv 	: 具体参数
 * @return 			: 0 成功;其他 失败
 */
int main(int argc, char *argv[])
{
	int fd, retvalue;			// fd-文件描述符，retvalue-返回值
	char *filename;				// filename-文件名（绝对路径：/dev/led）
	unsigned char databuf[1];	// 单字节缓冲区，存放控制 LED 的状态码
	
	// 判断命令行参数个数
	if(argc != 3){
		printf("Error Usage!\r\n");
		return -1;
	}

	// 赋值设备文件路径
	filename = argv[1];

	/* 打开led驱动 */
	fd = open(filename, O_RDWR);	// O_RDWR-读写模式打开
	if(fd < 0){
		printf("file %s open failed!\r\n", argv[1]);
		return -1;
	}

	// LED 控制码转 整数，存到 databuf 里
	databuf[0] = atoi(argv[2]);	/* 要执行的操作：打开或关闭 */

	/* 向/dev/led 文件写入数据 */
	retvalue = write(fd, databuf, sizeof(databuf));
	if(retvalue < 0){
		printf("LED Control Failed!\r\n");
		close(fd);
		return -1;
	}

	retvalue = close(fd); /* 关闭文件 */
	if(retvalue < 0){
		printf("file %s close failed!\r\n", argv[1]);
		return -1;
	}
	return 0;
}