FROM kyechou/archlinux

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

COPY *.pkg.tar.xz /
COPY nginx.conf /etc/nginx/
COPY --chown=http:http cloud_net/ /srv/http/cloud_net/

RUN pacman -Syu --needed --noconfirm \
        python \
        nodejs \
        npm \
        python-pylibmc \
        nginx-mainline \
        uwsgi \
        uwsgi-plugin-python \
        python-pip \
        gcc \
    && pacman -U --needed --noconfirm \
        /*.pkg.tar.xz \
    && pushd /srv/http/cloud_net \
    && pip install -r requirements.txt \
    && npm install \
    && NODE_ENV=production ./node_modules/.bin/webpack \
        --env.production --config webpack.config.js \
    && python manage.py collectstatic \
    && popd \
    && pacman -Rsn --noconfirm \
        python-pip \
        gcc \
    && rm -rf \
        /usr/share/man/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/* \
        /etc/pacman.d/mirrorlist.pacnew \
        /etc/nginx.conf.pacnew \
        /*.pkg.tar.xz \
        /srv/http/cloud_net/build \
        /srv/http/cloud_net/requirements.txt \
        /srv/http/cloud_net/manage.py

EXPOSE 80

COPY run.sh /

ENTRYPOINT ["/bin/bash", "/run.sh"]

# vim: set ts=4 sw=4 et :
