FROM ubuntu

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

RUN apt-get --yes update \
    && apt-get --yes upgrade \
    && apt-get --yes install \
        libgomp1 \
        python3 \
        python3-dev \
        python3-pip \
        git \
    && pip3 install tensorflow-gpu \
    && git clone https://github.com/tensorflow/benchmarks.git \
    && apt-get --yes remove --purge \
        python3-pip \
        git \
    && apt-get --yes autoremove --purge \
    && apt-get --yes clean

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
