quark *;
namespace pkg_cbd {
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
    pkg_cbd.Bar bar = new pkg_cbd.Bar();
    bar.go();
}
