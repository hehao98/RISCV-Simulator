# RISCV Emulator

A Simple RISC-V CPU Emulator, for Computer Architecture Labs at Peking University

This repository contains my solution to Computer Architecture Lab 2-4 at Peking University, Spring 2019. It is a simple RISC-V Emulator suppprting user mode RV64I instruction set. I made my project open source in the hope that others can learn from my code about how to make a CPU Emulator and get a deeper understanding in computer architecture.

Note that this is just a toy for learning and is NOT a robust and full solution to RISC-V CPU Emulation. Use `qemu` for that purpose instead.

## Features

1. Supporting 54 RISC-V instructions from the RV64I instruction set.
2. Simulation of five stage pipeline like that in the "Computer Organization and Design, Hardware/Software Interface" Book(to be done).
3. Simulation of cache and various cache eviction strategies(to be done).
4. A custom SIMD extension and its evaluation(to be done).

## Compile
```
mkdir build
cd build
cmake ..
make
```

## Usage

```
./Simulator riscv-elf-file-name [-v] [-s] [-d]
```
`-v` for verbose output, `-s` for single step execution, `-d` for dumping execution history to `dump.txt`.

There are a number of reference RISC-V ELFs and its corresponding assembly code in the `riscv-elfs` folder.

## Documentation (In Chinese)

See the `doc/` folder.



