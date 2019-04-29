/*
 * Implementation of a simple cache simulator
 *
 * Created By He, Hao in 2019-04-27
 */

#include <cstdio>
#include <cstdlib>

#include "Cache.h"

Cache::Cache() { this->memory = nullptr; }

Cache::Cache(MemoryManager *manager, Policy policy) {
  this->referenceCounter = 0;
  this->memory = manager;
  this->policy = policy;
  this->lowerCache = nullptr;
  if (!this->isPolicyValid()) {
    fprintf(stderr, "Policy invalid!\n");
    exit(-1);
  }
  this->initCache();
}

bool Cache::inCache(uint32_t addr) {
  if (getBlockId(addr) != -1)
    return true;
  return false;
}

uint32_t Cache::getBlockId(uint32_t addr) {
  uint32_t tag = this->getTag(addr);
  uint32_t id = this->getId(addr);
  // iterate over the given set
  for (uint32_t i = id * policy.associativity;
       i < (id + 1) * policy.associativity; ++i) {
    if (this->blocks[i].valid && this->blocks[i].tag == tag) {
      return i;
    }
  }
  return -1;
}

uint8_t Cache::getByte(uint32_t addr) {
  this->referenceCounter++;

  // If in cache, return directly
  int blockId = -1;
  if ((blockId = this->getBlockId(addr)) != -1) {
    uint32_t offset = this->getOffset(addr);
    this->blocks[blockId].lastReference = this->referenceCounter;
    return this->blocks[blockId].data[offset];
  }

  // Else, find the data in memory or other level of cache
  if (this->lowerCache == nullptr) {
    // TODO
  } else {
    // Not in cache, load from memory
    this->loadBlockFromMemory(addr);
  }

  // The block is in top level cache now, return directly
  blockId = -1;
  if ((blockId = this->getBlockId(addr)) != -1) {
    uint32_t offset = this->getOffset(addr);
    this->blocks[blockId].lastReference = this->referenceCounter;
    return this->blocks[blockId].data[offset];
  } else {
    fprintf(stderr, "Error: data not in top level cache!\n");
    exit(-1);
  }
  return 0; // Control should not reach here
}

void Cache::setByte(uint32_t addr, uint8_t val) { this->referenceCounter++; }

void Cache::printInfo(bool verbose) {
  printf("Cache Size: %d bytes\n", this->policy.cacheSize);
  printf("Block Size: %d bytes\n", this->policy.blockSize);
  printf("Block Num: %d\n", this->policy.blockNum);
  printf("Associativiy: %d\n", this->policy.associativity);

  if (verbose) {
    for (int j = 0; j < this->blocks.size(); ++j) {
      const Block &b = this->blocks[j];
      printf("Block %d: tag 0x%x %s %s (last ref %d)\n", b.id, b.tag,
             b.valid ? "valid" : "invalid",
             b.modified ? "modified" : "unmodified", b.lastReference);
      //printf("Data: ");
      //for (uint8_t d : b.data)
        //printf("%d ", d);
      //printf("\n");
    }
  }
}

void Cache::printStatistics() {}

bool Cache::isPolicyValid() {
  if (!this->isPowerOfTwo(policy.cacheSize)) {
    fprintf(stderr, "Invalid Cache Size %d\n", policy.cacheSize);
    return false;
  }
  if (!this->isPowerOfTwo(policy.blockSize)) {
    fprintf(stderr, "Invalid Block Size %d\n", policy.blockSize);
    return false;
  }
  if (policy.cacheSize % policy.blockSize != 0) {
    fprintf(stderr, "cacheSize %% blockSize != 0\n");
    return false;
  }
  if (policy.blockNum * policy.blockSize != policy.cacheSize) {
    fprintf(stderr, "blockNum * blockSize != cacheSize\n");
    return false;
  }
  if (policy.blockNum % policy.associativity != 0) {
    fprintf(stderr, "blockNum %% associativity != 0\n");
    return false;
  }
  return true;
}

