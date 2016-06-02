quark *;
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

    a[0] = x;
    a.b[0, 1] = x;
    a.b.c["asdf"] = x;

    a()[x].b = x;
    a[x,y].b().c = x;

    3[4].a = x;
    3.a[5].b = x;
    3.a.b.c = x;

    3()[x, y].a = x;
    3.a().b[x, y] = x;
    3.a[x].b().c = x;
}
