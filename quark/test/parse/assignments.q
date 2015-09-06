void assignments() {
    a = x;
    a.b = x;
    a.b.c = x;

    a().b = x;
    a.b().c = x;

    3.a = x;
    3.a.b = x;
    3.a.b.c = x;

    3().a = x;
    3.a().b = x;
    3.a.b().c = x;
}
