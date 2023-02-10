#!/bin/bash

cd /opt
git clone https://github.com/microsoft/vcpkg
cd vcpkg
git checkout a4013afe6d3053e739b37c4cb6b5e64b55611e24
./bootstrap-vcpkg.sh
