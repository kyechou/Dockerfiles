FROM kyechou/ubuntu

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

# Theano
RUN apt-get --yes update \
    && apt-get --yes upgrade \
    && apt-get --yes install \
        python3 \
        python3-dev \
        python3-pip \
        git \
    && pip3 install git+https://github.com/Theano/Theano.git\#egg=Theano

# libgpuarray
RUN apt-get --yes update \
    && apt-get --yes upgrade \
    && apt-get --yes install \
        python3 \
        python3-dev \
        python3-pip \
        git \
        cmake \
    && pip3 install Cython \
    && git clone https://github.com/Theano/libgpuarray.git \
    && cd libgpuarray \
    && mkdir build \
    && cd build \
    && cmake .. -DCMAKE_BUILD_TYPE=Release \
    && make \
    && make install \
    && cd .. \
    && python3 setup.py build \
    && python3 setup.py install --optimize=1 \
    && pip3 uninstall -y Cython

# strip
RUN apt-get --yes remove --purge \
        python3-pip \
        git \
        cmake \
    && apt-get --yes autoremove --purge \
    && apt-get --yes clean

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
