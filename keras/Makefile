############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
# Update: 2017-07-25
############################################

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: tensorflow theano

tensorflow:
	make -C tensorflow-backend

theano:
	make -C theano-backend

.PHONY: all tensorflow theano
