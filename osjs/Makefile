############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
# Update: 2017-07-25
############################################

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: build

build:
	docker build -f ./buildDocker/Dockerfile -t kyechou/osjs:latest -t kyechou/osjs:arch ./buildDocker

create: build
	docker create -h osjs --name osjs -p 80:8000 kyechou/osjs:arch

.PHONY: all build create
