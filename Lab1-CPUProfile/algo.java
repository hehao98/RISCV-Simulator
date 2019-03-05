import java.util.Random;

public class algo {

    public static final int N = 10000000;
    public static final int M = 1000;

    public static void quicksort(int[] a, int begin, int end) {
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

    public static final void matmulti(int[] a, int[] b, int[] c, int n) {
        for (int i = 0; i < n; ++i) {
            for (int j = 0; j < n; ++j) {
                c[i * n + j] = 0;
                for (int k = 0; k < n; ++k) {
                    c[i * n + j] += a[i * n + k] * b[k * n + j];
                }
            }
        }
    }

    public static final int ackermann(int m, int n) {
        if (m == 0) {
            return n + 1;
        } else if (m > 0 && n == 0) {
            return ackermann(m - 1, 1);
        } else {
            return ackermann(m - 1, ackermann(m, n - 1));
        }
    }

    public static int[] a = new int[N];
    public static int[] A = new int[M * M], B = new int[M * M], C = new int[M * M];

    public static void main(String[] args) {
        Random rand = new Random();
        long cl;
        double t1, t2, t3;
        int num_trial = 10;

        cl = System.nanoTime();
        for (int trial = 0; trial < num_trial; trial++) {
            for (int i = 0; i < N; ++i)
                a[i] = rand.nextInt() % N;
            quicksort(a, 0, N - 1);
        }
        cl = System.nanoTime() - cl;
        t1 = (double) cl / 1000000000 / num_trial;
        System.out.printf("Quicksort of %d elements take %f seconds.\n", N, t1);

        cl = System.nanoTime();
        for (int trial = 0; trial < num_trial; trial++) {
            for (int i = 0; i < M; ++i) {
                for (int j = 0; j < M; ++j) {
                    A[i * M + j] = rand.nextInt() % M;
                    B[i * M + j] = rand.nextInt() % M;
                    C[i * M + j] = 0;
                }
            }
            matmulti(A, B, C, M);
        }
        cl = System.nanoTime() - cl;
        t2 = (double) cl / 1000000000 / num_trial;
        System.out.printf("Matrix %d*%d multiplication takes %f seconds.\n", M, M, t2);

        cl = System.nanoTime();
        for (int trial = 0; trial < num_trial; trial++) {
            a[trial] = ackermann(4, 1);
        }
        cl = System.nanoTime() - cl;
        t3 = (double) cl / 1000000000 / num_trial;
        System.out.printf("Akermann(4, 1) takes %f seconds.\n", t3);
    }
}