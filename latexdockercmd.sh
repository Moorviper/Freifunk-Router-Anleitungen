#!/bin/sh
IMAGE=moorviper/dockerlatex
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" "$@"  1>/dev/null 2>&1
