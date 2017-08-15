############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
# Update: 2017-07-25
############################################

TARGETS=archlinux \
	ubuntu \
	osjs \
	tensorflow \
	theano \
	keras

PUSH_TARGETS=$(TARGETS:%=%-push)

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: $(TARGETS)

push: $(PUSH_TARGETS)

$(PUSH_TARGETS):
	-@docker push kyechou/$(@:%-push=%)

clean:
	-@./rmimgs

archlinux:
	make -C archlinux

ubuntu:
	make -C ubuntu

osjs: archlinux
	make -C osjs

tensorflow: archlinux ubuntu
	make -C tensorflow

theano: archlinux ubuntu
	make -C theano

keras: theano tensorflow
	make -C keras

.PHONY: all push clean $(TARGETS) $(PUSH_TARGETS)
