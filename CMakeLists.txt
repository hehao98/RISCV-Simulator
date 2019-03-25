cmake_minimum_required(VERSION 3.1)

project(RISCV-Simulator)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "-O2 -Wall")

include_directories(${CMAKE_SOURCE_DIR}/include)

add_executable(Simulator src/Main.cpp src/MemoryManager.cpp src/Simulator.cpp src/BranchPredictor.cpp)

