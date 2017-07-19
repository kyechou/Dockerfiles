FROM kyechou/tensorflow:gpu-centos

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

RUN yum -y update \
    && yum -y install epel-release \
    && yum -y install \
        python34 \
        python34-devel \
        python34-pip \
    && pip3 install keras

RUN yum -y remove \
        python34-pip

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
