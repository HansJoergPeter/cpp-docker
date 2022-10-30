# Docker-based Development Environment for C++
This repository provides a Docker-based, self-contained development environment for C++.
It provides the build scripts for a bootstrap Docker image `cppdev` that can be used both as a base image for a continuous delivery pipeline, or directly for local development.

## Building the Docker Image
Make sure you're logged in as the user who wants to use the image going forward.
The `cppdev` Docker image can be built via:
```bash
# In the root directory of the repo
docker build --build-arg UID=$UID --build-arg GID=`id -g` -t cppdev .
```

## Running the C++ development scripts
The development scripts under `scripts/` can now be executed in your C++ project directory:
```bash
# In the root directory of your C++/CMake project
configure.sh
build.sh -j
run.sh build/bin/my_executable
```
It is recommended to add this repo's `scripts/` directory to your `PATH` environment variable.
