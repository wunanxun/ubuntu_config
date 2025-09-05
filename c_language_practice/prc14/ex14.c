#include <stdio.h>
#include <string.h>
#include <ctype.h>

// forward declarations

void print_letters(int size_argv, char argv[]);

void print_arguments(int argc, char *argv[])
{
    int i = 0;
    int size_argv;
    for(i=0;i<argc;i++){
        size_argv = strlen(argv[i]);
        print_letters(size_argv,argv[i]);
    }
}

void print_letters(int size_argv,char argv[])
{
    int i = 0;

    for(i = 0; i < size_argv; i++) {
        char ch = argv[i];

        if(isalpha(ch) || isblank(ch)) {
            printf("'%c' == %d ", ch, ch);
        }
    }

    printf("\n");
}


int main(int argc, char *argv[])
{
    print_arguments(argc, argv);
    return 0;
}
