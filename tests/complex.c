//test generated by chat gpt

#include "minic-stdlib.h"

struct Complex {
    int real;
    int imag;
};

// Function to compute the factorial of an integer
int factorial(int n) {
    if (n == 0) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

// Function to calculate the sum of squares of a complex number's parts
int complexSumSquares(struct Complex c) {
    return (c.real * c.real) + (c.imag * c.imag);
}

void main() {
    struct Complex z;
    int numbers[5];
    int i;
    int n;
    int fact;
    int sumSquares;
    int smaller;
    
    // Initialize complex number z
    z.real = 3;
    z.imag = 4;

    // Initialize an array of numbers
    numbers[0] = 2;
    numbers[1] = 4;
    numbers[2] = 6;
    numbers[3] = 8;
    numbers[4] = 10;

    // Compute the factorial of 5
    n = 5;
    fact = factorial(n);

    // Calculate the sum of squares of the complex number z
    sumSquares = complexSumSquares(z);

    // Determine the smaller of n and numbers[0] without ternary operator
    if (numbers[0] < n) {
        smaller = numbers[0];
    } else {
        smaller = n;
    }
    print_s((char*)"The smaller of n and numbers[0] is: ");
    print_i(smaller);
    print_s((char*)"\n");

    // Check if z has real part 3 and positive imaginary part using logical operators
    if (z.real == 3 && z.imag > 0) {
        print_s((char*)"z has real part 3 and positive imaginary part.\n");
    } else {
        print_s((char*)"z does not have real part 3 and positive imaginary part.\n");
    }

    // Print the sum of factorial and complex number sum of squares
    print_s((char*)"Sum of factorial and complex number sum of squares: ");
    print_i(fact + sumSquares);
    print_s((char*)"\n");

    // Demonstrate sizeof operator with typecasting
    print_s((char*)"Size of struct Complex: ");
    print_i((int)sizeof(struct Complex));
    print_s((char*)"\n");

    // Print the factorial result
    print_s((char*)"Factorial of ");
    print_i(n);
    print_s((char*)" is: ");
    print_i(fact);
    print_s((char*)"\n");
}
