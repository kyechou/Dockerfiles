FROM kyechou/archlinux

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

# Theano
RUN pacman -Syu --needed --noconfirm \
        python \
        python-numpy \
        python-sympy \
        python-scipy \
        python-setuptools \
        git \
    && git clone https://github.com/Theano/Theano.git \
    && cd Theano \
    && python setup.py build \
    && python setup.py install --optimize=1

# libgpuarray (pygpu)
RUN pacman -Syu --needed --noconfirm \
        git \
        gcc \
        make \
        cmake \
        cython \
    && git clone https://github.com/Theano/libgpuarray.git \
    && cd libgpuarray \
    && mkdir build \
    && cd build \
    && cmake .. -DCMAKE_BUILD_TYPE=Release \
    && make \
    && make install \
    && cd .. \
    && python setup.py build \
    && python setup.py install --optimize=1

# strip
RUN pacman -Rsn --noconfirm \
        python-setuptools \
        git \
        gcc \
        make \
        cmake \
        cython \
    && rm -rf \
        /usr/share/man/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/* \
        /etc/pacman.d/mirrorlist.pacnew

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
