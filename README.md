# go-notebook

This repository contains a Dockerfile that creates an image containing [Jupyter
Notebook](http://jupyter.org/) and the [GoNB
kernel](https://github.com/janpfeifer/gonb).

# Build

The [build.sh](build.sh) script will build the image locally. The latest main
branch is published to

    ghcr.io/mrxk/go-notebook:main

# Run

The [run.sh](run.sh) script will run the latest published package with the
current working directory mounted as `/src` and exposing the notebook on port
8888. After starting the container, browse to the link that is printed to
stdout.

