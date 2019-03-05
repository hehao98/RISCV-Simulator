#include <iostream>
#include <algorithm>
#include <cstdlib>
// POSIX functions used
#include <time.h>

using namespace std;

const int N = 10000000;
const int M = 1000;

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
        if(i < j) {
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

int ackermann(int m, int n) {
    if (m == 0) {
        return n + 1;
    } else if (m > 0 && n == 0) {
        return ackermann(m - 1, 1);
    } else if (m > 0 && n > 0) {
        return ackermann(m - 1, ackermann(m, n - 1));
    }
}

int a[N];
int A[M][M], B[M][M], C[M][M];
int tmp1 = 4, tmp2 = 1;

int main() {
    clock_t cl;
    double t1, t2, t3;
    int num_trial = 10;

    cl = clock();  
    for (int trial = 0; trial < num_trial; trial++) {
        for (int i = 0; i < N; ++i)
            a[i] = rand() % N;
        quicksort(a, 0, N - 1);
    }
    cl = clock() - cl;
    t1 = (double) cl / CLOCKS_PER_SEC / num_trial;
    printf("Quicksort of %d elements take %f seconds.\n", N, t1);

    cl = clock();
    for (int trial = 0; trial < num_trial; trial++) {
        for (int i = 0; i < M; ++i) {
            for (int j = 0; j < M; ++j) {
                A[i][j] = rand() % M;
                B[i][j] = rand() % M;
                C[i][j] = 0;
            }
        }
        matmulti(A, B, C, M);
    }
    cl = clock() - cl;
    t2 = (double) cl / CLOCKS_PER_SEC / num_trial;
    printf("Matrix %d*%d multiplication takes %f seconds.\n", M, M, t2);

    cl = clock();

        a[trial] = ackermann(tmp1, tmp2);
    
    cl = clock() - cl;
    t3 = (double) cl / CLOCKS_PER_SEC;
    printf("Akermann(4, 1) takes %f seconds.\n", t3);

    return 0;
}