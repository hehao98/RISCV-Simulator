/*
 * The main entry point of an cache simulator
 * 
 * Created by He, Hao at 2019-04-27
 */

#include <iostream>
#include <fstream>
#include <string>
#include <cstdint>

#include "MemoryManager.h"
#include "Cache.h"

bool parseParameters(int argc, char **argv);
void printUsage();

const char *traceFilePath;
MemoryManager *memory = nullptr;
Cache *cache = nullptr;

int main(int argc, char **argv) {
  if (!parseParameters(argc, argv)) {
    return -1;
  }

  Cache::Policy l1Policy;

  // Initialize memory and cache
  memory = new MemoryManager();
  cache = new Cache(memory, l1Policy);
  memory->setCache(cache);

  // Read and execute trace in cache-trace/ folder
  std::ifstream trace(traceFilePath);
  if (!trace.is_open()) {
    printf("Unable to open file %s\n", traceFilePath);
    return -1;
  }

  char type; //'r' for read, 'w' for write
  uint32_t addr;
  while (trace >> type >> std::hex >> addr) {
    printf("%c %x\n", type, addr);

    
  }

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