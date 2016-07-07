#Dockerfile to create debian:8 and source/make VPP from FD.io VPP into /vpp
FROM debian:jessie
MAINTAINER Venkat
RUN apt-get update \
 && apt-get -y install vim \
   git \
   build-essential \
   linux-headers-3.16.0-4-amd64 \
   gcc \
   make \
   linux-headers-`uname -r` \
 && git clone https://gerrit.fd.io/r/vpp \
 && cd vpp
RUN make install-dep
RUN make bootstrap
RUN make build
