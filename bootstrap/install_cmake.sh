#!/bin/bash

cd /opt
mkdir cmake
cd cmake
wget https://github.com/Kitware/CMake/releases/download/v3.24.0/cmake-3.24.0-linux-x86_64.tar.gz
tar xzf cmake-3.24.0-linux-x86_64.tar.gz
ln -sf cmake-3.24.0-linux-x86_64 latest
