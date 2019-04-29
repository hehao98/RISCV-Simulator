/*
 * Implementation of a simple cache simulator
 *
 * Created By He, Hao in 2019-04-27
 */

#include <cstdio>
#include <cstdlib>

#include "Cache.h"

Cache::Cache() { this->memory = nullptr; }

Cache::Cache(MemoryManager *manager, std::vector<Policy> policies) {
  this->memory = manager;
  this->policies = policies;

  for (int i = 0; i < this->policies.size(); ++i) {
    if (!this->isPolicyValid(this->policies[i])) {
      fprintf(stderr, "Policy in cache level %d invalid!\n", i);
      exit(-1);
    }
    Level level = this->initCacheLevel(this->policies[i]);
    this->levels.push_back(level);
  }
}

bool Cache::inCache(uint32_t addr) {}

uint8_t Cache::getByte(uint32_t addr) {}

bool Cache::setByte(uint32_t addr, uint8_t val) {}

void Cache::printInfo(bool verbose) {
  const char *policyStrings[] = {"LRU", "FIFO"};

  printf("%lu Level Cache\n", this->levels.size());
  for (int i = 0; i < this->levels.size(); ++i) {
    printf("---------- Level %d ----------\n", i);
    printf("Cache Size: %d bytes\n", this->policies[i].cacheSize);
    printf("Block Size: %d bytes\n", this->policies[i].blockSize);
    printf("Block Num: %d\n", this->policies[i].blockNum);
    printf("Associativiy: %d\n", this->policies[i].associativity);
    printf("Replacement Policy: %s\n",
           policyStrings[this->policies[i].replacement]);
    printf("Write Policy: %s\n",
           this->policies[i].writeThrough ? "Write Through" : "Write Back");
    printf("Write Allocate: %s\n",
           this->policies[i].writeAllocate ? "true" : "false");

    if (verbose) {
      for (int j = 0; j < this->levels[i].size(); ++j) {
        Block &b = this->levels[i][j];
        printf("Block %d: %s %s\n", j, b.valid ? "valid" : "invalid",
               b.modified ? "modified" : "unmodified");
        printf("Data: ");
        for (uint8_t d : b.data)
          printf("%d ", d);
        printf("\n");
      }
    }
  }
}

void Cache::printStatistics() {}

bool Cache::isPolicyValid(const Policy &policy) {
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

Cache::Level Cache::initCacheLevel(const Policy &policy) {
  Level level = std::vector<Block>(policy.blockNum);
  for (Block &b : level) {
    b.valid = false;
    b.modified = false;
    b.size = policy.blockSize;
    b.data = std::vector<uint8_t>(b.size);
  }
  return level;
}

bool Cache::isPowerOfTwo(uint32_t n) { return n > 0 && (n & (n - 1)) == 0; }