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
