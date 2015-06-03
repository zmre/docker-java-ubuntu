# Use phusion/baseimage as base image. To make your builds
# reproducible, make sure you lock down to a specific version, not
# to `latest`! See
# https://github.com/phusion/baseimage-docker/blob/master/Changelog.md
# for a list of version numbers.
FROM phusion/baseimage:0.9.16
MAINTAINER IronCore Labs

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# ...put your own build instructions here...
#ENV DEBIAN_FRONTEND noninteractive
WORKDIR /root


# Add a repo where OpenJDK can be found.
RUN add-apt-repository -y ppa:webupd8team/java

RUN apt-get update
RUN apt-get install -y curl git supervisor
RUN apt-get install -y software-properties-common
RUN apt-get install -y ca-certificates-java

# Auto-accept the Oracle JDK license
RUN DEBIAN_FRONTEND=noninteractive echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y oracle-java8-installer

RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

