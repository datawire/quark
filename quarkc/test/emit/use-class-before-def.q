quark 0.6.100;
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

void main(List<String> args) {
    pkg.Bar bar = new pkg.Bar();
    bar.go();
}
