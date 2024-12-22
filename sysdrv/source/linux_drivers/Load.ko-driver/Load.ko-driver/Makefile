obj-m += helloworld.o

# KERNEL_SOURCE_DIR 指向 kernel 源码目录
KERNEL_SOURCE_DIR := /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/kernel
# OBJS_KERNEL 指向已编译的 objs_kernel 目录
OBJS_KERNEL := /home/hao/dev/sdk/rv1103/luckfox-pico/sysdrv/source/objs_kernel
PWD := $(shell pwd)


# 指定目标架构为 ARM
# ARCH+=arm

# 设置交叉编译工具链的前缀
# CROSS_COMPILE+=/home/hao/dev/sdk/rv1103/luckfox-pico/tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-


all:
	# 同时指定 O= 和 M=，确保内核找到配置文件和模块源码
	$(MAKE) -C $(KERNEL_SOURCE_DIR) O=$(OBJS_KERNEL) M=$(PWD) modules
	echo "Build Complete!"

clean:
	rm -f *.ko *.o *.mod *.mod.c *.mod.o *.symvers *.order
