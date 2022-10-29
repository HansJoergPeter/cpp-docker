# Docker-based Development Environment for C++
This repository provides a Docker-based, self-contained development environment for C++.
It provides the build scripts for a bootstrap Docker image `cppdev` that can be used both as a base image for a continuous delivery pipeline, or directly for local development.

## Building the Docker Image
The `cppdev` Docker image can be built via:
```bash
docker build --build-arg UID=$UID --build-arg GID=`id -g` -t cppdev .
```
