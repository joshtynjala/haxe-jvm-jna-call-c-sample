# libhaxejna

This is a simple C shared library that contains function named `add_two_ints` that accepts two `int` arguments, calculates their sum, and returns the result as an `int`. The Haxe application will dynamically load this library at run-time and call the function.

```c
int add_two_ints(int a, int b);
```

## Build

This library can be built with [**cmake**](https://cmake.org/) using the following commands:

```sh
mkdir build
cd build
cmake ..
cmake --build .
```

The compiled binary will be created in the _build_ directory.
