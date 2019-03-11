# Build, run and test the riscv simulator on a number of programs
# Assume the risc tools already installed

mkdir build

echo "Building RISC-V ELFs..."
riscv64-unknown-elf-gcc -Dmarch=rv64i test/arithmetic.c test/lib.c -o build/arithmetic.riscv
riscv64-unknown-elf-gcc -Dmarch=rv64i test/helloworld.c test/lib.c -o build/helloworld.riscv

echo "Automatically dumping ELFs for reference"
cd build
riscv64-unknown-elf-objdump -D arithmetic.riscv > arithmetic.s
riscv64-unknown-elf-objdump -D helloworld.riscv > helloworld.s

echo "Building the Simulator..."
cmake ..
make

echo "==========Start Exceuting the Simulator=========="
./Simulator

