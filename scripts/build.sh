#!/bin/bash

script_name=`realpath $0`
script_dir=`dirname $script_name`
$script_dir/run.sh /bootstrap/run-build.sh "$@"
