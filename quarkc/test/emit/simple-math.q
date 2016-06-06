quark *;
void main(List<String> args) {
    int four = 2 + 2;
    print(four.toString());

    int half = 1 / 2;
    print(half.toString());

    float num = 314.0;
    float den = 100.0;
    float pi = num / den;
    print(pi.toString());

    float pie = 3.14;
    print(pie.toString());

    int n = (-100)/3; // XXX: the parens are required for the
                      //      negative, is that right?
    print(n.toString());

    int m = 100/-3;
    print(m.toString());

    int l = 100 % 3;
    print(l.toString());

    int k = -100 % 3;
    print(k.toString());
}
