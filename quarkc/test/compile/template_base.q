quark *;
// xfail this file dies with
// AttributeError: 'TypeParam' object has no attribute 'bases'
class Base<T> extends T {
    T impl;
    Base(T impl) {
        self.impl = impl;
    }
}

interface First {
    void first();
}

class FirstProxy extends Base<First> {
    void first() { self.impl.first(); }
}

class Middle<T> extends Base<T> {
    Middle(T impl) {
        super(impl);
    }
    void first() { self.impl.first(); }
}

interface Second extends First {
    void second();
}

class SecondProxy extends Middle<Second> {
    void second() { self.impl.second(); }
}

interface Another extends First {
    void another();
}

class AnotherProxy extends Middle<Another> {
    void antoher() { self.impl.another(); }
}
