FROM kyechou/archlinux

MAINTAINER KY Chou <forendef2846@gmail.com>

RUN pacman -Syu --needed --noconfirm \
        git \
        npm \
        nodejs \
        openssh \
    && git clone https://github.com/os-js/OS.js.git \
    && cd OS.js \
    && find . -type f -name '*.md' -exec rm -f {} + \
    && find . -type f -name '.git*' -exec rm -f {} + \
    && find . -type f -name '.bithoundrc' -exec rm -f {} + \
    && find . -type f -name '.csslint*' -exec rm -f {} + \
    && find . -type f -name '.eslint*' -exec rm -f {} + \
    && find . -type f -name '.travis.yml' -exec rm -f {} + \
    && rm -rf \
        AUTHORS* \
        CHANGELOG* \
        Vagrantfile \
        src/gfx \
        src/installer \
        src/x11-launcher \
    && npm install --production \
    && node osjs build \
    && pacman -Rsn --noconfirm \
        git \
        npm \
    && rm -rf \
        src/build \
        src/conf \
        src/packages \
        src/templates \
        /usr/share/man/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/* \
        /etc/pacman.d/mirrorlist.pacnew

EXPOSE 8000

ENTRYPOINT ["node", "/OS.js/src/server/node/server.js"]

# vim: set ts=4 sw=4 et :
