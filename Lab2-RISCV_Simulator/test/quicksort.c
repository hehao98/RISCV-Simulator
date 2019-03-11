#include "libc.h"

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
  int a[N] = {5, 3, 5, 6, 7, 1, 3, 5, 6, 1};

  printf("Prev A:");
  for (int i = 0; i < N; ++i) {
    printf("%d ", a[i]);
  }
  printf("\n");

  printf("Sorted A: ");
  quicksort(a, 0, N - 1);
  for (int i = 0; i < N; ++i) {
    printf("%d ", a[i]);
  }
  printf("\n");

  return 0;
}