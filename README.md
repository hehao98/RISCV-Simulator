# RISC-V Simulator

A Simple RISC-V CPU Simulator with 5 Stage Pipeline, Branch Prediction and Cache Simulation

It is a simple RISC-V Emulator suppprting user mode RV64I instruction set, from PKU Computer Architecture Labs, Spring 2019. I made my project open source in the hope that others can learn from my code about how to make a CPU Emulator and get a deeper understanding in computer architecture. As it is implemented entirely from scratch (with no code from Prof or TA), I think it's fine to make it open source.

Note that this is just a toy for learning and is NOT a robust and full solution to RISC-V CPU Emulation. Use `qemu` for that purpose instead.

## Features

1. Supporting 54 RISC-V instructions from the RV64I instruction set.
2. Branch perdiction module with a set of branch perdicton algorithms.
3. Simulation of five stage pipeline like that in the "Computer Organization and Design, Hardware/Software Interface" Book.
4. Simulation of cache and various cache eviction strategies.

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

Also, you can see the corresponding [blog](https://hehao98.github.io/posts/2019/03/riscv-simulator/).



