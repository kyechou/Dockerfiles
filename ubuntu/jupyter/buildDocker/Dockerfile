FROM ubuntu

MAINTAINER KY Chou <forendef2846@gmail.com>

COPY sources.list /etc/apt/sources.list

RUN apt-get --yes update \
    && apt-get --yes upgrade

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
