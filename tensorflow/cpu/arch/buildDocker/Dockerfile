FROM kyechou/archlinux

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

RUN pacman -Syu --needed --noconfirm \
        python-tensorflow \
        python-werkzeug \
        python-bleach \
        python-markdown \
        python-numpy \
        git \
    && git clone https://github.com/tensorflow/benchmarks.git \
    && pacman -Rsn --noconfirm git \
    && rm -rf \
        /usr/share/man/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/* \
        /etc/pacman.d/mirrorlist.pacnew

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
