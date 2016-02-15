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
