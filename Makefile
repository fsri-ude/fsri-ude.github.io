DOCKERBIN := $(shell command -v docker 2>/dev/null)
ifdef DOCKERBIN # use docker if it is present
DOCKERIMG=klakegg/hugo
DOCKER=docker run --rm -it -v $(shell pwd):/src
endif

all: build run

build: setup
	$(DOCKER) $(DOCKERIMG)

run: setup
	$(DOCKER) -p 1313:1313 $(DOCKERIMG) server

setup:
	git submodule update --init --recursive

new:
	$(DOCKER) $(DOCKERIMG) new $(title)