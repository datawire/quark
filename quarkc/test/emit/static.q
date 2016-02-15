class Foo {
    static int count = 0;

    static void setCount(int n) {
        count = n;
    }

    static int getCount() {
        return count;
    }

    Foo() {
        count = count + 1;
    }

    void test1() {
        self.count = self.count + 1;
    }

    void test2() {
        count = count + 1;
    }

    void test3() {
        Foo.count = Foo.count + 1;
    }

    void test4() {
        setCount(getCount() + 1);
    }
}

void main() {
    print(Foo.count);
    Foo f = new Foo();
    print(Foo.count);
    print(f.count);
    f = new Foo();
    print(Foo.count);
    print(f.count);

    print("==");
    f.test1();
    print(Foo.count);
    print(f.count);

    print("==");
    f.test2();
    print(Foo.count);
    print(f.count);

    print("==");
    f.test3();
    print(Foo.count);
    print(f.count);

    print("==");
    f.test4();
    print(Foo.getCount());
    print(f.getCount());

    print("==");
    Foo.setCount(0);
    print(Foo.count);
    print(f.count);
    print(Foo.getCount());
    print(f.getCount());

    print("==");
    f.setCount(-1);
    print(Foo.count);
    print(f.count);
    print(Foo.getCount());
    print(f.getCount());
}
