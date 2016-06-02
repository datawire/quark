quark *;
class Foo {
  void zazzle() { }
  void fumble() { print("hoo" + zazzle); } // obviously xfail, but it should not crash the compiler
}
