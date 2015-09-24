import os, sys


def factorial(n):
    if ((n) == (0)):
        return 1;
    else:
        return (n) * (factorial((n) - (1)));
    


def main():
    sys.stdout.write(str(factorial(1)) + "\n");
    sys.stdout.write(str(factorial(2)) + "\n");
    sys.stdout.write(str(factorial(3)) + "\n");
    sys.stdout.write(str(factorial(4)) + "\n");
    sys.stdout.write(str(factorial(5)) + "\n");
    sys.stdout.write(str(factorial(6)) + "\n");
    sys.stdout.write(str(factorial(7)) + "\n");
    sys.stdout.write(str(factorial(8)) + "\n");
    sys.stdout.write(str(factorial(9)) + "\n");
    sys.stdout.write(str(factorial(10)) + "\n");
