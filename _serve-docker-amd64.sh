#!/bin/bash

docker build -t jekyll-okalab -f _docker/jekyll-amd64/Dockerfile .
docker run -it --rm -v `pwd`:/jekyll -p 4000:4000 jekyll-amd64 bundle exec jekyll serve --future --draft --host 0.0.0.0
