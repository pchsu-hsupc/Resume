#!/usr/bin/env bash

docker build -t latex .
docker run --rm -i -v "$PWD":/data latex pdflatex hpc.tex
docker run --rm -i -v "$PWD":/data latex pdftoppm -png -r 300 -singlefile hpc.pdf hpc
