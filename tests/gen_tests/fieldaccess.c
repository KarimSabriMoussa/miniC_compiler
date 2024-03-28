struct b{
    int a;
    int b;
};

void main(){
    struct b x;

    x.a = 1;
    x.b = 2;

    print_i(x.a);
    print_i(x.b);
}