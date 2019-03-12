# Build, run and test the riscv simulator on a number of programs
# Assume the risc tools already installed

mkdir build

echo "Building RISC-V ELFs..."
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/arithmetic.c test/lib.c -o riscv-elf/arithmetic.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/helloworld.c test/lib.c -o riscv-elf/helloworld.riscv

echo "Automatically dumping ELFs for reference"
cd riscv-elf
~/riscv64i/bin/riscv64-unknown-elf-objdump -D arithmetic.riscv > arithmetic.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D helloworld.riscv > helloworld.s
cd ..

echo "Building the Simulator..."
cmake ..
make

echo "==========Start Exceuting the Simulator=========="
./Simulator

