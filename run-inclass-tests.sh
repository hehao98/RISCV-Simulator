mkdir build
cd build
cmake ..
make
./Simulator ../test-inclass/add.riscv
./Simulator ../test-inclass/mul-div.riscv
./Simulator ../test-inclass/n!.riscv
./Simulator ../test-inclass/qsort.riscv
./Simulator ../test-inclass/simple-function.riscv