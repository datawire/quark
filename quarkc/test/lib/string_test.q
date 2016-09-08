quark *;

import quark.test;

void main(List<String> args) {
    test.run(args);
}

class StringTest {

    void test_concatenate() {
        checkEqual("", "" + "");
        checkEqual("hello", "hello" + "");
        checkEqual("hello", "hel" + "lo");
        checkEqual("hello", "" + "hello");
    }

    void test_repeat() {
        checkEqual("hellohellohello", "hello" * 3);
        checkEqual("", "helloZero" * 0);
        checkEqual("", "helloNegative" * -5);
        checkEqual(100, (" " * 100).size());
    }

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

    void test_strip() {
        List<String> ws = ["", " ", "\t", "\n", "\r"];
        String s = "<--->";
        int i = 0;
        while (i < ws.size()) {
            int j = 0;
            while (j < ws.size()) {
                int k = 0;
                checkEqual(s, (ws[i] + s + ws[j]).strip());
                j = j + 1;
            }
            checkEqual("", ws[i].strip());
            i = i + 1;
        }
    }

    void test_ord() {
        String s = "m\u00e4rchen 0123456789";
        List<int> o = [109, 228, 114, 99, 104, 101, 110, 32,
                       48, 49, 50, 51, 52, 53, 54, 55, 56, 57];
        checkEqual(s.size().toString(), o.size().toString());
        int i = 0;
        while (i < s.size() && i < o.size()) {
            int e = o[i];
            int a = s.ordAt(i);
            checkEqual(e, a);
            i = i + 1;
        }
    }

    void test_parseInt_failure() {
        List<String> nans = ["", "lol"];
        int i = 0;
        //breakpoint();
        while (i < nans.size()) {
            ParsedInt x = nans[i].parseInt();
            check(!x.hasValue(), "Should not be able to parse '" + nans[i] + "'");
            i = i + 1;
        }
    }

    void test_parseLong_failure() {
        List<String> nans = ["", "lol"];
        int i = 0;
        while (i < nans.size()) {
            ParsedLong x = nans[i].parseLong();
            check(!x.hasValue(), "Should not be able to parse '" + nans[i] + "'");
            i = i + 1;
        }
    }

    void test_parseInt() {
        List<int> values = [0, 1, -1, 2, -2, 3, 4, 5, 6, 7, 8, 9, 10, 42,
                             100, 1001, 101010, 2147483647, -2147483647-1];
        int i = 0;
        Map<String, int> expected = new Map<String, int>();
        while (i < values.size()) {
            int ev = values[i];
            expected[ev.toString()] = ev;
            i = i + 1;
        }
        expected["00"] = 0;
        expected["+1"] = 1;
        expected[" 1"] = 1;
        expected["1 "] = 1;
        expected[" 1 "] = 1;
        List<String> cases = expected.keys();
        i = 0;
        while (i < cases.size()) {
            String v = cases[i];
            ParsedInt x = v.parseInt();
            int y = v.parseInt();
            check(x.hasValue(), "parsed \"" + v + "\"");
            checkEqual(expected[v], y);
            checkEqual(expected[v], x.getValue());
            i = i + 1;
        }
    }

    void test_parseLong() {
        List<long> values = [0L, 1L, -1L, 2L, -2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 42L,
                               100L, 1001L, 101010L, 2147483647L, -2147483648L,
                             2147483648L];
        int i = 0;
        Map<String, long> expected = new Map<String, long>();
        while (i < values.size()) {
            long ev = values[i];
            expected[ev.toString()] = ev;
            i = i + 1;
        }
        expected["00"] = 0L;
        expected["+1"] = 1L;
        expected[" 1"] = 1L;
        expected["1 "] = 1L;
        expected[" 1 "] = 1L;
        List<String> cases = expected.keys();
        i = 0;
        while (i < cases.size()) {
            String v = cases[i];
            ParsedLong x = v.parseLong();
            long y = v.parseLong();
            check(x.hasValue(), "parsed \"" + v + "\"");
            checkEqual(expected[v], y);
            checkEqual(expected[v], x.getValue());
            i = i + 1;
        }
    }
}
