#!/bin/bash

dir=`pwd`
user=`whoami`

docker run -it --rm -v $dir:/out:rw cppdev "$@"
