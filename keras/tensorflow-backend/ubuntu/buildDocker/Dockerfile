FROM kyechou/tensorflow:gpu-ubuntu

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

RUN apt-get --yes update \
    && apt-get --yes upgrade \
    && apt-get --yes install \
        python3 \
        python3-dev \
        python3-pip \
    && pip3 install keras

RUN apt-get --yes remove --purge \
        python3-pip \
    && apt-get --yes autoremove --purge \
    && apt-get --yes clean

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
