#!/bin/bash

dir=`pwd`

docker run -it --rm -v $dir:/out:rw cppdev "$@"
