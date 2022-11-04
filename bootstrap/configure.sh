#!/bin/bash

build_type="Release"
if [ "$#" -ge 1 ]; then
    build_type="$1"
fi
echo "Running CMake configure for $build_type"

cmake  -B build  -S .  -DCMAKE_BUILD_TYPE=$build_type  -DCMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake
