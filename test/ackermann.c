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
  for (int i = 0; i <= 3; ++i) {
    for (int j = 0; j <= 4; ++j) {
      int result = ackermann(i, j);
      print_s("Ackermann(");
      print_d(i);
      print_s(",");
      print_d(j);
      print_s(") = ");
      print_d(result);
      print_c('\n');
    }
  }
  exit_proc();
}