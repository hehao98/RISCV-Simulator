#include "lib.h"
int main() {
    int a = 10, b = 20, c = 30, d = 12345, e = 1, f = 2;
    int x = a + b;
    print_d(x);
    int y = a - b;
    print_d(y);
    int z = c * d;
    print_d(z);

    x = d / c;
    print_d(x);
    y = d << f;
    print_d(y); 
    exit_proc();
}