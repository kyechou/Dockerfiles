FROM kyechou/archlinux

LABEL maintainer="KY Chou <forendef2846@gmail.com>"

COPY --chown=http:http cloud_net/ /srv/http/cloud_net/
COPY initdb.sql /

RUN echo 'mysql:x:89:89:MariaDB:/var/lib/mysql:/sbin/nologin' >> /etc/passwd \
    && echo 'mysql:x:89:' >> /etc/group \
    && pacman -Syu --needed --noconfirm \
        sudo \
        python \
        mariadb \
        python-pip \
        gcc \
    && mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql \
    && mkdir /run/mysqld \
    && chown -R mysql:mysql /run/mysqld

RUN sudo -u mysql mysqld & \
    sleep 3 \
    && echo -e '\n\ncs436\ncs436\n\n\n\n\n' | mysql_secure_installation \
    && mysql -u root --password=cs436 < /initdb.sql \
    && pushd /srv/http/cloud_net \
    && pip install \
        Django \
        django-webpack-loader \
        djangorestframework \
        mysqlclient \
    && python manage.py makemigrations frinet \
    && python manage.py migrate \
    && popd \
    && pip uninstall --yes \
        Django \
        django-webpack-loader \
        djangorestframework \
        mysqlclient \
    && pacman -Rsn --noconfirm \
        python-pip \
        gcc \
    && rm -rf \
        /usr/share/man/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/* \
        /etc/pacman.d/mirrorlist.pacnew \
        /initdb.sql \
        /srv/http/cloud_net/build \
        /srv/http/cloud_net/manage.py

EXPOSE 3306

COPY run.sh /

ENTRYPOINT ["/bin/bash", "/run.sh"]

# vim: set ts=4 sw=4 et :
