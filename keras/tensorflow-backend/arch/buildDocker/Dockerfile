FROM kyechou/tensorflow:gpu-arch

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

RUN pacman -Syu --needed --noconfirm \
        python \
        python-h5py \
        python-numpy \
        python-scipy \
        python-yaml \
        git \
    && git clone https://github.com/fchollet/keras.git \
    && cd keras \
    && python setup.py install \
    && pacman -Rsn --noconfirm \
        git \
    && rm -rf \
        /usr/share/man/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/* \
        /etc/pacman.d/mirrorlist.pacnew \

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
