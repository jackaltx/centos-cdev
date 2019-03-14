FROM centos:latest
LABEL  Jack <jack@lavnet.net>

RUN yum -y install epel-release && \
    yum -y update && \
    yum -y clean all

# update
RUN yum -y update

# add tools
RUN yum install -y\
	gcc\
	gcc-c++\
	make\
	cmake\
	cmake3\
	openssl-dev\
	gawk\
	bison\
	unzip\
	curl\
	doxygen\
	graphviz\
	glib2-devl\
	git

#-------------------------------------------------------
#
#  Load X11

RUN yum -y install firefox

#-------------------------------------------------------
#
#  For RPM development


# Install various packages to get compile environment
#RUN yum -y groupinstall 'Development Tools'

# Install git command to access GitHub repository
#RUN yum -y install git

# Install rpm-build to use rpmrebuild command
#RUN yum -y install rpm-build

# Install yum-utils to use yumdownloader command
#RUN yum -y install yum-utils

# Install rpmdevtools to use rpmdev-setuptree command
#RUN yum -y install rpmdevtools

# Setup rpm build configuration for root user
#RUN rpmdev-setuptree
#RUN echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros

# Set environment variables
#ENV HOME /root
#WORKDIR /root/rpmbuild

# Set default `docker run` command behavior
#CMD /usr/sbin/sshd -D

RUN /bin/bash
