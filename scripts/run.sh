#!/bin/bash

image="cppdev"
if [[ "$(docker images -q $image 2> /dev/null)" == "" ]]; then
    echo "You first need to create the $image image; see README.md for details"
    exit 1
fi

dir=`pwd`
docker run -it --rm -v $dir:/out:rw $image "$@"
