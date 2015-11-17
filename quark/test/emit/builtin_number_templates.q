class Test<T> {
    void run() {
        Map<T,T> map = new Map<T,T>();
// this bit crashes the compiler so we need an xfail for now
      T b = 3;
      print(b.toString());
      print(self.func().toString());
    }
  T func() {
      return new T();
  }
}

void main() {
    new Test<byte>().run();
    new Test<short>().run();
    new Test<int>().run();
    new Test<long>().run();
}

