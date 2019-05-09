cmake_minimum_required(VERSION 3.1)

project(YuvImageProcessor)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "-O2 -Wall -march=native")

add_executable(YuvImageProcessor YuvImageProcessor.cpp)

