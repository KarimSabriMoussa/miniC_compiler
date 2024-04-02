struct b
{
    int a;
    char b;
    int c;
};

struct b func()
{
    struct b x;

    x.a = 10;
    x.b = 'a';
    x.c = 11;

    return x;
}

void main()
{

    struct b x;
    x = func();
    x.a = 1;
}