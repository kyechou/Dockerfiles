FROM ubuntu

MAINTAINER KY Chou <forendef2846@gmail.com>

COPY sources.list /etc/apt/sources.list

RUN apt-get --yes update \
    && apt-get --yes upgrade \
    && apt-get --yes install python3 python3-pip python3-dev \
    && pip3 install tensorflow \
    && ln -sf python3 /usr/bin/python

CMD ["/bin/bash"]

# vim: set ts=4 sw=4 et :
