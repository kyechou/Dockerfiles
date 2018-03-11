############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
############################################

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: build

build:
	docker build -f ./buildDocker/Dockerfile -t kyechou/tensorflow:latest-gpu -t kyechou/tensorflow:gpu-arch ./buildDocker

.PHONY: all build
