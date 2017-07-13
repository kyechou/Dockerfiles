FROM centos

MAINTAINER KY Chou <forendef2846@gmail.com>

RUN yum -y update \
    && yum -y install epel-release \
    && yum -y install \
        libgomp \
        python34 \
        python34-pip \
        python34-devel \
    && pip3 install tensorflow-gpu \
    && ln -sf python3 /usr/bin/python \
    && mkdir -p /usr/local/cuda-8.0

CMD ["/bin/bash"]

# vim: set ts=4 sw=4 et :
