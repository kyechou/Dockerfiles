FROM centos

MAINTAINER KY Chou <forendef2846@gmail.com>

RUN yum -y update \
    && yum -y install epel-release \
    && yum -y install nginx \
    && rm -rf /etc/nginx \
        /usr/share/nginx/html

COPY etc /etc
COPY usr /usr

EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/nginx"]

# vim: set ts=4 sw=4 et :
