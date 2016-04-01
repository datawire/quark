class A {
    String name;

    A(String name) {
	self.name = name;
    }

    void greet() {
	print("Hello");
    }
}

class B extends A {

    B() {
	super("Bob");
    }

    void greet() {
	super.greet();
	print("I'm " + self.name);
    }
}

void main(List<String> args) {
    B b = new B();
    b.greet();
}
