int factorial(int n) {
    if (n == 0) {
        return 1;
    } else {
        return n*factorial(n-1);
    }
}

void main() {
    print(factorial(1));
    print(factorial(2));
    print(factorial(3));
    print(factorial(4));
    print(factorial(5));
    print(factorial(6));
    print(factorial(7));
    print(factorial(8));
    print(factorial(9));
    print(factorial(10));
}
