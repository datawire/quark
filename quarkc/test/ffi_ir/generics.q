class Box<T> {

    T contents;

    void set(T contents) {
        self.contents = contents;
    }

    T get() {
        return contents;
    }

}

void box() {
    Box<int> b = new Box<int>();
    b.set(3);
    assertEqual(3, b.get());
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

void train() {
    Train<int> t = new Train<int>();
    t.add(1);
    assertEqual(1, t.first());
    assertEqual(1, t.last());
    t.add(2);
    assertEqual(1, t.first());
    assertEqual(2, t.last());
}

<T> T identity(T x) {
    return x;
}

void testidentity() {
    int n = identity(1);
    String s = identity("one");
    s = identity(null);
    assertEqual(1, n);
    assertEqual("one", s);
}
