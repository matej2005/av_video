# Name of the module you want to build
obj-m += av_video.o

# Optional: if your driver is split into multiple .c files:
av_video-objs := main.o usb.o video.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
 
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean