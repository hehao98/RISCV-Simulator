#include "lib.c"

const int M = 2;

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
      A[i][j] = rand() % 5;
      B[i][j] = rand() % 5;
      C[i][j] = 0;
    }
  }

  printf("The content of A is: \n");
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      printf("%d ", A[i][j]);
    }
    printf("\n");
  }

  printf("The content of B is: \n");
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      printf("%d ", B[i][j]);
    }
    printf("\n");
  }

  matmulti(A, B, C, M);

  printf("The content of C=A*B is: \n");
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      printf("%d ", C[i][j]);
    }
    printf("\n");
  }

  return 0;
}