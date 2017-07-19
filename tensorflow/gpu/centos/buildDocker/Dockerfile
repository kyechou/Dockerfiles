FROM centos

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

RUN yum -y update \
    && yum -y install epel-release \
    && yum -y install \
        libgomp \
        python34 \
        python34-devel \
        python34-pip \
        git \
    && pip3 install tensorflow-gpu \
    && git clone https://github.com/tensorflow/benchmarks.git \
    && yum -y remove \
        python34-pip \
        git

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
