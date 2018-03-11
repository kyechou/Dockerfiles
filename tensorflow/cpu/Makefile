############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
############################################

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: arch centos ubuntu

arch:
	make -C arch

centos:
	make -C centos

ubuntu:
	make -C ubuntu

.PHONY: all arch centos ubuntu
