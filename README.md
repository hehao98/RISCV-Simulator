# RISC-V Simulator

A Simple RISC-V CPU Simulator with 5 Stage Pipeline, Branch Prediction and Cache Simulation

This repository contains my solution to Computer Architecture Lab 2-4 at Peking University, Spring 2019. It is a simple RISC-V Emulator suppprting user mode RV64I instruction set. I made my project open source in the hope that others can learn from my code about how to make a CPU Emulator and get a deeper understanding in computer architecture.

Note that this is just a toy for learning and is NOT a robust and full solution to RISC-V CPU Emulation. Use `qemu` for that purpose instead.

## Features

1. Supporting 54 RISC-V instructions from the RV64I instruction set.
2. Branch perdiction module with a set of branch perdicton algorithms.
3. Simulation of five stage pipeline like that in the "Computer Organization and Design, Hardware/Software Interface" Book.
4. Simulation of cache and various cache eviction strategies(to be done).
5. A custom SIMD extension and its evaluation(to be done).

## Compile

```
mkdir build
cd build
cmake ..
make
```

## Usage

```
./Simulator riscv-elf-file-name [-v] [-s] [-d] [-b strategy]
```
Parameters:

1. `-v` for verbose output, can redirect output to file for further analysis
2. `-s` for single step execution, often used in combination with `-v`.
3. `-d` for creating memory and register history dump in `dump.txt`
4. `-b` for branch perdiction strategy (default `BTFNT`), accepted parameters are `AT`, `NT`, `BTFNT` and `BPB`.
   * AT: Always Taken
   * NT: Always Not Taken
   * BTFNT: Back Taken Forward Not Taken
   * BPB: Branch Prediction Buffer (2 bit history information)

There are a number of reference RISC-V ELFs and its corresponding assembly code in the `riscv-elf/` folder.

## Documentation (In Chinese)

See the `doc/` folder.

Also, you can see corresponding blogs at ![hehao98.github.io](hehao98.github.io).



