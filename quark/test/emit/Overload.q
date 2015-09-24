class Overload {

    String name;

    Overload(String name) {
        self.name = name;
    }

    Overload __add__(Overload o) {
        return o;
    }

    Overload __mul__(Overload o) {
        return self;
    }

    void test() {
        Overload o1 = new Overload("one");
        Overload o2 = new Overload("two");
        Overload o3 = o1 + o2;
	print(o3.name);
        o3 = o1 * o2;
	print(o3.name);
	if (o3 == o1) {
	    print("YAY!");
	}
    }

}

void main() {
    Overload o = new Overload("test");
    o.test();
}
