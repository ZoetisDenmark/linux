
make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- zoetis_defconfig

make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- zImage modules dtbs
