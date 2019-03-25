#include "lib.h"
int main() {
    int f1 = 0, f2 = 1;
    int a[] = {1, 2, 3, 4, 5};
    if (f1) {
        print_s("Error, f1 is false, we should not go here!\n");
    }
    if (f2) {
        print_s("Yes, f2 is true\n");
    }

    print_s("a[5] = ");
    for (int i = 0; i < 5; ++i) {
        print_d(a[i]);
        print_c(' '); 
    }
    print_c('\n');

    for (int i = 1; i < 5; ++i) {
        a[i] += a[i - 1] * 10;
    }

    print_s("a[5] = ");
    for (int i = 0; i < 5; ++i) {
        print_d(a[i]);
        print_c(' '); 
    }
    print_c('\n');
    exit_proc();
}