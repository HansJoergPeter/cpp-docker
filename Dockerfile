FROM ubuntu:22.04 AS cppdev
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install \
    build-essential \
    tar \
    curl \
    wget \
    git \
    zip \
    unzip \
    tree \
    pkg-config \
    clang-14 \
    clang-format-14 \
    clang-tidy-14
ENV CC=clang-14
ENV CXX=clang++-14

RUN mkdir /scripts

COPY docker-scripts/install_cmake.sh /scripts/
RUN /scripts/install_cmake.sh
ENV PATH=/opt/cmake/latest/bin:$PATH

COPY docker-scripts/install_vcpkg.sh /scripts/
RUN /scripts/install_vcpkg.sh
ENV VCPKG_ROOT=/opt/vcpkg

COPY docker-scripts/install_packages.sh /scripts/
RUN /scripts/install_packages.sh

RUN mkdir /out
WORKDIR /out
