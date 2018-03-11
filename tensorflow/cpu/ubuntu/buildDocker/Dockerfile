FROM ubuntu

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

RUN apt-get --yes update \
    && apt-get --yes upgrade \
    && apt-get --yes install \
        python3 \
        python3-pip \
        python3-dev \
    && pip3 install tensorflow \
    && apt-get --yes remove python3-pip --purge \
    && apt-get --yes autoremove --purge \
    && apt-get --yes clean

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
