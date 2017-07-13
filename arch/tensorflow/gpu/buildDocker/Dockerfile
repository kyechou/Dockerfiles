FROM kyechou/archlinux

MAINTAINER KY Chou <forendef2846@gmail.com>

RUN pacman -Syu --needed --noconfirm \
        # depends
        gcc-libs \
        python \
        python-protobuf \
        python-werkzeug \
        python-bleach \
        python-markdown \
        python-numpy \
        # makedepends
        python-pip \
    && pip install tensorflow-gpu \
    && pacman -Rsn --noconfirm python-pip \
    && rm -rf \
        /usr/share/man/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/* \
        /etc/pacman.d/mirrorlist.pacnew

CMD ["/bin/bash"]

# vim: set ts=4 sw=4 et :
