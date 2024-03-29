FROM gcc:10.3 AS cppdev
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
    pkg-config
ENV CC=gcc
ENV CXX=g++

RUN mkdir /bootstrap

COPY bootstrap/install_cmake.sh /bootstrap/
RUN /bootstrap/install_cmake.sh
ENV PATH=/opt/cmake/latest/bin:$PATH

COPY bootstrap/install_vcpkg.sh /bootstrap/
RUN /bootstrap/install_vcpkg.sh
ENV VCPKG_ROOT=/opt/vcpkg

COPY bootstrap/install_packages.sh /bootstrap/
RUN /bootstrap/install_packages.sh

RUN mkdir /out
WORKDIR /out

ARG UID
ARG GID
RUN groupadd -g $GID user
RUN useradd -ms /bin/bash -u $UID -g $GID user
USER user
ENV PATH=/opt/cmake/latest/bin:$PATH

COPY bootstrap/* /bootstrap/
