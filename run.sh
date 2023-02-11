#!/bin/bash
docker pull ghcr.io/mrxk/go-notebook:main
docker run --rm -it -p 8888:8888 -v $(pwd):/src ghcr.io/mrxk/go-notebook:main
