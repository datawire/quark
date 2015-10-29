class string_test {
    void check(String actual, String expected, String op, String q) {
        if ( actual == expected ) {
            print("OK   " + op + " = " + q + actual + q);
        } else {
            print("FAIL " + op + " = " + q + actual + q + " != " + q + expected + q);
        }
    }
}


class test_size extends string_test {
    String what;
    test_size(String what) { self.what = what; }
    test_size does(int expected) {
        int actual = what.size();
        String op = "'" + what + "'.size()";
        self.check(actual.toString(), expected.toString(), op, "");
        return self;
    }
}

class test_startsWith extends string_test {
    String what;
    String _that;
    test_startsWith(String what) { self.what = what;}
    test_startsWith that(String _that) { self._that = _that; return self; }
    test_startsWith does(bool expected) {
        self.check(self.what.startsWith(self._that).toString(),
                   expected.toString(),
                   "'" + self.what + "'.startsWith('" + self._that + "'",
                   "");
        return self;
    }
}


class test_endsWith extends string_test {
    String what;
    String _that;
    test_endsWith(String what) { self.what = what;}
    test_endsWith that(String _that) { self._that = _that; return self; }
    test_endsWith does(bool expected) {
        self.check(self.what.endsWith(self._that).toString(),
                   expected.toString(),
                   "'" + self.what + "'.endsWith('" + self._that + "'",
                   "");
        return self;
    }
}

class test_find extends string_test {
    String what;
    String _that;
    test_find(String what) { self.what = what;}
    test_find that(String _that) { self._that = _that; return self; }
    test_find does(int expected) {
        self.check(self.what.find(self._that).toString(),
                   expected.toString(),
                   "'" + self.what + "'.find('" + self._that + "'",
                   "");
        return self;
    }
}

class test_substring extends string_test {
    String what;
    int start;
    int end;
    test_substring(String what) { self.what = what;}
    test_substring that(int start, int end) { self.start = start; self.end = end; return self; }
    test_substring does(String expected) {
        self.check(self.what.substring(self.start, self.end),
                   expected,
                   "'" + self.what + "'.substring(" + self.start.toString() + ", " + self.end.toString() + ")",
                   "'");
        return self;
    }
}

class test_replace extends string_test {
    String what;
    String start;
    String end;
    test_replace(String what) { self.what = what;}
    test_replace that(String start, String end) { self.start = start; self.end = end; return self; }
    test_replace does(String expected) {
        self.check(self.what.replace(self.start, self.end),
                   expected,
                   "'" + self.what + "'.replace('" + self.start + "', '" + self.end + "')",
                   "'");
        return self;
    }
}

class test_join extends string_test {
    String what;
    List<String> parts;
    String strparts;
    String sep;
    test_join(String what) {
        self.what = what;
    }
    test_join that() {
        self.parts = new List<String>();
        self.strparts = "";
        self.sep = "";
        return self;
    }
    test_join a(String part) {
        self.parts.add(part);
        self.strparts = self.strparts + self.sep + "'" + part + "'";
        self.sep = ", ";
        return self;
    }
    test_join does(String expected) {
        self.check(self.what.join(self.parts),
                   expected,
                   "'" + self.what + "'.join([" + self.strparts + "])",
                   "'");
        return self;
    }
}

void main() {
    new test_size("").does(0);
    new test_size("1").does(1);
    new test_size("22").does(2);
    new test_size("333").does(3);
    new test_size("4444").does(4);

    new test_startsWith("abcd")
        .that("abc").does(true)
        .that("bc").does(false)
        .that("").does(true)
        .that("abcde").does(false);

    new test_endsWith("abcd")
        .that("bcd").does(true)
        .that("bc").does(false)
        .that("").does(true)
        .that("xabcd").does(false);

    new test_find("abcd")
        .that("bcd").does(1)
        .that("bc").does(1)
        .that("").does(0)
        .that("xabcd").does(-1)
        .that("abcd").does(0)
        .that("abc").does(0)
        .that("a").does(0)
        .that("x").does(-1);

    new test_substring("abcd")
        .that(0, 0).does("")
        .that(0, 4).does("abcd")
        .that(0, 1).does("a")
        .that(1, 2).does("b")
        .that(2, 4).does("cd")
        .that(3, 4).does("d")
        .that(1, 1).does("")
        .that(2, 2).does("");

    new test_replace("abcd")
        .that("ab", "AB").does("ABcd")
        .that("b", "bb").does("abbcd")
        .that("ab", "ab").does("abcd")
        .that("", "EE").does("EEabcd")
        .that("c", "EE").does("abEEd")
        .that("d", "EE").does("abcEE")
        .that("x", "EE").does("abcd");

    new test_join("")
        .that().does("")
        .that().a("a").does("a")
        .that().a("a").a("b").does("ab")
        .that().a("a").a("b").a("c").does("abc");
    new test_join(",")
        .that().does("")
        .that().a("a").does("a")
        .that().a("a").a("b").does("a,b")
        .that().a("a").a("b").a("c").does("a,b,c");
}
