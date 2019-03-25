# Build 6 risc-v programs for running in class tests

echo "Building RISC-V ELFs..."
cd test-inclass
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i add.c -o add.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i double-float.c -o double-float.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i mul-div.c -o mul-div.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i n!.c -o n!.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i qsort.c -o qsort.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i simple-function.c -o simple-function.riscv
echo "Automatically dumping ELFs for reference"
~/riscv64i/bin/riscv64-unknown-elf-objdump -D add.riscv > add.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D double-float.riscv > double-float.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D mul-div.riscv > mul-div.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D n!.riscv > n!.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D qsort.riscv > qsort.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D simple-function.riscv > simple-function.s
cd ..

