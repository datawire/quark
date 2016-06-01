quark 0.6.100;
class A {
    String name;
}

class B extends A {

    A test() {
        List<Object> l = [super];
	self.blah(super);
        return super;
    }

    void blah(A a) {}

}
