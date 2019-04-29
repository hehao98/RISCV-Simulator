/*
 * Basic cache simulator
 *
 * Created by He, Hao on 2019-4-27
 */

#ifndef CACHE_H
#define CACHE_H

#include <cstdint>
#include <vector>

#include "MemoryManager.h"

class MemoryManager;

class Cache {
public:
  enum ReplacementPolicy { LRU = 0, FIFO = 1 };

  struct Policy {
    // In bytes, must be power of 2
    uint32_t cacheSize;
    uint32_t blockSize;
    uint32_t blockNum;
    uint32_t associativity;
    ReplacementPolicy replacement;
    bool writeThrough;  // false for write back
    bool writeAllocate; // false for non write allocate
  };

  struct Block {
    bool valid;
    bool modified;
    uint32_t size;
    std::vector<uint8_t> data;
  };

  typedef std::vector<Block> Level;

  struct Statistics {
    std::vector<uint32_t> hitCounts;
    std::vector<uint32_t> missCounts;
    uint32_t totalCycles;
  };

  Cache();
  Cache(MemoryManager *manager, std::vector<Policy> policies);

  bool inCache(uint32_t addr);
  uint8_t getByte(uint32_t addr);
  bool setByte(uint32_t addr, uint8_t val);

  void printInfo(bool verbose);
  void printStatistics();
private:
  MemoryManager *memory;
  std::vector<Policy> policies;
  std::vector<Level> levels;

  bool isPolicyValid(const Policy &policy);
  Level initCacheLevel(const Policy &policy);
  bool isPowerOfTwo(uint32_t n);
};

#endif