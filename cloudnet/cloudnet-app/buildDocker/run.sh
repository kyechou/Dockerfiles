#!/bin/bsdh
set -e

/usr/bin/nginx -g 'pid /run/nginx.pid; error_log stderr;'
cd /srv/http/cloud_net
/usr/bin/uwsgi --socket /srv/http/cloud_net/cloud_net.sock --master --processes 4 --threads 2 --uid http --gid http --plugin python --wsgi-file /srv/http/cloud_net/cloud_net/wsgi.py
