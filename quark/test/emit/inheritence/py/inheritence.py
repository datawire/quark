import os, sys

class A:
    
    def foo(self):
        sys.stdout.write(str("A") + "\n");
    

class B(A):
    
    def foo(self):
        sys.stdout.write(str("B") + "\n");
    

class C(A): pass

def main():
    a = A();
    (a).foo();
    b = B();
    (b).foo();
    c = C();
    (c).foo();
    sys.stdout.write(str("--") + "\n");
    a = b
    (a).foo();
    a = c
    (a).foo();
