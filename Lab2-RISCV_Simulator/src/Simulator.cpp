#include <iostream>
#include <cstdio>
#include <cstdlib>

#include <elfio/elfio.hpp>


#define MAX_MEM_SIZE 0xFFFFFFFF
#define REG_SIZE 32

//代码段在解释文件中的偏移地址
uint32_t cadr=0;
//代码段的长度
uint32_t csize=0;
//代码段在内存中的虚拟地址
uint32_t vadr=0;
//全局数据段在内存的地址
uint64_t gp=0;
//main函数在内存中地址
uint32_t madr=0;
//程序结束时的PC
uint32_t endPC=0;
//程序的入口地址
uint32_t entry=0;

uint32_t memory[MAX_MEM_SIZE] = {0};
uint64_t reg[REG_SIZE] = {0};
uint32_t PC = 0;
uint64_t inst_num = 0;
uint32_t exit_flag = 0;

void simulate();
void IF();
void ID();
void EX();
void MEM();
void WB();

int main()
{
	// Read ELF file
	ELFIO::elfio reader;
	


	//加载内存

	//设置入口地址
	//pc = entry >> 2;
	//设置全局数据段地址寄存器
	//reg[3] = gp;
	//reg[2] = MAX / 2; //栈基址 （sp寄存器）

	//simulate();

	return 0;
}

void simulate()
{
	//结束PC的设置
	int end = (int)endPC / 4 - 1;
	while (PC != end)
	{
		//运行
		IF();
		ID();
		EX();
		MEM();
		WB();

		if (exit_flag == 1)
			break;

		reg[0] = 0; //一直为零
	}
}

//取指令
void IF()
{

}

//译码
void ID()
{

}

//执行
void EX()
{

}

//访问存储器
void MEM()
{
	
}

//写回
void WB()
{
	
}