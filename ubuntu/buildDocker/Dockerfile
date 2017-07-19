FROM ubuntu

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

COPY sources.list /etc/apt/sources.list

RUN apt-get --yes update \
    && apt-get --yes upgrade \
    && apt-get --yes autoremove --purge \
    && apt-get --yes clean

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
