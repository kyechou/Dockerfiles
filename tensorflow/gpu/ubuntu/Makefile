############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
# Update: 2017-07-25
############################################

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: build

build:
	docker build -f ./buildDocker/Dockerfile -t kyechou/tensorflow:gpu-ubuntu ./buildDocker

create: build
	docker create -h tfgpu --name tfgpu -p 8888:8888 kyechou/tensorflow:gpu-ubuntu

.PHONY: all build create
