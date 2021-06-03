#!/bin/bash

docker build -t jekyll-armv8 -f _docker/jekyll-armv8/Dockerfile .
docker run -it --rm -v `pwd`:/jekyll -p 4000:4000 jekyll-armv8 bundle exec jekyll serve --future --draft --host 0.0.0.0
