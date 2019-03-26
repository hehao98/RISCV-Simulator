#include "lib.h"
int main() {
    print_s("This is string from print_s()\n");
    print_d(123456);
    print_c('a');
    print_c('b');
    print_c('c');
    print_c('\n');

    print_s("Enter a number: ");
    int a = read_num();
    print_s("The number is: ");
    print_d(a);
    print_s("\n");

    print_s("Enter a character: ");
    char c = read_char();
    print_s("The character is: ");
    print_c(c);
    print_s("\n");

    exit_proc();
}