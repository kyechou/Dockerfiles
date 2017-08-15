FROM base/archlinux

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

COPY mirrorlist /etc/pacman.d/mirrorlist

RUN pacman -Syu --needed --noconfirm \
    && rm -rf \
        /usr/share/man/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/* \
        /etc/pacman.d/mirrorlist.pacnew \

ENTRYPOINT ["/bin/bash"]

# vim: set ts=4 sw=4 et :
