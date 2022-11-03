FROM cppdev AS build
USER root

# Actual source files are selected via .gitignore
COPY . .

RUN /bootstrap/configure.sh
RUN /bootstrap/build.sh
