/***************************************************************
Copyright © ALIENTEK Co., Ltd. 1998-2029. All rights reserved.
文件名		: newchrled.c
作者	  	: 正点原子
版本	   	: V1.0
描述	   	: LED 驱动文件。
			：这部分程序，只在 init 过程中的注册字符设备部分有修改
其他	   	: 无
论坛 	   	: www.openedv.com
日志	   	: 初版V1.0 2022/12/02 正点原子团队创建
***************************************************************/
#include <linux/types.h>
#include <linux/kernel.h>
#include <linux/delay.h>
#include <linux/ide.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/errno.h>	// 错误码
#include <linux/gpio.h>	
#include <linux/cdev.h>		// 字符设备
#include <linux/device.h>
#include <asm/mach/map.h>	
#include <asm/uaccess.h>	// 用户空间和内核空间的 访问函数
#include <asm/io.h>			// I/O 操作函数

#define NEWCHRLED_CNT			1		  	/* 设备号个数 */
#define NEWCHRLED_NAME			"newchrled"	/* 名字 */
#define LEDOFF 					0			/* 关灯 */
#define LEDON 					1			/* 开灯 */

// GPIO3D 相关的 物理寄存器地址
#define GRF_BASE						(0XFE000000)
#define GRF_GPIO3D_IOMUX_H				(GRF_BASE + 0X1006C)
#define GRF_GPIO3D_DS_H					(GRF_BASE + 0X100EC)

#define GPIO3_BASE						(0XFF640000)
#define GPIO3_SWPORT_DR_H				(GPIO3_BASE + 0X0004)
#define GPIO3_SWPORT_DDR_H				(GPIO3_BASE + 0X000C)

/* 映射后的寄存器虚拟地址指针 */
static void __iomem *GRF_GPIO3D_IOMUX_H_PI;
static void __iomem *GRF_GPIO3D_DS_H_PI;
static void __iomem *GPIO3_SWPORT_DR_H_PI;
static void __iomem *GPIO3_SWPORT_DDR_H_PI;

/* newchrled 设备结构体 */	// 定义了和 LED 相关的字段
struct newchrled_dev{
	dev_t devid;			// 设备号
	struct cdev cdev;		// 存放字符设备
	struct class *class;	// 设备类
	struct device *device;	// 用于创建设备文件
	int major;				/* 主设备号	  */
	int minor;				/* 次设备号   */
};

// 实例化一个设备结构体
struct newchrled_dev newchrled;	/* led设备 */

/*
 * @description		: LED打开/关闭
 * @param - sta 	: LEDON(0) 打开LED，LEDOFF(1) 关闭LED
 * @return 			: 无
 */
void led_switch(u8 sta)
{
	u32 val = 0;
	if(sta == LEDON) {
		val = readl(GPIO3_SWPORT_DR_H_PI);
		val &= ~(0X1 << 12); /* bit12 清零*/
		val |= ((0X1 << 28) | (0X1 << 12));	/* bit28 置1，允许写bit12，
	 					   				   bit12，低电平	*/
		writel(val, GPIO3_SWPORT_DR_H_PI);
	}else if(sta == LEDOFF) { 
		val = readl(GPIO3_SWPORT_DR_H_PI);
		val &= ~(0X1 << 12); /* bit12 清零*/
		val |= ((0X1 << 28) | (0X0 << 12));	/* bit28 置1，允许写bit12，
	 					   				   bit12，低电平	*/
		writel(val, GPIO3_SWPORT_DR_H_PI);
	}	
}

/*
 * @description		: 物理地址映射
 * @return 			: 无
 */
void led_remap(void)
{
  	GRF_GPIO3D_IOMUX_H_PI = ioremap(GRF_GPIO3D_IOMUX_H, 4);
	GRF_GPIO3D_DS_H_PI = ioremap(GRF_GPIO3D_DS_H, 4);
	GPIO3_SWPORT_DR_H_PI = ioremap(GPIO3_SWPORT_DR_H, 4);
	GPIO3_SWPORT_DDR_H_PI = ioremap(GPIO3_SWPORT_DDR_H, 4);
}

/*
 * @description		: 取消映射
 * @return 			: 无
 */
void led_unmap(void)
{
	/* 取消映射 */
	iounmap(GRF_GPIO3D_IOMUX_H_PI);
	iounmap(GRF_GPIO3D_DS_H_PI);
	iounmap(GPIO3_SWPORT_DR_H_PI);
	iounmap(GPIO3_SWPORT_DDR_H_PI);
}

