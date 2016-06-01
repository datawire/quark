quark 0.6.100;
interface Foo {
   void m1();
   void m2(int arg);
   void m3(List<String> args);
}

interface Bar<T> {
   void m1();
   void m2(T arg);
   void m3(List<T> args);
}
