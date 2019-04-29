/*
 * The main entry point of an cache simulator
 * 
 * Created by He, Hao at 2019-04-27
 */

#include <iostream>
#include <fstream>
#include <string>
#include <cstdint>
#include <vector>
#include <cstdlib>

#include "MemoryManager.h"
#include "Cache.h"
#include "Debug.h"

bool parseParameters(int argc, char **argv);
void printUsage();

const char *traceFilePath;
MemoryManager *memory = nullptr;
Cache *cache = nullptr;

int main(int argc, char **argv) {
  if (!parseParameters(argc, argv)) {
    return -1;
  }
 
  std::vector<Cache::Policy> policies;
  Cache::Policy policy;
  policy.cacheSize = 1024;
  policy.blockSize = 256;
  policy.blockNum = 4;
  policy.associativity = 1;
  policy.replacement = Cache::LRU;
  policy.writeThrough = true;
  policy.writeAllocate = true;
  policies.push_back(policy);
  
  // Initialize memory and cache
  memory = new MemoryManager();
  cache = new Cache(memory, policies);
  memory->setCache(cache);

  cache->printInfo(true);

  // Read and execute trace in cache-trace/ folder
  std::ifstream trace(traceFilePath);
  if (!trace.is_open()) {
    printf("Unable to open file %s\n", traceFilePath);
    return -1;
  }

  char type; //'r' for read, 'w' for write
  uint32_t addr;
  while (trace >> type >> std::hex >> addr) {
    //printf("%c %x\n", type, addr);
    switch (type) {
      case 'r':
       cache->getByte(addr);
      break;
      case 'w':
       cache->setByte(addr, 0);
      break;
      default:
      dbgprintf("Illegal type %c\n", type);
      exit(-1);
    }
  }

  cache->printStatistics();

  delete memory;
  delete cache;
  return 0;
}

bool parseParameters(int argc, char **argv) {
  if (argc <= 1) {
    printUsage();
    return false;
  }
  traceFilePath = argv[1];
  return true;
}

void printUsage() {
  printf("Usage: CacheSim trace-file\n");
}