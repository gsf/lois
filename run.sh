#!/bin/bash -eu

IMAGE=$(docker build -q .)

docker run --rm --net=host --privileged --interactive --tty --cpus="2" \
  "$IMAGE"
