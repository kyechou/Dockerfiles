FROM ubuntu

MAINTAINER KY Chou <forendef2846@gmail.com>

COPY sources.list /etc/apt/sources.list

RUN apt-get --yes update \
    && apt-get --yes upgrade \
    && apt-get --yes install nginx \
    && apt-get --yes autoremove --purge \
    && apt-get --yes clean \
    && rm -rf /etc/nginx /var/www/html

COPY var /var
COPY etc /etc

EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/nginx"]

# vim: set ts=4 sw=4 et :
