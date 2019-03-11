#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstdarg>

#include <elfio/elfio.hpp>


#define MAX_MEM_SIZE 0xFFFFFFFF
#define REG_SIZE 32

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

void dbgprintf(const char *format, ...)
{
	char buf[BUFSIZ];
	va_list args;
	va_start(args, format);
	vsprintf(buf, format, args);
	fprintf(stderr, "%s", buf);
	va_end(args);
}

int main()
{
	const char *elfFile = "helloworld.riscv";
	// Read ELF file
	ELFIO::elfio reader;
	if (!reader.load(elfFile)) {
		dbgprintf("Fail to load ELF file %s!\n", elfFile);
		return -1;
	}

	//simulate();

	return 0;
}

void simulate()
{
	
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