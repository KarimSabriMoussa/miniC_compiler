#include "minic-stdlib.h"

struct a{
    int x;
};

int func(struct a s){
    return s.x;
}

void main(){

    int a;
    struct a s;
    s.x = 12;


    a = func(s);

    print_i(a);
}