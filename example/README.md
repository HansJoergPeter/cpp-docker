# Example C++ Project
This is a very simple C++/CMake example that illustrates how the `cppdev` bootstrap image can be used in a CI/CD pipeline.
The crucial Docker files are [Dockerfile](./Dockerfile) and [.dockerignore](./.dockerignore).

The build image is generated via:
```bash
# In the root directory of this example
docker build -t build-image .
```
