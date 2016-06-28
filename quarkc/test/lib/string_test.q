quark *;

import quark.test;

void main(List<String> args) {
    test.run(args);
}

class StringTest {

    void test_upper_lower() {
        checkEqual("asdf", "AsDf".toLower());
        checkEqual("ASDF", "AsDf".toUpper());
    }

    void test_relop() {
        List<String> s = ",a,aa,aaa,aab,ab,c,ddd,e,xyzzy".split(",");
        int i = 0;
        while (i < (s.size() - 1)) {
            int j = i + 1;
            while (j < s.size()) {
                String a = s[i];
                String b = s[j];

                check((a < b), "('" + a + "' < '" + b + "')");
                check(!(a < a), "!('" + a + "' < '" + a + "')");
                check(!(b < a), "!('" + b + "' < '" + a + "')");

                check((a <= b), "('" + a + "' <= '" + b + "')");
                check((a <= a), "('" + a + "' <= '" + a + "')");
                check(!(b <= a), "!('" + b + "' <= '" + a + "')");

                check((b > a), "('" + b + "' > '" + a + "')");
                check(!(a > a), "!('" + a + "' > '" + a + "')");
                check(!(a > b), "!('" + a + "' > '" + b + "')");

                check((b >= a), "('" + b + "' >= '" + a + "')");
                check((a >= a), "('" + a + "' >= '" + a + "')");
                check(!(a >= b), "!('" + a + "' >= '" + b + "')");

                j = j + 1;
            }
            i = i + 1;
        }
    }
}
