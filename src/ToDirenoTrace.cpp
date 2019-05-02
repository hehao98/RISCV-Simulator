/*
 * Convert trace to direnoIV trace format
 *
 * Created By He, Hao in 2019/5/2
 */

#include <fstream>
#include <iostream>

bool parseParameters(int argc, char **argv);
void printUsage();

const char *traceFilePath;

int main(int argc, char **argv) {
  if (!parseParameters(argc, argv)) {
    return -1;
  }
  std::ifstream infile(traceFilePath);
  std::ofstream outfile(std::string(traceFilePath) + ".d4");
  if (!infile.is_open()) {
    printf("Invalid file path %s\n", traceFilePath);
    return -1;
  }

  char type;
  uint32_t addr;
  while (infile >> type >> std::hex >> addr) {
    outfile << type << " " << std::hex << addr << " " << 1 << std::endl;
  }
  return 0;
}

bool parseParameters(int argc, char **argv) {
  // Read Parameters
  if (argc > 1) {
    traceFilePath = argv[1];
    return true;
  } else {
    return false;
  }
}

void printUsage() { printf("Usage: CacheSim trace-file\n"); }