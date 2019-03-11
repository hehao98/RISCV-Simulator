#ifndef MEMORY_MANAGER_H
#define MEMORY_MANAGER_H

#include <cstdio>
#include <cstdint>

#include <elfio/elfio.hpp>


class MemoryManager 
{
public:
    MemoryManager();
    ~MemoryManager();

    bool addPage(uint32_t addr);
    bool isPageExist(uint32_t addr);

    bool copyFrom(void *src, uint32_t dest, uint32_t len);

    bool setByte(uint32_t addr, uint8_t val);
    uint8_t getByte(uint32_t addr);

    bool setShort(uint32_t addr, uint16_t val);
    uint16_t getShort(uint32_t addr);

    bool setInt(uint32_t addr, uint32_t val);
    uint32_t getInt(uint32_t addr);

    bool setLong(uint32_t addr, uint64_t val);
    uint64_t getLong(uint32_t addr);

    void printInfo();
private:
    uint32_t getFirstEntryId(uint32_t addr);
    uint32_t getSecondEntryId(uint32_t addr);
    uint32_t getPageOffset(uint32_t addr);
    bool isAddrExist(uint32_t addr);
    uint8_t **memory[1024];
};

#endif