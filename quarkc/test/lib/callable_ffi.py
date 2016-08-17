import callable_test

class Foo:
    def bar(self, x):
        return 2*x

def foo(x):
    return 2*x

def check():
    return 6 == callable_test.smug(lambda x: 2*x, 3) and \
        6 == callable_test.smug(foo, 3) and \
        6 == callable_test.smug(Foo().bar, 3)
