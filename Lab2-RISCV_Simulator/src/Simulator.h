#ifndef SIMULATOR_H
#define SIMULATOR_H

#include <cstdint>
#include <string>

#include "MemoryManager.h"

namespace RISCV {

const int REGNUM = 32;
extern const char *REGNAME[32];

enum InstType {
  R_TYPE,
  I_TYPE,
  S_TYPE,
  SB_TYPE,
  U_TYPE,
  UJ_TYPE,
};

enum Inst {
    LUI = 0,
    AUIPC = 1,
    JAL = 2,
    JALR = 3,
    BEQ = 4,
    BNE = 5,
    BLT = 6,
    BGE = 7,
    BLTU = 8,
    BGEU = 9,
    LB = 10,
    LH = 11,
    LW = 12,
    LD = 13,
    LBU = 14,
    LHU = 15,
    SB = 16,
    SH = 17,
    SW = 18,
    SD = 19,
    ADDI = 20,
    SLTI = 21,
    SLTIU = 22,
    XORI = 23,
    ORI = 24,
    ANDI = 25,
    SLLI = 26,
    SRLI = 27,
    SRAI = 28,
    ADD = 29,
    SUB = 30,
    SLL = 31,
    SLT = 32,
    SLTU = 33,
    XOR = 34,
    SRL = 35,
    SRA = 36,
    OR = 37,
    AND = 38,
    ECALL = 39,
    ADDIW = 40,
    MUL = 41,
    MULH = 42,
    DIV = 43,
    REM = 44,
    UNKNOWN = -1,
};

extern const char *INSTNAME[];

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
    RISCV::Inst inst;
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
