class TestInt {
    void run() {
        Map<int,int> map = new Map<int,int>();
        int b = 3;
        print(b.toString());
        print(self.func().toString());
    }
    int func() {
        return new int();
    }
}

class TestLong {
    void run() {
        Map<long,long> map = new Map<long,long>();
        // the following declaration does not translate to java
        // xfail:java
        long b = 3;
        print(b.toString());
        print(self.func().toString());
    }
    long func() {
        return new long();
    }
}

class Test<T> {
    void run() {
        Map<T,T> map = new Map<T,T>();
// this bit crashes the compiler so we need an xfail for now
// NOTE: the above xfail:java masks this xfail
//      T b = 3;
//      print(b.toString());
//      print(self.func().toString());
    }
//  T func() {
//      return new T();
//  }
}

void main() {
    new TestInt().run();
    new TestLong().run();
    new Test<int>().run();
    new Test<long>().run();
}
