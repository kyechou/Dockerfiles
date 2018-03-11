FROM kyechou/archlinux

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

RUN pacman -Syu --needed --noconfirm \
        memcached \
    && groupadd -f -g 973 --system memcached \
    && useradd -u 973 -g memcached --home /etc/nologin --system memcached \
    && rm -rf \
        /usr/share/man/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/* \
        /etc/pacman.d/mirrorlist.pacnew

EXPOSE 11211

ENTRYPOINT ["/usr/bin/memcached", "-o", "modern", "-u", "memcached"]

# vim: set ts=4 sw=4 et :
