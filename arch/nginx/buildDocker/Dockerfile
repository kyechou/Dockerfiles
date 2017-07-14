FROM kyechou/archlinux

MAINTAINER KY Chou <forendef2846@gmail.com>

RUN pacman -Syu --needed --noconfirm nginx-mainline \
    && rm -rf \
        /usr/share/man/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/* \
        /etc/pacman.d/mirrorlist.pacnew \
        /etc/nginx \
        /usr/share/nginx/html

COPY etc /etc
COPY usr /usr

EXPOSE 80 443

ENTRYPOINT ["/usr/bin/nginx"]

# vim: set ts=4 sw=4 et :
