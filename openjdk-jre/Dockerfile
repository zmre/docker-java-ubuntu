# Use phusion/baseimage as base image. To make your builds
# reproducible, make sure you lock down to a specific version, not
# to `latest`! See
# https://github.com/phusion/baseimage-docker/blob/master/Changelog.md
# for a list of version numbers.
FROM phusion/baseimage:0.9.16
MAINTAINER Patrick Walsh <patrick.walsh@ironcorelabs.com>

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

ENV DEBIAN_FRONTEND noninteractive
# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

ENV JAVA_UBUNTU_VERSION 7u79-2.5.5-0ubuntu0.14.04.2

WORKDIR /root
RUN apt-get update 
#RUN apt-get install -y curl git supervisor wget unzip

RUN apt-get install -y openjdk-7-jre-headless="$JAVA_UBUNTU_VERSION"

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


