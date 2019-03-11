#include <iostream>
#include <cstdio>
#include <cstdlib>

#include <elfio/elfio.hpp>

#include "Reg_def.h"

#define OP_JAL 111
#define OP_R 51

#define F3_ADD 0
#define F3_MUL 0

#define F7_MSE 1
#define F7_ADD 0

#define OP_I 19
#define F3_ADDI 0

#define OP_SW 35
#define F3_SB 0

#define OP_LW 3
#define F3_LB 0

#define OP_BEQ 99
#define F3_BEQ 0

#define OP_IW 27
#define F3_ADDIW 0

#define OP_RW 59
#define F3_ADDW 0
#define F7_ADDW 0


#define OP_SCALL 115
#define F3_SCALL 0
#define F7_SCALL 0

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
	printf("Hello World\n");

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

		//更新中间寄存器
		IF_ID = IF_ID_old;
		ID_EX = ID_EX_old;
		EX_MEM = EX_MEM_old;
		MEM_WB = MEM_WB_old;

		if (exit_flag == 1)
			break;

		reg[0] = 0; //一直为零
	}
}

//取指令
void IF()
{
	//write IF_ID_old
	IF_ID_old.inst = memory[PC];
	PC = PC + 1;
	IF_ID_old.PC = PC;
}

//译码
void ID()
{/*
	//Read IF_ID
	unsigned int inst = IF_ID.inst;
	int EXTop = 0;
	unsigned int EXTsrc = 0;

	char RegDst, ALUop, ALUSrc;
	char Branch, MemRead, MemWrite;
	char RegWrite, MemtoReg;

	rd = getbit(inst, 7, 11);
	fuc3 = getbit(inst, 0, 0);
	//....

	if (OP == OP_R)
	{
		if (fuc3 == F3_ADD && fuc7 == F7_ADD)
		{
			EXTop = 0;
			RegDst = 0;
			ALUop = 0;
			ALUSrc = 0;
			Branch = 0;
			MemRead = 0;
			MemWrite = 0;
			RegWrite = 0;
			MemtoReg = 0;
		}
		else
		{
		}
	}
	else if (OP == OP_I)
	{
		if (fuc3 == F3_ADDI)
		{
		}
		else
		{
		}
	}
	else if (OP == OP_SW)
	{
		if (fuc3 == F3_SB)
		{
		}
		else
		{
		}
	}
	else if (OP == OP_LW)
	{
		if (fuc3 == F3_LB)
		{
		}
		else
		{
		}
	}
	else if (OP == OP_BEQ)
	{
		if (fuc3 == F3_BEQ)
		{
		}
		else
		{
		}
	}
	else if (OP == OP_JAL)
	{
	}
	else
	{
	}

	//write ID_EX_old
	ID_EX_old.Rd = rd;
	//ID_EX_old.Rt = rt;
	//ID_EX_old.Imm = ext_signed(EXTsrc, EXTop);
	//...

	ID_EX_old.Ctrl_EX_ALUOp = ALUop;
	//....*/
}

//执行
void EX()
{
	//read ID_EX
	int temp_PC = ID_EX.PC;
	char RegDst = ID_EX.Ctrl_EX_RegDst;
	char ALUOp = ID_EX.Ctrl_EX_ALUOp;

	//Branch PC calulate
	//...

	//choose ALU input number
	//...

	//alu calculate
	int Zero;
	REG ALUout;
	switch (ALUOp)
	{
	default:;
	}

	//choose reg dst address
	int Reg_Dst;
	if (RegDst)
	{
	}
	else
	{
	}

	//write EX_MEM_old
	EX_MEM_old.ALU_out = ALUout;
	EX_MEM_old.PC = temp_PC;
	//.....
}

//访问存储器
void MEM()
{
	//read EX_MEM

	//complete Branch instruction PC change

	//read / write memory

	//write MEM_WB_old
}

//写回
void WB()
{
	//read MEM_WB

	//write reg
}