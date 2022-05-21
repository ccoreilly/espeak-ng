
BUILDER_TAG := '0.0.1'
REPOSITORY := 'ghcr.io/ccoreilly/'

docker-build:
    docker build --progress=plain -f Dockerfile.builder -t {{REPOSITORY}}espeak-builder:{{BUILDER_TAG}} .

bashin:
	docker run --rm -it -v `pwd`:/io -w /io {{REPOSITORY}}espeak-builder:{{BUILDER_TAG}} bash

build:
	docker run --rm -it -v `pwd`:/io -w /io {{REPOSITORY}}espeak-builder:{{BUILDER_TAG}} bash -c "./autogen.sh; CFLAGS=-fPIC ./configure --prefix=/usr; make"