class Box<T> {

    T contents;

    void set(T contents) {
        self.contents = contents;
    }

    T get() {
        return contents;
    }

}

class Train<T> {

    List<T> cars;

    Train() {
        cars = new List<T>();
    }

    void add(T c) {
        cars.append(c);
    }

    T first() {
        return cars[0];
    }

    T last() {
        return cars[cars.size() - 1];
    }

}

class Plain {
}

class Factory<X> {
    X make() {
         X foo;
         // foo = new X(); /// XXX: this doesnt work yet.
         return foo;
    }
}

void box() {
    Box<int> b = new Box<int>();
    b.set(3);
    assertEqual(3, b.get());
}

void train() {
    Train<int> t = new Train<int>();
    t.add(1);
    assertEqual(1, t.first());
    assertEqual(1, t.last());
    t.add(2);
    assertEqual(1, t.first());
    assertEqual(2, t.last());
}

void factory() {
    Factory<Plain> fp = new Factory<Plain>();
    Plain p = fp.make();
    Plain pp = fp.make();
    assertEqual(p, pp); // this should fail after factory is fixed., it just silences go compiler for now
}
