#!/bin/bash

if [ "$1" == '--build' ]; then
  #TODO build dockerfile
  shift
fi

docker run -v "$PWD":/usr/src/linux -w /usr/src/linux linux-arm /bin/bash -c "make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- $@"
