#!/bin/bash

build_type="Release"
if [ "$#" -ge 2 ]; then
    build_type="$2"
fi

script_name=`realpath $0`
script_dir=`dirname $script_name`
$script_dir/run.sh /bootstrap/run-configure.sh "$@"
