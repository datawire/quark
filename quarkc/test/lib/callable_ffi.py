import test_callable

class Foo:
    def bar(self, x):
        return 2*x

def foo(x):
    return 2*x

def check():
    return 6 == test_callable.smug(lambda x: 2*x, 3) and \
        6 == test_callable.smug(foo, 3) and \
        6 == test_callable.smug(Foo().bar, 3)
