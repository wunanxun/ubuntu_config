#include <stdio.h>

int main(int argc, char *argv[])
{
    // go through each string in argv

    int i = argc-1;
    while(i > 0) {
        printf("arg %d: %s\n", argc-i, argv[argc-i]);
        i--;
    }

    // let's make our own array of strings
    char *states[] = {
        "California", "Oregon",
        "Washington", "Texas"
    };

    int num_states = 4;
    i = num_states;  // watch for this
    while(i > 0) {
        printf("state %d: %s\n", num_states-i, states[num_states-i]);
        i--;
    }

    i=1;
    while(i<argc) {
        states[i] = argv[i];
        i++;
    }
    
    i = num_states;  // watch for this
    while(i > 0) {
        printf("state %d: %s\n", num_states-i, states[num_states-i]);
        i--;
    }


    return 0;
}
