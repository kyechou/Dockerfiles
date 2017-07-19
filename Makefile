############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
# Update: 2017-07-25
############################################

TARGETS=arch \
	ubuntu \
	osjs \
	tensorflow \
	theano \
	keras

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: $(TARGETS)

push:
	-@docker push kyechou/archlinux
	-@docker push kyechou/ubuntu
	-@docker push kyechou/osjs
	-@docker push kyechou/tensorflow
	-@docker push kyechou/theano
	-@docker push kyechou/keras

clean:
	-@./rmimgs

arch:
	make -C arch

ubuntu:
	make -C ubuntu

osjs: arch
	make -C osjs

tensorflow: arch ubuntu
	make -C tensorflow

theano: arch ubuntu
	make -C theano

keras: theano tensorflow
	make -C keras

.PHONY: all push clean $(TARGETS)
