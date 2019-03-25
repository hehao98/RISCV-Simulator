#include "lib.h"

void quicksort(int *a, int begin, int end) {
  int i, j, t, pivot;
  if (begin > end)
    return;

  pivot = a[begin];
  i = begin;
  j = end;
  while (i != j) {
    while (a[j] >= pivot && i < j)
      j--;
    while (a[i] <= pivot && i < j)
      i++;
    if (i < j) {
      t = a[i];
      a[i] = a[j];
      a[j] = t;
    }
  }
  a[begin] = a[i];
  a[i] = pivot;

  quicksort(a, begin, i - 1);
  quicksort(a, i + 1, end);
}

int main() {
  const int N = 10;
  int a[10] = {5, 3, 5, 6, 7, 1, 3, 5, 6, 1};

  print_s("Prev A: ");
  for (int i = 0; i < N; ++i) {
    print_d(a[i]);
    print_s(" ");
  }
  print_s("\n");

  print_s("Sorted A: ");
  quicksort(a, 0, N - 1);
  for (int i = 0; i < N; ++i) {
    print_d(a[i]);
    print_s(" ");
  }
  print_s("\n");

  const int M = 100;
  int b[100];
  for (int i = 0; i < 100; ++i) {
    b[i] = 100 - i;
  }
  print_s("Prev B: ");
  for (int i = 0; i < M; ++i) {
    print_d(b[i]);
    print_s(" ");
  }
  print_s("\n");

  print_s("Sorted B: ");
  quicksort(b, 0, M - 1);
  for (int i = 0; i < M; ++i) {
    print_d(b[i]);
    print_s(" ");
  }
  print_s("\n");

  exit_proc();
}