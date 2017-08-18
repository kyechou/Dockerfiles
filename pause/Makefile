############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
# Update: 2017-07-25
############################################

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: base base-devel

base:
	make -C base

base-devel:
	make -C base-devel

.PHONY: all base base-devel
