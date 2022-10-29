#!/bin/bash

cd /opt
git clone https://github.com/microsoft/vcpkg
cd vcpkg
git checkout tags/2022.10.19
./bootstrap-vcpkg.sh
