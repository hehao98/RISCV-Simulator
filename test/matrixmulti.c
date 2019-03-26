#include "lib.h"

const int M = 10;

void matmulti(int a[M][M], int b[M][M], int c[M][M], int M) {
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      c[i][j] = 0;
      for (int k = 0; k < M; ++k) {
        c[i][j] += a[i][k] * b[k][j];
      }
    }
  }
}

int main() {
  int A[M][M], B[M][M], C[M][M];

  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      A[i][j] = i;
      B[i][j] = j;
      C[i][j] = 0;
    }
  }

  print_s("The content of A is: \n");
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      print_d(A[i][j]);
      print_s(" ");
    }
    print_s("\n");
  }

  print_s("The content of B is: \n");
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      print_d(B[i][j]);
      print_s(" ");
    }
    print_s("\n");
  }

  matmulti(A, B, C, M);

  print_s("The content of C=A*B is: \n");
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      print_d(C[i][j]);
      print_s(" ");
    }
    print_s("\n");
  }

  exit_proc();
}