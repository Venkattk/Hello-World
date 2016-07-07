#Dockerfile to create debian:8 and source/make VPP from FD.io VPP into /vpp
FROM debian:jessie
MAINTAINER Venkat
RUN sudo apt-get update \
 && sudo apt-get -y install vim \
   git \
   build-essential \
   linux-headers-`uname -r` \
 && git clone https://gerrit.fd.io/r/vpp \
 && cd vpp \
 && sudo make install-dep \
 && sudo make bootstrap \
 && sudo make build
