#!/bin/sh

for command in \
  om \
  p-automator \
  bosh \
  uaac \
  jq
do
  alias $command="docker run --interactive --tty --volume $(pwd):/workspace pcf-tools:latest $command"
done
