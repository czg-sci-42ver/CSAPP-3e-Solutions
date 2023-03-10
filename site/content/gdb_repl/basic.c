#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <limits.h>
int main(int argc, char* argv[]){
    int* basic = malloc(sizeof(int));
    *basic = INT_MIN;
    *basic = INT_MAX;
    *basic+=1;
    free(basic);
    return 0;
}