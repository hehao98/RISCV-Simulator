/*
 * The main entry point of an cache simulator
 *
 * Created by He, Hao at 2019-04-27
 */

#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

#include "Cache.h"
#include "Debug.h"
#include "MemoryManager.h"

bool parseParameters(int argc, char **argv);
void printUsage();

const char *traceFilePath;
MemoryManager *memory = nullptr;
Cache *cache = nullptr;

int main(int argc, char **argv) {
  if (!parseParameters(argc, argv)) {
    return -1;
  }

  Cache::Policy policy;
  policy.cacheSize = 1024;
  policy.blockSize = 256;
  policy.blockNum = 4;
  policy.associativity = 1;
  policy.hitLatency = 1;

  // Initialize memory and cache
  memory = new MemoryManager();
  cache = new Cache(memory, policy);
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
    // printf("%c %x\n", type, addr);
    if (!memory->isPageExist(addr))
      memory->addPage(addr);
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
    cache->printInfo(true);
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

void printUsage() { printf("Usage: CacheSim trace-file\n"); }