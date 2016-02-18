namespace pkg {
    class Bar {

	void go() {
	    Foo foo = new Foo();
	    foo.name = "bob";
	    print(foo.name);
	}
    }

    class Foo {
	String name;
    }
}

void main() {
    pkg.Bar bar = new pkg.Bar();
    bar.go();
}
