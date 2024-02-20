//test generated by chat gpt

#include "minic-stdlib.h"

struct Vector {
    int data[10];
};

int sumArray(int numbers[10], int size) {
    int sum;
    int i;
    sum = 0;
    i = 0;
    while (i < size) {
        sum = sum + numbers[i];
        i = i + 1;
    }
    return sum;
}

void populateVector(struct Vector* vec) {
    int i;
    i = 0;
    while (i < 10) {
        (*vec).data[i] = i * i; // Populate with square of index
        i = i + 1;
    }
}

void main() {
    struct Vector myVector;
    int result;
    int size;
    size = 10;
    
    // Populate the vector with data
    populateVector(&myVector);
    
    // Sum the elements of the array in the vector
    result = sumArray(myVector.data, size);

    // Print the sum
    print_s((char*)"Sum of array elements: ");
    print_i(result);
    print_s((char*)"\n");
}
