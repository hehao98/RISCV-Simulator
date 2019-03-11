#include<iostream>
#include<stdio.h>
#include<math.h>
#include <io.h>
#include <process.h>
#include<time.h>
#include<stdlib.h>
#include"Reg_def.h"

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

#define MAX 100000000

//主存
unsigned int memory[MAX]={0};
//寄存器堆
REG reg[32]={0};
//PC
int PC=0;


//各个指令解析段
unsigned int OP=0;
unsigned int fuc3=0,fuc7=0;
int shamt=0;
int rs=0,rt=0,rd=0;
unsigned int imm12=0;
unsigned int imm20=0;
unsigned int imm7=0;
unsigned int imm5=0;



//加载内存
void load_memory();

void simulate();

void IF();

void ID();

void EX();

void MEM();

void WB();


//符号扩展
int ext_signed(unsigned int src,int bit);

//获取指定位
unsigned int getbit(int s,int e);

unsigned int getbit(unsigned inst,int s,int e)
{
	return 0;
}

int ext_signed(unsigned int src,int bit)
{
    return 0;
}

