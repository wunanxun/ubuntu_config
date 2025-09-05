#include <stdio.h>


void first_printf(int count, int *ptr_ages, char **ptr_names);
void second_printf(int count, int *ptr_ages, char **ptr_names);

int main(int argc, char *argv[])
{
    char **ptr_argv = argv;
    int * ptr_argc = &argc;
    int j = 0;
    printf("you input %d arguments.\n",*(ptr_argc));
    for(j = 0; j < *(ptr_argc); j++)
    {
        printf("%d: your input is %s.\n" , j , *(ptr_argv+j));
    }

    // create two arrays we care about
    int ages[] = {23, 43, 12, 89, 2};
    char *names[] = {
        "Alan", "Frank",
        "Mary", "John", "Lisa"
    };

    // safely get the size of ages
    int count = sizeof(ages) / sizeof(int);

    // using pointers
    first_printf(count,ages,names);
    
    // setup the pointers to the start of the arrays
    second_printf(count,ages,names);


    int *ptr_ages = ages;
    char **ptr_names = names;

    // third way, pointers are just arrays
    int i;

    for(j=0;j<argc;j++){
        printf("your pointer is %p.\n",ptr_argv[j]);
    }

    printf("---------\n");

    for(i = 0; i < count; i++) {
        printf("%p is %p years old again.\n",
                ptr_names[i], &ptr_ages[i]);
    }
     return 0;
}

void first_printf(int ct,int *ptr_ages, char **ptr_names){
    int i = 0;
    int count = ct;
    char **cur_names = ptr_names;
    int *cur_ages = ptr_ages;
    for(i = count-1; i >=0; i--) {
        printf("%s has %d years alive.\n",
               *(cur_names+i),*(cur_ages+i));
    }
    

    i = count-1;
    count = ct;
    cur_names = ptr_names;
    cur_ages = ptr_ages;
    while(i>=0){
        printf("%s has %d years alive.\n",
               *(cur_names+i),*(cur_ages+i));
        i--;
    }

    printf("first end---\n");

}

void second_printf(int ct,int *ptr_ages, char **ptr_names){
    int i;
    int count = ct;
    char **cur_names = ptr_names;
    int *cur_ages = ptr_ages;
    for(i = count-1; i >= 0 ; i--) {
        printf("%s is %d years old.\n",
                cur_names[i], cur_ages[i]);
    }

    i = count-1;
    count = ct;
    cur_names = ptr_names;
    cur_ages = ptr_ages;
    while(i>=0){
        printf("%s has %d years alive.\n",
               cur_names[i],cur_ages[i]);
        i--;
    }



    printf("second end---\n");
}

