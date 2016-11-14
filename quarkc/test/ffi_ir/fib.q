int fib(int n) {
    if (n == 0) {
        return 0;
    } else {
        if (n == 1) {
            return 1;
        } else {
        return fib(n-1) + fib(n-2);
        }
    }
}

/*
// XXX: this confuses ruby emitted code???
int fibx(int n) {
    if (n == 0 || n == 1) {
        return n;
    } else {
        return fibx(n-1) + fib(n-2);
    }
}
*/

void usefib() {
    assertEqual(0, fib(0));
    assertEqual(1, fib(1));
    assertEqual(1, fib(2));
    assertEqual(2, fib(3));
    assertEqual(3, fib(4));
    assertEqual(5, fib(5));
    assertEqual(8, fib(6));
    assertEqual(13, fib(7));
    assertEqual(21, fib(8));
    assertEqual(34, fib(9));
    assertEqual(55, fib(10));
}
