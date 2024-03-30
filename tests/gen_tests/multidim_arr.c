
void func(int arr[2][2]){
    
    arr[0][0] = 5;
    arr[0][1] = 6;
    arr[1][0] = 7;
    arr[1][1] = 8;
}


void main(){

    int arr[2][2];


    arr[0][0] = 1;
    arr[0][1] = 2;
    arr[1][0] = 3;
    arr[1][1] = 4;

    func(arr);
}