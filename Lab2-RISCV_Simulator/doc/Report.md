# <center>计算机组织与体系结构实习Lab 2</center>

## <center>RISC-V CPU模拟器设计与实现</center>

#### <center>何昊 1600012742</center>	

### 一、实验环境

#### 1.1 实验环境的安装与配置

本次实验的环境为Ubuntu 16.04，模拟器使用的编程语言为C++ 11，构建环境为CMake，编译器为G++，编译使用的Flag为`-O2 -Wall`。

首先，必须搭建RISC-V相关的编译、运行和测试环境。简便起见，本次实验全部基于RISC-V 64I指令集，为了配置环境，执行了如下步骤。

1. 从GitHub上下载了`riscv-tools，`从中针对Linux平台配置，编译和安装了`riscv-gnu-toolchain`。
2. 为了使用官方模拟器作为参照，从GitHub上下载、编译和安装了`riscv-qemu`。

需要特别注意的是，在编译`riscv-gnu-toolchain`时，必须指定工具链和C语言标准库所使用的指令集为RV64I，否则在编译的时候编译器会使用RV64C、RV64D等扩展指令集。即使设置编译器编译时只使用`RV64I`指令集，编译器也会链接进使用扩展指令集的标准库函数。因此，为了获得只使用RV64I标准指令集的ELF程序，必须在`riscv-gnu-toolchain`中采用如下选项重新编译

```
mkdir build; cd build
../configure --with-arch=rv64i --prefix=/path/to/riscv64i
make -j$(nproc)
```

在编译时，使用`-march=rv64i`让编译器针对RV64I标准指令集生成ELF程序。

```
riscv64-unknown-elf-gcc -march=rv64i test/arithmetic.c test/lib.c -o riscv-elf/arithmetic.riscv
```

#### 1.2 使用的测试程序

为了对RISC-V模拟器进行测试，编写了如下程序（见`test/`文件夹）

```
lib.c
helloworld.c
quicksort.c
matrixmulti.c
ackermann.c
```

### 二、设计概述

### 三、具体设计和实现

#### 3.1 可执行文件的装载、初始化和存储接口



#### 3.2 指令语义的解析和控制信号的处理（如果有）

#### 3.3 系统调用和库函数接口的处理

#### 3.4 性能计数相关模块的处理

#### 3.5 调试接口和其它接口等

### 四、功能测试和性能评测

#### 4.1 运行测试程序，给出动态执行的指令数。 （共5个定点程序）

#### 4.2 运行测试程序，给出执行周期数，并计算平均CPI。 （共5个定点程序）

#### 4.3 请你模拟的流水线处理器中因不同类型的冒险而发生的停顿进行统计，并打印数据和分析。 （共5个测试程序）

### 五、其它需要说明的内容

#### 5.1 额外的功能或性能特性，更优化的设计等

#### 5.2 意见和建议

1. RISC-V工具链文档缺失
2. 计算机体系结构正课教的是MIPS，不知道为什么Lab却要做RISC-V，增加了学习成本和完成Lab的时间