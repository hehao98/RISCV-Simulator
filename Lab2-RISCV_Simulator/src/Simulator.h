#ifndef SIMULATOR_H
#define SIMULATOR_H

#include <cstdint>
#include <string>

#include "MemoryManager.h"

namespace RISCV {
const int REGNUM = 32;
const char *REGNAME[32]{
    "zero", // x0
    "ra",   // x1
    "sp",   // x2
    "gp",   // x3
    "tp",   // x4
    "t0",   // x5
    "t1",   // x6
    "t2",   // x7
    "s0",   // x8
    "s1",   // x9
    "a0",   // x10
    "a1",   // x11
    "a2",   // x12
    "a3",   // x13
    "a4",   // x14
    "a5",   // x15
    "a6",   // x16
    "a7",   // x17
    "s2",   // x18
    "s3",   // x19
    "s4",   // x20
    "s5",   // x21
    "s6",   // x22
    "s7",   // x23
    "s8",   // x24
    "s9",   // x25
    "s10",  // x26
    "s11",  // x27
    "t3",   // x28
    "t4",   // x29
    "t5",   // x30
    "t6",   // x31
};

enum InstType {
  R_TYPE,
  I_TYPE,
  S_TYPE,
  SB_TYPE,
  U_TYPE,
  UJ_TYPE,
};

// Opcode field
const int OP_REG = 0x33;
const int OP_IMM = 0x13;
const int OP_LUI = 0x37;
const int OP_BRANCH = 0x63;
const int OP_STORE = 0x23;
const int OP_LOAD = 0x03;
const int OP_SYSTEM = 0x73;
const int OP_AUIPC = 0x17;
const int OP_JAL = 0x6F;
const int OP_JALR = 0x67;
const int OP_ADDIW = 0x1B;

// Funct3 field for OP_IMM instructions
const int FUNCT3_ADDI = 0b000;
const int FUNCT3_SLTI = 0b010;
const int FUNCT3_SLTIU = 0b011;
const int FUNCT3_XORI = 0b100;
const int FUNCT3_ORI = 0b110;
const int FUNCT3_ANDI = 0b111;
const int FUNCT3_SLLI = 0b001;
const int FUNCT3_SRLI_SRAI = 0b101;

} // namespace RISCV

class Simulator {
public:
  bool isSingleStep;
  bool verbose;
  uint64_t pc;
  uint64_t reg[RISCV::REGNUM];
  MemoryManager *memory;

  Simulator(MemoryManager *memory);
  ~Simulator();

  void simulate();

private:
  struct FReg {
    uint32_t inst;
    uint32_t len;
  } fReg;
  struct DReg {
    std::string inst;
    int64_t op1;
    int64_t op2;
    int64_t dest;
    int64_t offset;
  } dReg;
  struct EReg {
    
  } eReg;
  struct MReg {

  } mReg;

  void fetch();
  void decode();
  void excecute();
  void memoryAccess();
  void writeBack();
};

#endif
