FROM centos

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

RUN yum -y update \
    && yum -y install epel-release \
    && yum -y install python34 python34-pip python34-devel \
    && pip3 install tensorflow

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