/*
 * @description		: 打开设备
 * @param - inode 	: 传递给驱动的inode
 * @param - filp 	: 设备文件，file结构体有个叫做private_data的成员变量
 * 					  一般在open的时候将private_data指向设备结构体。
 * @return 			: 0 成功;其他 失败
 */
static int led_open(struct inode *inode, struct file *filp)
{
	filp->private_data = &newchrled; /* 设置私有数据 */
	return 0;
}

/*
 * @description		: 从设备读取数据 
 * @param - filp 	: 要打开的设备文件(文件描述符)
 * @param - buf 	: 返回给用户空间的数据缓冲区
 * @param - cnt 	: 要读取的数据长度
 * @param - offt 	: 相对于文件首地址的偏移
 * @return 			: 读取的字节数，如果为负值，表示读取失败
 */
static ssize_t led_read(struct file *filp, char __user *buf, size_t cnt, loff_t *offt)
{
	return 0;
}

/*
 * @description		: 向设备写数据 
 * @param - filp 	: 设备文件，表示打开的文件描述符
 * @param - buf 	: 要写给设备写入的数据
 * @param - cnt 	: 要写入的数据长度
 * @param - offt 	: 相对于文件首地址的偏移
 * @return 			: 写入的字节数，如果为负值，表示写入失败
 */
static ssize_t led_write(struct file *filp, const char __user *buf, size_t cnt, loff_t *offt)
{
	int retvalue;
	unsigned char databuf[1];
	unsigned char ledstat;

	retvalue = copy_from_user(databuf, buf, cnt);
	if(retvalue < 0) {
		printk("kernel write failed!\r\n");
		return -EFAULT;
	}

	ledstat = databuf[0];		/* 获取状态值 */

	if(ledstat == LEDON) {	
		led_switch(LEDON);		/* 打开LED灯 */
	} else if(ledstat == LEDOFF) {
		led_switch(LEDOFF);		/* 关闭LED灯 */
	}
	return 0;
}

/*
 * @description		: 关闭/释放设备
 * @param - filp 	: 要关闭的设备文件(文件描述符)
 * @return 			: 0 成功;其他 失败
 */
static int led_release(struct inode *inode, struct file *filp)
{
	return 0;
}

/* 设备操作函数 */
static struct file_operations newchrled_fops = {
	.owner = THIS_MODULE,
	.open = led_open,
	.read = led_read,
	.write = led_write,
	.release = 	led_release,
};

/*
 * @description	: 驱动入口函数
 * @param 		: 无
 * @return 		: 无
 */
