# Build a number of risc-v programs for running tests
# Assume the risc tools already installed at ~/riscv64i/bin/
# You may need to change them to your installed directory before running this

echo "Building RISC-V ELFs..."
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/helloworld.c test/lib.c -o riscv-elf/helloworld.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/test_arithmetic.c test/lib.c -o riscv-elf/test_arithmetic.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/test_syscall.c test/lib.c -o riscv-elf/test_syscall.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/test_branch.c test/lib.c -o riscv-elf/test_branch.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/quicksort.c test/lib.c -o riscv-elf/quicksort.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/matrixmulti.c test/lib.c -o riscv-elf/matrixmulti.riscv
~/riscv64i/bin/riscv64-unknown-elf-gcc -march=rv64i test/ackermann.c test/lib.c -o riscv-elf/ackermann.riscv

echo "Automatically dumping ELFs for reference"
cd riscv-elf
~/riscv64i/bin/riscv64-unknown-elf-objdump -D helloworld.riscv > helloworld.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D test_arithmetic.riscv > test_arithmetic.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D test_syscall.riscv > test_syscall.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D test_branch.riscv > test_branch.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D quicksort.riscv > quicksort.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D matrixmulti.riscv > matrixmulti.s
~/riscv64i/bin/riscv64-unknown-elf-objdump -D ackermann.riscv > ackermann.s
cd ..

