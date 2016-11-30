// XXX: quark should initialize locals to a (typed) null value (IR defines null for native types as a value, e.g. empty string for String)
//void initialized_locals() {
//    int i;
//    assertEqual(0, i);
//    String s;
//    assertEqual("", s);
//    bool b;
//    bool XXX_false = 1 == 2;
//    assertEqual(XXX_false, b); // XXX: false kills compiler
//}

class SideEffect {
    List<String> log;
    SideEffect() {
        self.log = new List<String>();
    }
    bool effect(bool ret, String v) {
        self.log.append(v);
        return ret;
    }
}

class BooleanTest {
    void short_circuit_and_FTT() {
        SideEffect side = new SideEffect();
        bool actual =
            side.effect(false, "should-happen") &&
            side.effect(true, "should-not-happen") &&
            side.effect(true, "should-not-happen");
        assertEqual(false, actual);
        assertEqual(1, side.log.size());
        assertEqual("should-happen", side.log[0]);
    }
    void short_circuit_and_TFT() {
        SideEffect side = new SideEffect();
        bool actual =
            side.effect(true, "should-happen") &&
            side.effect(false, "should-happen-too") &&
            side.effect(true, "should-not-happen");
        assertEqual(false, actual);
        assertEqual(2, side.log.size());
        assertEqual("should-happen", side.log[0]);
        assertEqual("should-happen-too", side.log[1]);
    }
    void short_circuit_or_TFF() {
        SideEffect side = new SideEffect();
        bool actual =
            side.effect(true, "should-happen") ||
            side.effect(false, "should-not-happen") ||
            side.effect(false, "should-not-happen");
        assertEqual(true, actual);
        assertEqual(1, side.log.size());
        assertEqual("should-happen", side.log[0]);
    }
    void short_circuit_or_FTF() {
        SideEffect side = new SideEffect();
        bool actual =
            side.effect(false, "should-happen") ||
            side.effect(true, "should-happen-too") ||
            side.effect(false, "should-not-happen");
        assertEqual(true, actual);
        assertEqual(2, side.log.size());
        assertEqual("should-happen", side.log[0]);
        assertEqual("should-happen-too", side.log[1]);
    }
}

class IntegerTest {

    void integer_addition() {
        int a = 0;
        assertEqual(1, a+1);
    }

    void integer_subtraction() {
        int a = 0;
        assertEqual(-1, a-1);
    }

    void integer_multiplication() {
        int a = 2;
        int b = 2;
        assertEqual(4, a*b);
    }


    void testint__eq__() {
        assertEqual(true, 0 == 0);
        assertEqual(false, 0 == 1);
        assertEqual(false, 1 == 0);
        assertEqual(true, 1 == 1);
    }

    void testint__ne__() {
        assertEqual(false, 0 != 0);
        assertEqual(true, 0 != 1);
        assertEqual(true, 1 != 0);
        assertEqual(false, 1 != 1);
    }

    void testint__add__() {
        assertEqual(0, 0 + 0);
        assertEqual(1, 0 + 1);
        assertEqual(1, 1 + 0);
        assertEqual(2, 1 + 1);
        assertEqual(42, 23 + 19);
    }

    void testint__sub__() {
        assertEqual(0, 0 - 0);
        assertEqual(-1, 0 - 1);
        assertEqual(1, 1 - 0);
        assertEqual(0, 1 - 1);
        assertEqual(42, 64 - 22);
    }

    void testint__neg__() {
        int zero = 0;
        assertEqual(0, -zero);
        int one = 1;
        assertEqual(-1, -one);
        int neg = -1;
        assertEqual(1, -neg);
    }

    void testint__ge__() {
        assertEqual(true, 0 >= 0);
        assertEqual(true, 1 >= 0);
        assertEqual(false, 0 >= 1);
    }

    void testint__le__() {
        assertEqual(true, 0 <= 0);
        assertEqual(false, 1 <= 0);
        assertEqual(true, 0 <= 1);
    }

    void testint__gt__() {
        assertEqual(false, 0 > 0);
        assertEqual(true, 1 > 0);
        assertEqual(false, 0 > 1);
    }

    void testint__lt__() {
        assertEqual(false, 0 < 0);
        assertEqual(false, 1 < 0);
        assertEqual(true, 0 < 1);
    }

}


class StringTest {
void string_concat() {
    assertEqual("ab", "a" + "b");
    assertEqual("ab", "ab" + "");
    assertEqual("ab", "" + "ab");

    assertEqual("a\nb", "a\nb" + "");
    assertEqual("a\nb", "a\n" + "b");
    assertEqual("a\nb", "a" + "\nb");
    assertEqual("a\nb", "" + "a\nb");

    assertEqual("ab\n", "ab\n" + "");
    assertEqual("ab\n", "ab" + "\n");
    assertEqual("ab\n", "a" + "b\n");
    assertEqual("ab\n", "" + "ab\n");

    assertEqual("a", "\x61");
    assertEqual("\x0a", "\n");
}

void string_substring() {
    assertEqual("abc", "abcdefghi".substring(0, 3));
    assertEqual("def", "abcdefghi".substring(3, 6));
    assertEqual("ghi", "abcdefghi".substring(6, 9));
}

void string_equals() {
    assertEqual(true, "abc" == "abc");
    assertEqual(false, "abc" == "def");
}

}

