FROM kyechou/archlinux

MAINTAINER KY Chou <forendef2846@gmail.com>

RUN pacman -Syu --needed --noconfirm \
        gcc-libs \
        python \
        python-protobuf \
        python-werkzeug \
        python-bleach \
        python-markdown \
        python-numpy \
        python-pip \
        git \
    && pip install tensorflow-gpu \
    && git clone https://github.com/tensorflow/benchmarks.git \
    && pacman -Rsn --noconfirm python-pip git \
    && rm -rf \
        /usr/share/man/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/* \
        /etc/pacman.d/mirrorlist.pacnew

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
