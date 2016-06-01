quark 0.6.100;
class Bar {}

class Foo {
    Bar bar() {
	return null;
    }
}

void main() {
    Foo foo = new Foo();
    print(foo.bar().nonexistent());
}
