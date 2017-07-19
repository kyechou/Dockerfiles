############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
# Update: 2017-07-25
############################################

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: build

build:
	docker build -f ./buildDocker/Dockerfile -t kyechou/theano:latest -t kyechou/theano:arch ./buildDocker

create: build
	docker create -h theano --name theano kyechou/theano:arch

.PHONY: all build create
