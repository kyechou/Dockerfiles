############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
############################################

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: cpu gpu

cpu:
	make -C cpu

gpu:
	make -C gpu

.PHONY: all cpu gpu
