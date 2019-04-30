/*
 * The main entry point of an cache simulator
 * It takes a memory trace as input, and output CSV file containing miss rate
 * under various cache configurations
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

bool verbose = false;
bool isSingleStep = false;
bool dumpHistory = false;
const char *traceFilePath;
MemoryManager *memory = nullptr;
Cache *cache = nullptr;

int main(int argc, char **argv) {
  if (!parseParameters(argc, argv)) {
    return -1;
  }

  // Cache Size: 32 Kb to 32 Mb
  for (uint32_t cacheSize = 32 * 1024; cacheSize <= 32 * 1024 * 1024;
       cacheSize *= 2) {
    for (uint32_t blockSize = 1; blockSize <= cacheSize; blockSize *= 2) {
      //uint32_t blockNum = 
    }
  }

  Cache::Policy policy;
  policy.cacheSize = 2048;
  policy.blockSize = 64;
  policy.blockNum = 32;
  policy.associativity = 8;
  policy.hitLatency = 1;
  policy.missLatency = 8;

  // Initialize memory and cache
  memory = new MemoryManager();
  cache = new Cache(memory, policy);
  memory->setCache(cache);

  cache->printInfo(false);

  // Read and execute trace in cache-trace/ folder
  std::ifstream trace(traceFilePath);
  if (!trace.is_open()) {
    printf("Unable to open file %s\n", traceFilePath);
    return -1;
  }

  char type; //'r' for read, 'w' for write
  uint32_t addr;
  while (trace >> type >> std::hex >> addr) {
    if (verbose)
      printf("%c %x\n", type, addr);
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

    if (verbose)
      cache->printInfo(true);

    if (isSingleStep) {
      printf("Press Enter to Continue...");
      getchar();
    }
  }

  cache->printStatistics();

  delete memory;
  delete cache;
  return 0;
}

bool parseParameters(int argc, char **argv) {
  // Read Parameters
  for (int i = 1; i < argc; ++i) {
    if (argv[i][0] == '-') {
      switch (argv[i][1]) {
      case 'v':
        verbose = 1;
        break;
      case 's':
        isSingleStep = 1;
        break;
      case 'd':
        dumpHistory = 1;
        break;
      default:
        return false;
      }
    } else {
      if (traceFilePath == nullptr) {
        traceFilePath = argv[i];
      } else {
        return false;
      }
    }
  }
  if (traceFilePath == nullptr) {
    return false;
  }
  return true;
}

void printUsage() {
  printf("Usage: CacheSim trace-file [-s] [-v]\n");
  printf("Parameters: -s single step, -v verbose output\n");
}