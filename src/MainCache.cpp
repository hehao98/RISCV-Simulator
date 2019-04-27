/*
 * The main entry point of an cache simulator
 * 
 * Created by He, Hao at 2019-04-27
 */

#include <iostream>

#include "MemoryManager.h"
#include "Cache.h"

MemoryManager *memory = nullptr;
Cache *cache = nullptr;


int main(int argc, char **argv) {
  Cache::Policy l1Policy;

  // Initialize memory and cache
  memory = new MemoryManager();
  cache = new Cache(memory, l1Policy);
  memory->setCache(cache);

  delete memory;
  delete cache;
  return 0;
}