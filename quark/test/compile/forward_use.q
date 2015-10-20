// xfail

class Foo {
  void doit(Bar bar) {
    print(bar.far);
  }
}

class Bar {
  String far = "har har";
}
