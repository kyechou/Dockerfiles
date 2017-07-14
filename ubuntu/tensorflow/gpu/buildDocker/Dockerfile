FROM ubuntu

MAINTAINER KY Chou <forendef2846@gmail.com>

COPY sources.list /etc/apt/sources.list

RUN apt-get --yes update \
    && apt-get --yes upgrade \
    && apt-get --yes install \
        python3 \
        python3-pip \
        python3-dev \
    && pip3 install tensorflow-gpu \
    && apt-get --yes remove python3-pip --purge \
    && apt-get --yes autoremove --purge \
    && apt-get --yes clean \
    && ln -sf python3 /usr/bin/python

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
