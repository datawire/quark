class A {
    String name;
    A(String name) {
        self.name = name;
    }
}

class B extends A {
    void greet() {
        // XXX: self is required, do we want that?
        print("Hello, my name is " + self.name);
    }
}

class C extends A {
    C(String name) {
	super("C" + name);
    }
    void greet() {
	print("Greetings, my name is " + self.name);
    }
}

void main() {
    B b = new B("Bob");
    b.greet();
    C c = new C("arole");
    c.greet();
}
