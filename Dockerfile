FROM ubuntu:bionic
RUN apt update && apt install -y --no-install-recommends build-essential crossbuild-essential-armhf bc