static int __init led_init(void)
{
	u32 val = 0;
	int ret;

	/* 初始化LED */
	/* 1、寄存器地址映射 */
	led_remap();

	/* 2、设置GPIO3_D4为GPIO功能。*/
	val = readl(GRF_GPIO3D_IOMUX_H_PI);
	val &= ~(0X7 << 0);	/* bit2:0，清零 */
	val |= ((0X7 << 16) | (0X0 << 0));	/* bit18:16 置1，允许写bit2:0，
	 					   				   bit2:0：0，用作GPIO3_D4	*/
	writel(val, GRF_GPIO3D_IOMUX_H_PI);

	/* 3、设置GPIO3_D4驱动能力为level0 */
	val = readl(GRF_GPIO3D_DS_H_PI);
	val &= ~(0XF << 0);	/* bit3:0清零*/
	val |= ((0XF << 16) | (0X0 << 0));	/* bit19:16 置1，允许写bit3:0，
	 					   				   bit2:0：0，用作GPIO3_D4	*/
	writel(val, GRF_GPIO3D_DS_H_PI);

	/* 4、设置GPIO3_D4为输出 */
	val = readl(GPIO3_SWPORT_DDR_H_PI);
	val &= ~(0X1 << 12); /* bit12 清零*/
	val |= ((0X1 << 28) | (0X1 << 12));	/* bit28 置1，允许写bit12，
	 					   				   bit12，高电平	*/
	writel(val, GPIO3_SWPORT_DDR_H_PI);

	/* 5、设置GPIO3_D4为低电平，关闭LED灯。*/
	val = readl(GPIO3_SWPORT_DR_H_PI);
	val &= ~(0X1 << 12); /* bit12 清零*/
	val |= ((0X1 << 28) | (0X0 << 12));	/* bit28 置1，允许写bit12，
	 					   				   bit12，低电平	*/
	writel(val, GPIO3_SWPORT_DR_H_PI);

	/* 注册字符设备驱动 */
	/* 1、创建设备号 */
	if (newchrled.major) {		/*  定义了设备号 */
		newchrled.devid = MKDEV(newchrled.major, 0);	// 通过 MKDEV 将 major 和 0 组成设备号
		// 注册设备号：newchrled.devid-设备号，NEWCHRLED_CNT-设备数量，NEWCHRLED_NAME-设备名
		ret = register_chrdev_region(newchrled.devid, NEWCHRLED_CNT, NEWCHRLED_NAME);	
		if(ret < 0) {
			pr_err("cannot register %s char driver [ret=%d]\n",NEWCHRLED_NAME, NEWCHRLED_CNT);
			goto fail_map;
		}
	} else {						/* 没有定义设备号 */
		// 动态分配一个设备号（系统自己随机一个出来）：newchrled.devid-分配的设备号，0-次设备号，NEWCHRLED_CNT-设备数量，NEWCHRLED_NAME-设备名称
		ret = alloc_chrdev_region(&newchrled.devid, 0, NEWCHRLED_CNT, NEWCHRLED_NAME);	/* 申请设备号 */
		if(ret < 0) {
			pr_err("%s Couldn't alloc_chrdev_region, ret=%d\r\n", NEWCHRLED_NAME, ret);
			goto fail_map;
		}
		// 从 devid 中解析出主次设备号
		newchrled.major = MAJOR(newchrled.devid);	/* 获取分配号的主设备号 */
		newchrled.minor = MINOR(newchrled.devid);	/* 获取分配号的次设备号 */
	}
	printk("newcheled major=%d,minor=%d\r\n",newchrled.major, newchrled.minor);	
	
	/* 2、初始化cdev */
	// 将文件操作结构体和字符设备关联：newchrled.cdev-字符设备对象，newchrled_fops-文件操作结构体
	newchrled.cdev.owner = THIS_MODULE;
	cdev_init(&newchrled.cdev, &newchrled_fops);	// 添加 fops 设备文件操作函数
	
	/* 3、添加一个cdev */
	// 将字符设备注册到内核：newchrled_led.cdev-字符设备对象，newchrled.devid-字符设备号，NEWCHRLED_CNT-设备数量
	ret = cdev_add(&newchrled.cdev, newchrled.devid, NEWCHRLED_CNT);	// 向 linux 系统中添加字符设备
	if(ret < 0)
		goto del_unregister;
		
	/* 4、创建类 */
	// 创建新的设备类：THIS_MODULE-当前模块，NEWCHRLED_NAME-设备类名称
	newchrled.class = class_create(THIS_MODULE, NEWCHRLED_NAME);
	if (IS_ERR(newchrled.class)) {
		goto del_cdev;
	}

	/* 5、创建设备 */
	// 创建设备文件（/dev/NEWCHRLED_NAME）：newchrled.class-设备类，NULL-父设备，newchrled.devid-设备号，NULL-设备属性，NEWCHRLED_NAME-设备名称
	newchrled.device = device_create(newchrled.class, NULL, newchrled.devid, NULL, NEWCHRLED_NAME);
	if (IS_ERR(newchrled.device)) {
		goto destroy_class;
	}
	
	return 0;

destroy_class:
	class_destroy(newchrled.class);
del_cdev:
	cdev_del(&newchrled.cdev);
del_unregister:
	unregister_chrdev_region(newchrled.devid, NEWCHRLED_CNT);
fail_map:
	led_unmap();
	return -EIO;
}

/*
 * @description	: 驱动出口函数
 * @param 		: 无
 * @return 		: 无
 */
static void __exit led_exit(void)
{
	/* 取消映射 */
   	led_unmap();
   
	/* 注销字符设备驱动 */
	cdev_del(&newchrled.cdev);/*  删除cdev */
	unregister_chrdev_region(newchrled.devid, NEWCHRLED_CNT); /* 注销设备号 */

	device_destroy(newchrled.class, newchrled.devid);
	class_destroy(newchrled.class);
}

module_init(led_init);
module_exit(led_exit);
MODULE_LICENSE("GPL");
MODULE_AUTHOR("ALIENTEK");
MODULE_INFO(intree, "Y");

/* 前面的字符设备注册程序，是通过 register_chrdev 注册的（设备号 + 设备名 + 操作函数）。
   这种注册方式有两个问题：
   1.需要提前确定主设备号
   2.注册完后会用掉所以次设备号
*/ 

/* 因此，新版内核使用 register_chrdev_region 注册字符设备（设备号 + 申请数量，一般是 1 + 设备名）
1. 创建设备号（devid）-> 2. 初始化字符设备（cdev）-> 3. 添加字符设备（cdev）到内核 
   -> 4. 创建设备类（class）-> 5. 创建设备文件（device）
*/