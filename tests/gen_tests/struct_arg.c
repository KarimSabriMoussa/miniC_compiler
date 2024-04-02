struct b{
    int a;
    char b;
    int c;
};


void func(struct b x){
    struct b a;

    a.a = x.a;
    a.b = x.b;
    a.c = x.c;
}


void main(){

struct b x;

x.a = 10;
x.b = 'a';
x.c = 11;

func(x);

}