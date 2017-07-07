FROM ubuntu

MAINTAINER KY Chou <forendef2846@gmail.com>

COPY sources.list /etc/apt/sources.list

RUN apt-get --yes update \
    && apt-get --yes upgrade \
    && apt-get --yes install nginx \
    && rm -rf /etc/nginx /var/www/html

COPY var /var
COPY etc /etc

CMD ["/usr/sbin/nginx"]

# vim: set ts=4 sw=4 et :
