package qmath 1.0.0;

namespace quark {

    primitive int {
        int __add__(int other);
        int __sub__(int other);
        bool __eq__(int other);
    }

    primitive bool {}

    primitive void {}

    void assertEqual(int a, int b);

}

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

/*
void strcat() {
    assertEqual("ab", "a" + "b");
    }*/
