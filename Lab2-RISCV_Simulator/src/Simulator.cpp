#include <string>

#include "Debug.h"
#include "Simulator.h"

namespace RISCV {
const char *REGNAME[32] = {
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
}

using namespace RISCV;

Simulator::Simulator(MemoryManager *memory) {
  this->memory = memory;
  this->pc = 0;
  for (int i = 0; i < REGNUM; ++i) {
    this->reg[i] = 0;
  }
}

Simulator::~Simulator() {}

void Simulator::simulate() {
  while (true) {
    this->fetch();
    this->decode();
    this->excecute();
    this->memoryAccess();
    this->writeBack();

    if (this->isSingleStep) {
      char cmd;
      printf("Press ENTER to continue: ");
      getchar();
    }
  }
}

void Simulator::fetch() {
  if (this->pc % 2 != 0) {
    dbgprintf("Illegal PC at 0x%x!\n", this->pc);
    exit(0);
  }

  uint32_t inst = this->memory->getInt(this->pc);
  uint32_t len = 0;

  // Determine instrucion length
  if ((inst & 0x3) == 0x3) { // Normal 32 bit instructions
    len = 4;
  } else { // Compressed 16 bit instructions
    len = 2;
    inst = inst & 0xFFFF;
  }

  if (this->verbose) {
    if (len == 2) {
      printf("Fetched instruction 0x%.4x at address 0x%x\n", inst, this->pc);
    } else {
      printf("Fetched instruction 0x%.8x at address 0x%x\n", inst, this->pc);
    }
  }

  this->fReg.inst = inst;
  this->fReg.len = len;
  this->pc = this->pc + len;
}

void Simulator::decode() {
  std::string instname = "";
  std::string inststr = "";
  std::string deststr, op1str, op2str, offsetstr;
  uint32_t inst = this->fReg.inst;
  int32_t op1, op2, offset; // op1, op2 and offset are values
  int32_t dest;             // dest is reg id

  // Reg for 32bit instructions
  if (this->fReg.len == 4) // 32 bit instruction
  {
    uint32_t opcode = inst & 0x7F;
    uint32_t funct3 = (inst >> 12) & 0x7;
    uint32_t funct7 = (inst >> 25) & 0x7F;
    uint32_t rd = (inst >> 7) & 0x1F;
    uint32_t rs1 = (inst >> 15) & 0x1F;
    uint32_t rs2 = (inst >> 20) & 0x1F;
    int32_t imm_i = int32_t(inst) >> 20;
    int32_t imm_s =
        int32_t(((inst >> 7) & 0x1F) | ((inst >> 20) & 0xFE0)) << 20 >> 20;
    int32_t imm_sb = int32_t(((inst >> 7) & 0x1E) | ((inst >> 20) & 0x7E0) |
                             ((inst << 7) & 0x800) | ((inst >> 19) & 0x1000))
                         << 19 >>
                     19;
    int32_t imm_u = int32_t(inst) >> 12;
    int32_t imm_uj = int32_t(((inst >> 21) & 0x3FF) | ((inst >> 10) & 0x400) |
                             (inst & 0xFF000) | ((inst >> 12) & 0x80000))
                         << 12 >>
                     11;

    switch (opcode) {
    case OP_REG:
      op1 = this->reg[rs1];
      op2 = this->reg[rs2];
      dest = rd;
      switch (funct3) {
      case 0x0: // add, mul, sub
        if (funct7 == 0x00) {
          instname = "add";
        } else if (funct7 == 0x01) {
          instname = "mul";
        } else if (funct7 == 0x20) {
          instname = "sub";
        } else {
          dbgprintf("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
          exit(-1);
        }
        break;
      case 0x1: // sll, mulh
        if (funct7 == 0x00) {
          instname = "sll";
        } else if (funct7 == 0x01) {
          instname = "mulh";
        } else {
          dbgprintf("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
          exit(-1);
        }
        break;
      case 0x2: // slt
        if (funct7 == 0x00) {
          instname = "slt";
        } else {
          dbgprintf("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
          exit(-1);
        }
        break;
      case 0x4: // xor div
        if (funct7 == 0x00) {
          instname = "xor";
        } else if (funct7 == 0x01) {
          instname = "div";
        } else {
          dbgprintf("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
          exit(-1);
        }
        break;
      case 0x5: // srl, sra
        if (funct7 == 0x00) {
          instname = "srl";
        } else if (funct7 == 0x20) {
          instname = "sra";
        } else {
          dbgprintf("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
          exit(-1);
        }
        break;
      case 0x6: // or, rem
        if (funct7 == 0x00) {
          instname = "or";
        } else if (funct7 == 0x01) {
          instname = "rem";
        } else {
          dbgprintf("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
          exit(-1);
        }
        break;
      case 0x7: // and
        if (funct7 == 0x00) {
          instname = "and";
        } else {
          dbgprintf("Unknown funct7 0x%x for funct3 0x%x\n", funct7, funct3);
          exit(-1);
        }
        break;
      default:
        dbgprintf("Unknown Funct3 field %x\n", funct3);
        exit(-1);
      }
      op1str = REGNAME[rs1];
      op2str = REGNAME[rs2];
      deststr = REGNAME[rd];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
      break;
    case OP_IMM:
      op1 = this->reg[rs1];
      op2 = imm_i;
      dest = rd;
      switch (funct3) {
      case FUNCT3_ADDI:
        instname = "addi";
        break;
      case FUNCT3_SLTI:
        instname = "slti";
        break;
      case FUNCT3_SLTIU:
        instname = "sltiu";
        break;
      case FUNCT3_XORI:
        instname = "xori";
        break;
      case FUNCT3_ORI:
        instname = "ori";
        break;
      case FUNCT3_ANDI:
        instname = "andi";
        break;
      case FUNCT3_SLLI:
        instname = "slli";
        op2 = op2 & 0x3F;
        break;
      case FUNCT3_SRLI_SRAI:
        if (((inst >> 26) & 0x3F) == 0) {
          instname = "srli";
          op2 = op2 & 0x3F;
        } else {
          instname = "srai";
          op2 = op2 & 0x3F;
        }
        break;
      default:
        dbgprintf("Unknown Funct3 field %x\n", funct3);
        exit(-1);
      }
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
      break;
    case OP_LUI:
      op1 = imm_u;
      op2 = 0;
      dest = rd;
      instname = "lui";
      op1str = std::to_string(imm_u);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str;
      break;
    case OP_AUIPC:
      op1 = imm_u;
      op2 = 0;
      dest = rd;
      instname = "auipc";
      op1str = std::to_string(imm_u);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str;
      break;
    case OP_JAL:
      op1 = imm_uj;
      op2 = 0;
      dest = rd;
      instname = "jal";
      op1str = std::to_string(imm_uj);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str;
      break;
    case OP_JALR:
      op1 = this->reg[rs1];
      op2 = imm_i;
      dest = rd;
      instname = "jalr";
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[dest];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
      break;
    case OP_BRANCH:
      op1 = this->reg[rs1];
      op2 = this->reg[rs2];
      offset = imm_sb;
      switch (funct3) {
      case 0x0:
        instname = "beq";
        break;
      case 0x1:
        instname = "bne";
        break;
      case 0x4:
        instname = "blt";
        break;
      case 0x5:
        instname = "bge";
        break;
      case 0x6:
        instname = "bltu";
        break;
      case 0x7:
        instname = "bgtu";
        break;
      default:
        dbgprintf("Unknown funct3 0x%x at OP_BRANCH\n", funct3);
        exit(-1);
      }
      op1str = REGNAME[rs1];
      op2str = REGNAME[rs2];
      offsetstr = std::to_string(offset);
      inststr = instname + " " + op1str + "," + op2str + "," + offsetstr;
      break;
    case OP_STORE:
      op1 = this->reg[rs1];
      op2 = this->reg[rs2];
      offset = imm_s;
      switch (funct3) {
      case 0x0:
        instname = "sb";
        break;
      case 0x1:
        instname = "sh";
        break;
      case 0x2:
        instname = "sw";
        break;
      case 0x3:
        instname = "sd";
        break;
      default:
        dbgprintf("Unknown funct3 0x%x for OP_STORE\n", funct3);
        exit(-1);
      }
      op1str = REGNAME[rs1];
      op2str = REGNAME[rs2];
      offsetstr = std::to_string(offset);
      inststr = instname + " " + op2str + "," + offsetstr + "(" + op1str + ")";
      break;
    case OP_LOAD:
      op1 = this->reg[rs1];
      op2 = imm_i;
      dest = rd;
      switch (funct3) {
      case 0x0:
        instname = "lb";
        break;
      case 0x1:
        instname = "lh";
        break;
      case 0x2:
        instname = "lw";
        break;
      case 0x3:
        instname = "ld";
        break;
      case 0x4:
        instname = "lbu";
        break;
      case 0x5:
        instname = "lhu";
        break;
      default:
        dbgprintf("Unknown funct3 0x%x for OP_LOAD\n", funct3);
        exit(-1);
      }
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[rd];
      inststr = instname + " " + deststr + "," + op2str + "(" + op1str + ")";
      break;
    case OP_SYSTEM:
      op1 = this->reg[10];
      if (funct3 == 0x0 && funct7 == 0x000) {
        instname = "ecall";
      } else {
        dbgprintf("Unknown OP_SYSTEM inst with funct3 0x%x and funct7 0x%x\n",
                  funct3, funct7);
      }
      inststr = instname;
      break;
    case OP_ADDIW:
      op1 = this->reg[rs1];
      op2 = imm_i;
      dest = rd;
      switch(funct3) {
        case 0x0:
          instname = "addiw";
          break;
        default:
          dbgprintf("Unknown funct3 0x%x for OP_ADDIW\n", funct3);
          exit(-1);
      }
      op1str = REGNAME[rs1];
      op2str = std::to_string(op2);
      deststr = REGNAME[rd];
      inststr = instname + " " + deststr + "," + op1str + "," + op2str;
    default:
      dbgprintf("Unsupported opcode 0x%x!\n", opcode);
      exit(-1);
    }

    if (verbose) {
      printf("Decoded instruction 0x%.8x as %s\n", inst, inststr.c_str());
    }
  } else { // 16 bit instruction
    dbgprintf(
        "Current implementation does not support 16bit RV64C instructions!\n");
    exit(-1);
  }

  this->dReg.dest = dest;
  this->dReg.op1 = op1;
  this->dReg.op2 = op2;
  this->dReg.offset = offset;
}

void Simulator::excecute() {}

void Simulator::memoryAccess() {}

void Simulator::writeBack() {}