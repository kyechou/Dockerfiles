############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
############################################

TARGETS=cloudnet-app \
	cloudnet-db \
	cloudnet-memcached

START_TARGETS=$(TARGETS:%=start-%)
STOP_TARGETS=$(TARGETS:%=stop-%)

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: $(TARGETS)

create:
	docker network ls | grep cloudnet >/dev/null || docker network create --driver=bridge --subnet=172.32.32.0/24 --gateway=172.32.32.254 cloudnet
	docker create --name=cloudnet-app       --network=cloudnet --ip=172.32.32.1 --publish=80:80 kyechou/cloudnet:app
	docker create --name=cloudnet-db        --network=cloudnet --ip=172.32.32.2 kyechou/cloudnet:db
	docker create --name=cloudnet-memcached --network=cloudnet --ip=172.32.32.3 kyechou/cloudnet:memcached

start: $(START_TARGETS)

stop: $(STOP_TARGETS)

push:
	-@docker push kyechou/cloudnet

clean:
	-@./rmimgs

$(TARGETS):
	make -C $@

$(START_TARGETS):
	docker start $(@:start-%=%)

$(STOP_TARGETS):
	docker stop $(@:stop-%=%)

.PHONY: all create start stop push clean $(TARGETS) $(START_TARGETS) $(STOP_TARGETS)
