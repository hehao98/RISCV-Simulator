#ifndef CACHE_H
#define CACHE_H

#include <cstdint>

class Cache {
  public:
  enum ReplacementPolicy {
      policy
  };
  struct Policy {
      uint32_t cacheSize; // In bytes
      uint32_t blockSize; // In bytes
      uint32_t lineSize;  // In bytes
      uint32_t associativity;
      ReplacementPolicy replacement;
  };
  private:
};

#endif