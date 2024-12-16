# @file         Makefile
# @brief        驱动。
# @details      led 驱动模块 Makefile 例程。
# @author       lzm
# @date         2021-03-14 10:23:03
# @version      v1.1
# @copyright    Copyright By lizhuming, All Rights Reserved
#
# ********************************************************
# @LOG 修改日志:
# ********************************************************

# 编译后内核路径
KERNEL_DIR = /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel

# 定义框架
# ARCH 为 x86 时，编译链头为 
# ARCH 为 arm 时，编译链头为 arm-linux-gnueabihf-
ARCH = arm
ifeq ($(ARCH),x86)
CROSS_COMPILE = #
else
CROSS_COMPILE = arm-linux-gnueabihf-#
endif
CC      = $(CROSS_COMPILE)gcc #
# 共享到sub-Makefile
export  ARCH  CROSS_COMPILE

# 路径
PWD := $(shell pwd)
MODDIR := $(src)

# 注意:驱动目标不要和文件名相同
TARGET_DRV := led_device_driver
TARGET_APP := led_app

# 本次整个编译需要源 文件 和 目录
$(TARGET_DRV)-y += led_module.o
$(TARGET_DRV)-y += ./device/led_dev_a.o
$(TARGET_DRV)-y += ./driver/led_drv.o
obj-m := $(TARGET_DRV).o
# obj-m += $(patsubst %.c,%.o,$(shell ls *.c))

# 编译条件处理
ccflags-y := -I$(MODDIR)/include
ccflags-y += -I$(MODDIR)/device
ccflags-y += -I$(MODDIR)/driver

# 第一个目标
all :
    @$(MAKE) -C $(KERNEL_DIR) M=$(CURDIR)  modules
#   $(CROSS_COMPILE)gcc -o $(TARGET_APP) $(TARGET_APP).c
    
# 清理
.PHONY:clean
clean:
    $(MAKE)  -C $(KERNEL_DIR) M=$(CURDIR) clean
#   rm $(TARGET_APP)

