quark 0.6.100;
void expressions() {
    a;
    a.b;
    a.b();
    a.b.c();
    a().b.c;
    a.b().c;

    a + x;
    a.b + x;
    a.b() + x;
    a.b.c() + x;
    a().b.c + x;
    a.b().c + x;
}
