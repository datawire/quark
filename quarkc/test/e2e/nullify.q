class Foo {
}

void usenull() {
    Foo foo = null;
    assertEqual(null, foo);
    foo = new Foo();
    assertNotEqual(null, foo);
}
