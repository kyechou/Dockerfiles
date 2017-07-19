FROM centos

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

# Theano
RUN yum -y update \
    && yum -y install epel-release \
    && yum -y install \
        python34 \
        python34-devel \
        python34-pip \
        git \
    && pip3 install git+https://github.com/Theano/Theano.git\#egg=Theano

# libgpuarray
RUN yum -y update \
    && yum -y install epel-release \
    && yum -y install \
        python34 \
        python34-devel \
        python34-pip \
        git \
        gcc \
        make \
        cmake3 \
    && pip3 install Cython \
    && git clone https://github.com/Theano/libgpuarray.git \
    && cd libgpuarray \
    && mkdir build \
    && cd build \
    && cmake3 .. -DCMAKE_BUILD_TYPE=Release \
    && make \
    && make install \
    && cd .. \
    && python3 setup.py build \
    && python3 setup.py install --optimize=1 \
    && pip3 uninstall -y Cython

# strip
RUN yum -y remove \
        python34-pip \
        git \
        gcc \
        make \
        cmake3

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
