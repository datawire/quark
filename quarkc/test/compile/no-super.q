quark *;
class A {
    String name;

    A(String name) {
	self.name = name;
    }
}

class B extends A {

    B() {
	//super("Bob") <-- this is required because A has params
    }

    void greet() {
	print("Hello, I'm " + self.name);
    }
}
