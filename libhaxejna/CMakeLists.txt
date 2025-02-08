cmake_minimum_required(VERSION 3.10)

project(haxejna)
add_library(haxejna SHARED haxejna.c)
set_target_properties(haxejna PROPERTIES
                      LIBRARY_OUTPUT_DIRECTORY $<1:${CMAKE_BINARY_DIR}>
                      RUNTIME_OUTPUT_DIRECTORY $<1:${CMAKE_BINARY_DIR}>
                      WINDOWS_EXPORT_ALL_SYMBOLS TRUE)
