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
  enum ReplacementPolicy { LRU, FIFO };
  enum WritePolicy { WriteThrough, WriteBack };
  struct Policy {
    // In bytes, must be power of 2
    uint32_t cacheSize;
    uint32_t blockSize; 
    uint32_t lineSize;
    uint32_t associativity;
    ReplacementPolicy replacement;
    WritePolicy write;
  };

  struct Line {
    bool valid;
    bool modified;
    uint32_t size;
    std::vector<uint8_t> data;
  };

  struct Statistics {
    uint32_t l1HitCount;
    uint32_t l1MissCount;
    uint32_t l2HitCount;
    uint32_t l2MissCount;
    uint32_t l3HitCount;
    uint32_t l3MissCount;
    uint32_t totalCycles;
  };

  Cache();
  // Configure to use one level of cache
  Cache(MemoryManager *manager, Policy l1Policy);
  // Configure to use tow level of cache
  Cache(MemoryManager *manager, Policy l1Policy, Policy l2Policy);
  // Configure to use three level of cache
  Cache(MemoryManager *manager, Policy l1Policy, Policy l2Policy, Policy l3Policy);

  bool inCache(uint32_t addr);
  uint8_t getByte(uint32_t addr);
  bool setByte(uint32_t addr, uint8_t val);
private:
  MemoryManager *memory;
  bool useL2, useL3;
  Policy l1Policy, l2Policy, l3Policy;
  std::vector<std::vector<Line>> blocksL1;
  std::vector<std::vector<Line>> blocksL2;
  std::vector<std::vector<Line>> blocksL3;
};

#endif