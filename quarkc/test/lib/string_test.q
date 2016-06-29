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

    void test_parseInt() {
        checkEqual("".parseInt(42), 42);
        int i = -10;
        while (i <= 10) {
            checkEqual(i.toString().parseInt(42), i);
            i = i + 1;
        }
        i = 1;
        while (i <= 1000000) {
            checkEqual(i.toString().parseInt(42), i);
                i = i * 2;
        }
        checkEqual("10".parseInt(42), " 10 ".parseInt(43));
        checkEqual(2147483647, "2147483647".parseInt(42));
        /// XXX: work around quark bug:
        // -2147483648 compiles to -(2147483648) which java rejects
        checkEqual(-2147483647-1, "-2147483648".parseInt(42));
        checkEqual(42, "2147483648".parseInt(42));

    }

    void test_parseLong() {
        checkEqual("".parseLong(42L), 42L);
        long i = -10L;
        while (i <= 10L) {
            checkEqual(i.toString().parseLong(42L), i);
            i = i + 1;
        }
        i = 1;
        while (i <= 1000000L) {
            checkEqual(i.toString().parseLong(42L), i);
                i = i * 2;
        }
        checkEqual("10".parseLong(42L), " 10 ".parseLong(43L));
        checkEqual(2147483647L, "2147483647".parseLong(42L));
        checkEqual(-2147483648L, "-2147483648".parseLong(42L));
        checkEqual(2147483648L, "2147483648".parseLong(42L));

    }
}