void Cache::initCache() {
  this->blocks = std::vector<Block>(policy.blockNum);
  for (uint32_t i = 0; i < this->blocks.size(); ++i) {
    Block &b = this->blocks[i];
    b.valid = false;
    b.modified = false;
    b.size = policy.blockSize;
    b.tag = 0;
    b.id = i;
    b.lastReference = 0;
    b.data = std::vector<uint8_t>(b.size);
  }
}

void Cache::loadBlockFromMemory(uint32_t addr) {
  uint32_t blockSize = this->policy.blockSize;

  // Initialize new block from memory
  Block b;
  b.valid = true;
  b.modified = false;
  b.tag = this->getTag(addr);
  b.id = this->getId(addr);
  b.size = blockSize;
  b.data = std::vector<uint8_t>(b.size);
  uint32_t bits = this->log2i(blockSize);
  uint32_t mask = ~((1 << bits) - 1);
  uint32_t blockAddrBegin = addr & mask;
  for (uint32_t i = blockAddrBegin; i < blockAddrBegin + blockSize; ++i) {
    b.data[i] = this->memory->getByte(i);
  }

  // Find replace block
  uint32_t id = this->getId(addr);
  uint32_t blockIdBegin = id * this->policy.associativity;
  uint32_t blockIdEnd = (id + 1) * this->policy.associativity;
  uint32_t replaceId = this->getReplacementBlockId(blockIdBegin, blockIdEnd);
  Block replaceBlock = this->blocks[replaceId];
  if (replaceBlock.valid && replaceBlock.modified) { // write back to memory
    this->writeBlockToMemory(replaceBlock);
  }

  b.id = replaceId;
  this->blocks[replaceId] = b;
  this->printInfo(true); 
}

uint32_t Cache::getReplacementBlockId(uint32_t begin, uint32_t end) {
  // Find invalid block first
  for (uint32_t i = begin; i < end; ++i) {
    if (!this->blocks[i].valid)
      return i;
  }
  
  // Otherwise use LRU 
  uint32_t resultId = begin;
  uint32_t min = this->blocks[begin].lastReference;
  for (uint32_t i = begin; i < end; ++i) {
    if (this->blocks[i].lastReference < min) {
      resultId = i;
      min = this->blocks[i].lastReference;
    }
  }
  return resultId;
}

void Cache::writeBlockToMemory(Cache::Block &b) {
  uint32_t addrBegin = this->getAddr(b);
  for (uint32_t i = 0; i < b.size; ++i) {
    this->memory->setByte(addrBegin + i, b.data[i]);
  }
}

bool Cache::isPowerOfTwo(uint32_t n) { return n > 0 && (n & (n - 1)) == 0; }

uint32_t Cache::log2i(uint32_t val) {
  if (val == 0)
    return UINT_MAX;
  if (val == 1)
    return 0;
  uint32_t ret = 0;
  while (val > 1) {
    val >>= 1;
    ret++;
  }
  return ret;
}

uint32_t Cache::getTag(uint32_t addr) {
  uint32_t offsetBits = log2i(policy.blockSize);
  uint32_t idBits = log2i(policy.blockNum / policy.associativity);
  uint32_t mask = (1 << (32 - offsetBits - idBits)) - 1;
  return (addr >> (offsetBits + idBits)) & mask;
}

uint32_t Cache::getId(uint32_t addr) {
  uint32_t offsetBits = log2i(policy.blockSize);
  uint32_t idBits = log2i(policy.blockNum / policy.associativity);
  uint32_t mask = (1 << idBits) - 1;
  return (addr >> offsetBits) & mask;
}

uint32_t Cache::getOffset(uint32_t addr) {
  uint32_t bits = log2i(policy.blockSize);
  uint32_t mask = (1 << bits) - 1;
  return addr & mask;
}

uint32_t Cache::getAddr(Cache::Block &b) {
  uint32_t offsetBits = log2i(policy.blockSize);
  uint32_t idBits = log2i(policy.blockNum / policy.associativity);
  return (b.tag << (offsetBits + idBits)) | (b.id << offsetBits);
}