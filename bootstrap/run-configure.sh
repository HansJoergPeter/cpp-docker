#!/bin/bash

build_type="Release"
if [ "$#" -ge 2 ]; then
    build_type="$2"
fi

cmake  -B build  -S .  -DCMAKE_BUILD_TYPE=$build_type  -DCMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake
