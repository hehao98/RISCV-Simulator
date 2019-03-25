#include "lib.h"

int ackermann(int m, int n) {
  if (m == 0) {
    return n + 1;
  } else if (m > 0 && n == 0) {
    return ackermann(m - 1, 1);
  } else {
    return ackermann(m - 1, ackermann(m, n - 1));
  }
}

int main() {
  int result = ackermann(4, 1);
  print_s("Akermann(4, 1) = ");
  print_d(result);
  print_s("\n");
  exit_proc();
}