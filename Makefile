############################################
# Makefile for building images
# Author: KY Chou <forendef2846@gmail.com>
############################################

TARGETS=archlinux \
	pause \
	cloudnet \
	tensorflow

PUSH_TARGETS=$(TARGETS:%=%-push)

NPROCS=$(shell grep -c ^processor /proc/cpuinfo)
MAKEFLAGS+=-j$(NPROCS)

all: $(TARGETS)

push: $(PUSH_TARGETS)

$(PUSH_TARGETS):
	-@docker push kyechou/$(@:%-push=%)

clean:
	-@rm -f pause/buildDocker/pause &>/dev/null
	-@./rmimgs

cleanall:
	-@rm -f pause/buildDocker/pause &>/dev/null
	-@./rmimgs -a

archlinux:
	make -C archlinux

pause: archlinux
	make -C pause

cloudnet: archlinux
	make -C cloudnet

tensorflow: archlinux
	make -C tensorflow

.PHONY: all push clean cleanall $(TARGETS) $(PUSH_TARGETS)
