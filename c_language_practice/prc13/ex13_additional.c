#include <stdio.h>

int main(int argc, char *argv[])
{
    if(argc != 2)
    {
        printf("ERROR! you need only one argument.\n");
        return 1;
    }
    int i = 0;
    for(char letter=0,i=0; argv[1][i]!='\0';i++)
    {
        letter = argv[1][i];
        switch(letter)
        {
            case 'A':
                printf("%d: %c \n",i,letter+32);
            break;
            default:
                printf("%d : %c is not a vowel\n",i,letter);
        }

    }
    return 0;
}
