# Nugget Protocol NPB

## build
This NPB uses CMake to build the binary.
You can change what to build in `CMakeLists.txt` by simply modifying the `TARGET_CLASSES` and `TARGET_BENCHMARKS`.

Example of building a regular NPB suite:
```
mkdir cbuild && cd cbuild
cmake ..
cmake --build .
```
