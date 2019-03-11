cmake_minimum_required(VERSION 3.1)

project(RISCV-Simulator)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "-O3")

include_directories(${CMAKE_SOURCE_DIR}/include)

add_executable(Simulator src/Simulator.cpp)

