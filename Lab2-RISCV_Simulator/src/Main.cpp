#include <cstdarg>
#include <cstdio>
#include <cstdlib>
#include <iostream>

#include <elfio/elfio.hpp>

#include "MemoryManager.h"
#include "Debug.h"

void printElfInfo(ELFIO::elfio *reader);
void loadElfToMemory(ELFIO::elfio *reader, MemoryManager *memory);

bool verbose = 1;
MemoryManager memory;

int main()
{
    const char *elfFile = "helloworld.riscv";

    // Read ELF file
    ELFIO::elfio reader;
    if (!reader.load(elfFile))
    {
        fprintf(stderr, "Fail to load ELF file %s!\n", elfFile);
        return -1;
    }

    printElfInfo(&reader);

    loadElfToMemory(&reader, &memory);

    return 0;
}

void printElfInfo(ELFIO::elfio *reader)
{
    printf("==========ELF Information==========\n");
    if (reader->get_class() == ELFCLASS32)
    {
        printf("Type: ELF32\n");
    }
    else
    {
        printf("Type: ELF64\n");
    }
    if (reader->get_encoding() == ELFDATA2LSB)
    {
        printf("Encoding: Little Endian\n");
    }
    else
    {
        printf("Encoding: Large Endian\n");
    }
    if (reader->get_machine() == EM_RISCV)
    {
        printf("ISA: RISC-V(0x%x)\n", reader->get_machine());
    }
    else
    {
        dbgprintf("ISA: Unsupported(0x%x)\n", reader->get_machine());
        exit(-1);
    }
    ELFIO::Elf_Half sec_num = reader->sections.size();
    printf("Number of Sections: %d\n", sec_num);
    printf("ID\tName\t\tAddress\tSize\n");
    for (int i = 0; i < sec_num; ++i)
    {
        const ELFIO::section *psec = reader->sections[i];
        printf("[%d]\t%-12s\t0x%lx\t%ld\n", i, psec->get_name().c_str(),
               psec->get_address(), psec->get_size());
    }
    ELFIO::Elf_Half seg_num = reader->segments.size();
    printf("Number of Segments: %d\n", seg_num);
    printf("ID\tFlags\tAddress\tFSize\tMSize\n");
    for (int i = 0; i < seg_num; ++i)
    {
        const ELFIO::segment *pseg = reader->segments[i];
        printf("[%d]\t0x%x\t0x%lx\t0x%ld\t0x%ld\n", i, pseg->get_flags(),
               pseg->get_virtual_address(), pseg->get_file_size(),
               pseg->get_memory_size());
    }
    printf("===================================\n");
}

void loadElfToMemory(ELFIO::elfio *reader, MemoryManager *memory)
{
    ELFIO::Elf_Half seg_num = reader->segments.size();
    for (int i = 0; i < seg_num; ++i) {
        const ELFIO::segment *pseg = reader->segments[i];
        for (unsigned j = 0; j < pseg->get_file_size(); ++j) {
            uint32_t addr = pseg->get_virtual_address() + j
            //if (memory->isPageExist(pseg->get_virtual_address()))
        }
    }
}