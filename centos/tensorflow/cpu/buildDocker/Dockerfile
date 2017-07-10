FROM centos

MAINTAINER KY Chou <forendef2846@gmail.com>

RUN yum -y update \
    && yum -y install epel-release \
    && yum -y install python34 python34-pip python34-devel \
    && pip3 install tensorflow \
    && ln -sf python3 /usr/bin/python

CMD ["/bin/bash"]

# vim: set ts=4 sw=4 et :
