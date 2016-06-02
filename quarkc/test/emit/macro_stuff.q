quark *;
class Macro {
    macro Macro me() self;
    macro Macro first(Macro o) self;
    macro Macro second(Macro o) o;
    macro Macro third(Macro o) o.me();
    void test() {
        Macro m1 = Macro();
        Macro m2 = Macro();

        Macro m3 = m1.me();
        Macro m4 = m1.first(m2);
        Macro m5 = m1.second(m2);
        Macro m6 = m1.third(m2);

        Macro m7 = m1.me();
        Macro m8 = m1.first(m2).me();
        Macro m9 = m1.second(m2).me();
        Macro m10 = m1.third(m2).me();
    }
}