void map_string_string_getset() {
    Map<String,String> m = new Map<String,String>();
    m["asdf"] = "fdsa";
    assertEqual("fdsa", m["asdf"]);
}

void map_string_string_size() {
    Map<String,String> m = new Map<String,String>();
    assertEqual(0, m.size());
    m["asdf"] = "fdsa";
    assertEqual(1, m.size());
    m["asdfg"] = "gfdsa";
    assertEqual(2, m.size());
    m["asdf"] = "fdsat";
    assertEqual(2, m.size());
}

void map_string_string_no_key() {
    Map<String,String> m = new Map<String,String>();
    assertEqual("", m["asdf"]);
    assertEqual(0, m.size());
}

void map_string_string_keys() {
    Map<String,String> m = new Map<String,String>();
    List<String> k1 = m.keys();
    assertEqual(0, k1.size());
    m["asdf"] = "fdsa";
    assertEqual(0, k1.size());
    List<String> k2 = m.keys();
    assertEqual(1, k2.size());
    assertEqual("asdf", k2[0]);
}

void map_string_int_getset() {
    Map<String,int> m = new Map<String,int>();
    m["asdf"] = 42;
    assertEqual(42, m["asdf"]);
}

void map_string_int_size() {
    Map<String,int> m = new Map<String,int>();
    assertEqual(0, m.size());
    m["asdf"] = 11;
    assertEqual(1, m.size());
    m["asdfg"] = 22;
    assertEqual(2, m.size());
    m["asdf"] = 33;
    assertEqual(2, m.size());
}

void map_string_int_no_key() {
    Map<String,int> m = new Map<String,int>();
    assertEqual(0, m["asdf"]);
    assertEqual(0, m.size());
}

void map_string_int_keys() {
    Map<String,int> m = new Map<String,int>();
    List<String> k1 = m.keys();
    assertEqual(0, k1.size());
    m["asdf"] = 11;
    assertEqual(0, k1.size());
    List<String> k2 = m.keys();
    assertEqual(1, k2.size());
    assertEqual("asdf", k2[0]);
}


void list_int_append() {
    List<int> l = new List<int>();
    l.append(3);
    assertEqual(3, l[0]);
}

void list_int_size() {
    List<int> l = new List<int>();
    assertEqual(0, l.size());
    l.append(3);
    assertEqual(1, l.size());
}

void list_int_set() {
    List<int> l = new List<int>();
    l.append(1);
    l.append(4);
    l.append(3);
    assertEqual(3, l.size());
    assertEqual(4, l[1]);
    l[1] = 2;
    assertEqual(3, l.size());
    assertEqual(1, l[0]);
    assertEqual(2, l[1]);
    assertEqual(3, l[2]);
}


void list_int_extend() {
    List<int> l = new List<int>();
    List<int> r = new List<int>();
    l.append(11);
    r.extend(l);
    l.append(22);
    assertEqual(2, l.size());
    assertEqual(1, r.size());
    assertEqual(11, l[0]);
    assertEqual(22, l[1]);
    assertEqual(11, r[0]);
}


void list_int_remove() {
    List<int> l = new List<int>();
    l.append(1);
    l.append(4);
    l.append(2);
    assertEqual(3, l.size());
    assertEqual(4, l[1]);
    int act = l.remove(1);
    assertEqual(2, l.size());
    assertEqual(1, l[0]);
    assertEqual(2, l[1]);
    assertEqual(4, act);
}






void list_string_append() {
    List<String> l = new List<String>();
    l.append("fdsa");
    assertEqual("fdsa", l[0]);
}

void list_string_size() {
    List<String> l = new List<String>();
    assertEqual(0, l.size());
    l.append("fdsa");
    assertEqual(1, l.size());
}

void list_string_set() {
    List<String> l = new List<String>();
    l.append("a");
    l.append("f");
    l.append("d");
    assertEqual(3, l.size());
    assertEqual("f", l[1]);
    l[1] = "s";
    assertEqual(3, l.size());
    assertEqual("a", l[0]);
    assertEqual("s", l[1]);
    assertEqual("d", l[2]);
}


void list_string_extend() {
    List<String> l = new List<String>();
    List<String> r = new List<String>();
    l.append("asdf");
    r.extend(l);
    l.append("fdsa");
    assertEqual(2, l.size());
    assertEqual(1, r.size());
    assertEqual("asdf", l[0]);
    assertEqual("fdsa", l[1]);
    assertEqual("asdf", r[0]);
}


void list_string_remove() {
    List<String> l = new List<String>();
    l.append("a");
    l.append("d");
    l.append("s");
    assertEqual(3, l.size());
    assertEqual("d", l[1]);
    String act = l.remove(1);
    assertEqual(2, l.size());
    assertEqual("a", l[0]);
    assertEqual("s", l[1]);
    assertEqual("d", act);
}
