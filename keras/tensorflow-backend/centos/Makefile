############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
# Update: 2017-07-25
############################################

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: build

build:
	docker build -f ./buildDocker/Dockerfile -t kyechou/keras:tf-centos ./buildDocker

create: build
	docker create -h keras-tf --name keras-tf kyechou/keras:tf-centos

.PHONY: all build create
