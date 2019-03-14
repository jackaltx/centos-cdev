FROM centos:latest
LABEL  Jack <jack@lavnet.net>

# add epel repo
RUN yum -y install epel-release

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

RUN /bin/bash
