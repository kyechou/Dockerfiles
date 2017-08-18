############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
# Update: 2017-07-25
############################################

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: build

build:
	gcc pause.c -o ./buildDocker/pause -Wall -Wextra -Wpedantic -Wl,--gc-sections -O2 -std=c11
	docker build -f ./buildDocker/Dockerfile -t kyechou/pause:latest ./buildDocker
	rm ./buildDocker/pause

.PHONY: all build
