FROM ubuntu:bionic
RUN apt update
RUN apt install -y --no-install-recommends build-essential crossbuild-essential-armhf bc
