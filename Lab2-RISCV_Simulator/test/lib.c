/**
 * Simple implementation of common library functions
 */

#include <stdarg.h>

void print_d(int num)
{
    asm("li a7 2;"
        "scall");
}

void print_s(const char *str)
{
    asm("li a7, 0;"
        "scall");
}

void print_c(char ch)
{
    asm("li a7, 1"
        "scall");
}

void printf(char *str, ...)
{
    va_list ap;
    va_start(ap, str);
    int i = 0, j = 0;
    char tmp[100] = {0};
    while (str[i])
    {
        tmp[j] = str[i];
        if (str[i] == '%')
        {
            tmp[j] = '\0';
            print_s(tmp);
            i++;
            switch (str[i])
            {
            case 'd':
                print_d(va_arg(ap, int));
                break;
            case 's':
                print_s(va_arg(ap, char *));
                break;
            case 'c':
                print_c((char)va_arg(ap, int));
                break;
            default:
                break;
            }
            j = -1;
        }
        i++;
        j++;
    }
    tmp[j] = '\0';
    print_s(tmp);
    va_end(ap);
}
void *malloc(int size)
{
    void *tmp;
    asm("li a7, 7;"
        "scall;"
        "mv, %0, a1"
        : "=r"(tmp));
    return tmp;
}

static unsigned long int next = 1;

int rand(void) // RAND_MAX assumed to be 32767
{
    next = next * 1103515245 + 12345;
    return (unsigned int)(next/65536) % 32768;
}

void srand(unsigned int seed)
{
    next = seed;
}