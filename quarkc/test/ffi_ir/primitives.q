class Initialization {
    int fi;
    String fs;
    bool fb;
}

class InitializationTest {
    void locals() {
        int i;
        assertEqual(0, i);
        String s;
        assertEqual("", s);
        bool b;
        assertEqual(false, b);
    }

    void fields() {
        Initialization i = new Initialization();
        assertEqual(0, i.fi);
        assertEqual("", i.fs);
        assertEqual(false, i.fb);
    }
}

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

    void addition() {
        int a = 0;
        assertEqual(1, a+1);
    }

    void subtraction() {
        int a = 0;
        assertEqual(-1, a-1);
    }

    void multiplication() {
        int a = 2;
        int b = 2;
        assertEqual(4, a*b);
    }


    void literal_equal() {
        assertEqual(true, 0 == 0);
        assertEqual(false, 0 == 1);
        assertEqual(false, 1 == 0);
        assertEqual(true, 1 == 1);
    }

    void literal_inequal() {
        assertEqual(false, 0 != 0);
        assertEqual(true, 0 != 1);
        assertEqual(true, 1 != 0);
        assertEqual(false, 1 != 1);
    }

    void literal_addition() {
        assertEqual(0, 0 + 0);
        assertEqual(1, 0 + 1);
        assertEqual(1, 1 + 0);
        assertEqual(2, 1 + 1);
        assertEqual(42, 23 + 19);
    }

    void literal_subtract() {
        assertEqual(0, 0 - 0);
        assertEqual(-1, 0 - 1);
        assertEqual(1, 1 - 0);
        assertEqual(0, 1 - 1);
        assertEqual(42, 64 - 22);
    }

    void negation() {
        int zero = 0;
        assertEqual(0, -zero);
        int one = 1;
        assertEqual(-1, -one);
        int neg = -1;
        assertEqual(1, -neg);
    }

    void ge() {
        assertEqual(true, 0 >= 0);
        assertEqual(true, 1 >= 0);
        assertEqual(false, 0 >= 1);
    }

    void le() {
        assertEqual(true, 0 <= 0);
        assertEqual(false, 1 <= 0);
        assertEqual(true, 0 <= 1);
    }

    void gt() {
        assertEqual(false, 0 > 0);
        assertEqual(true, 1 > 0);
        assertEqual(false, 0 > 1);
    }

    void lt() {
        assertEqual(false, 0 < 0);
        assertEqual(false, 1 < 0);
        assertEqual(true, 0 < 1);
    }

}


class StringTest {
    void concat() {
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

    void substring() {
        assertEqual("abc", "abcdefghi".substring(0, 3));
        assertEqual("def", "abcdefghi".substring(3, 6));
        assertEqual("ghi", "abcdefghi".substring(6, 9));
    }

    void equals() {
        assertEqual(true, "abc" == "abc");
        assertEqual(false, "abc" == "def");
    }

}


Any weirdo();
Any weirdo() for java { return new Object(); }
Any weirdo() for go { return make(chan int, 100) }
Any weirdo() for javascript { return new Buffer("wtf"); }
Any weirdo() for ruby { return Object.new }
Any weirdo() for python { return (None for i in []) }

interface EmptyItf {}
class Something extends EmptyItf {}
class Rainbow {
    bool yes() { return true; }
    bool no() { return false; }
    int zero() { return 0; }
    int seven() { return 7; }
    String emptyStr() { return ""; }
    String haha() { return "haha"; }
    List<int> emptyListInt() { List<int> ret = new List<int>(); return ret; }
    List<int> oneListInt() { List<int> ret = [11]; return ret; }
    Map<int,int> emptyMapIntInt() { Map<int,int> ret = new Map<int,int>(); return ret; }
    Map<int,int> oneMapIntInt() { Map<int,int> ret = {11:22}; return ret; }
    EmptyItf zilch() { EmptyItf ret = null; return ret; }
    EmptyItf something() { EmptyItf ret = new Something(); return ret; }
    Any polkadots() { return weirdo(); }
}

class AnyTest {
    void yes() {
        Any a = unsafe(new Rainbow().yes());
        assertEqual(1, a.type());
        assertEqual(true, a.asBool());
        assertEqual(1, a.asInt());
        assertEqual("true", a.asString());
        assertEqual(null, a.asList());
        assertEqual(null, a.asMap());
    }
    void no() {
        Any a = unsafe(new Rainbow().no());
        assertEqual(1, a.type());
        assertEqual(false, a.asBool());
        assertEqual(0, a.asInt());
        assertEqual("false", a.asString());
        assertEqual(null, a.asList());
        assertEqual(null, a.asMap());
    }
    void zero() {
        Any a = unsafe(new Rainbow().zero());
        assertEqual(1, a.type());
        assertEqual(false, a.asBool());
        assertEqual(0, a.asInt());
        assertEqual("0", a.asString());
        assertEqual(null, a.asList());
        assertEqual(null, a.asMap());
    }
    void seven() {
        Any a = unsafe(new Rainbow().seven());
        assertEqual(1, a.type());
        assertEqual(true, a.asBool());
        assertEqual(7, a.asInt());
        assertEqual("7", a.asString());
        assertEqual(null, a.asList());
        assertEqual(null, a.asMap());
    }
    void emptyStr() {
        Any a = unsafe(new Rainbow().emptyStr());
        assertEqual(1, a.type());
        assertEqual(false, a.asBool());
        assertEqual(0, a.asInt());
        assertEqual("", a.asString());
        assertEqual(null, a.asList());
        assertEqual(null, a.asMap());
    }
    void haha() {
        Any a = unsafe(new Rainbow().haha());
        assertEqual(1, a.type());
        assertEqual(true, a.asBool());
        assertEqual(0, a.asInt());
        assertEqual("haha", a.asString());
        assertEqual(null, a.asList());
        assertEqual(null, a.asMap());
    }
    void emptyListInt() {
        Any a = unsafe(new Rainbow().emptyListInt());
        assertEqual(2, a.type());
        assertEqual(false, a.asBool());
        assertEqual(0, a.asInt());
        assertEqual("", a.asString());
        assertNotEqual(null, a.asList());
        assertEqual(null, a.asMap());
        List<Any> l = a.asList();
        assertEqual(0, l.size());
    }
    void oneListInt() {
        Any a = unsafe(new Rainbow().oneListInt());
        assertEqual(2, a.type());
        assertEqual(false, a.asBool());
        assertEqual(0, a.asInt());
        assertEqual("", a.asString());
        assertNotEqual(null, a.asList());
        assertEqual(null, a.asMap());
        List<Any> l = a.asList();
        assertEqual(1, l.size());
        assertEqual(1, l[0].type());
        assertEqual(11, l[0].asInt());
        assertEqual("11", l[0].asString());
    }
    void emptyMapIntInt() {
        Any a = unsafe(new Rainbow().emptyMapIntInt());
        assertEqual(3, a.type());
        assertEqual(false, a.asBool());
        assertEqual(0, a.asInt());
        assertEqual("", a.asString());
        assertEqual(null, a.asList());
        assertNotEqual(null, a.asMap());
        Map<Scalar,Any> m = a.asMap();
        assertEqual(0, m.size());
    }
    void oneMapIntInt() {
        Any a = unsafe(new Rainbow().oneMapIntInt());
        assertEqual(3, a.type());
        assertEqual(false, a.asBool());
        assertEqual(0, a.asInt());
        assertEqual("", a.asString());
        assertEqual(null, a.asList());
        assertNotEqual(null, a.asMap());
        Map<Scalar,Any> m = a.asMap();
        assertEqual(1, m.size());
        List<Scalar> mk = m.keys();
        assertEqual(1, mk.size());
        assertEqual(11, mk[0]);
        assertEqual(22, m[mk[0]]); // XXX: usability issue, how to conveniently address Map<Scalar,Any>
        // assertEqual(22, m[11]); // XXX: this unfortunately doesn't work.
    }
    void zilch() {
        Any a = unsafe(new Rainbow().zilch());
        assertEqual(0, a.type());
        assertEqual(false, a.asBool());
        assertEqual(0, a.asInt());
        assertEqual("", a.asString());
        assertEqual(null, a.asList());
        assertEqual(null, a.asMap());
    }
    void something() {
        Any a = unsafe(new Rainbow().something());
        assertEqual(-1, a.type()); // XXX: this should change once Any knows about interfaces
        assertEqual(false, a.asBool());
        assertEqual(0, a.asInt());
        assertEqual("", a.asString());
        assertEqual(null, a.asList());
        assertEqual(null, a.asMap());
    }
    void polkadots() {
        Any a = unsafe(new Rainbow().polkadots());
        assertEqual(-1, a.type());
        assertEqual(false, a.asBool());
        assertEqual(0, a.asInt());
        assertEqual("", a.asString());
        assertEqual(null, a.asList());
        assertEqual(null, a.asMap());
    }
}

class MapTestStringString {

    void getset() {
        Map<String,String> m = new Map<String,String>();
        m["asdf"] = "fdsa";
        assertEqual("fdsa", m["asdf"]);
    }

    void size() {
        Map<String,String> m = new Map<String,String>();
        assertEqual(0, m.size());
        m["asdf"] = "fdsa";
        assertEqual(1, m.size());
        m["asdfg"] = "gfdsa";
        assertEqual(2, m.size());
        m["asdf"] = "fdsat";
        assertEqual(2, m.size());
    }

    void no_key() {
        Map<String,String> m = new Map<String,String>();
        assertEqual("", m["asdf"]);
        assertEqual(0, m.size());
    }

    void keys() {
        Map<String,String> m = new Map<String,String>();
        List<String> k1 = m.keys();
        assertEqual(0, k1.size());
        m["asdf"] = "fdsa";
        assertEqual(0, k1.size());
        List<String> k2 = m.keys();
        assertEqual(1, k2.size());
        assertEqual("asdf", k2[0]);
    }

    void remove() {
        Map<String,String> m = new Map<String,String>();
        m["asdf"] = "11";
        m["asdg"] = "12";
        assertEqual("", m.remove("notthere"));
        assertEqual("11", m.remove("asdf"));
        assertEqual("12", m.remove("asdg"));
        assertEqual(0, m.size());
    }

    void contains() {
        Map<String,String> m = new Map<String,String>();
        m["asdf"] = "11";
        m["asdg"] = "12";
        assertEqual(false, m.contains("notthere"));
        assertEqual(true, m.contains("asdf"));
        assertEqual(true, m.contains("asdg"));
    }

    void update() {
        Map<String,String> m = new Map<String,String>();
        m["asdf"] = "11";
        m["asdg"] = "12";
        Map<String,String> n = new Map<String,String>();
        n["asdf"] = "-11";
        n["asdg"] = "-12";
        n.update(m);
        m["notthere"] = "13";
        assertEqual(false, n.contains("notthere"));
        assertEqual("11", n["asdf"]);
        assertEqual("12", n["asdg"]);
    }

    void clear() {
        Map<String,String> m = new Map<String,String>();
        m["asdf"] = "11";
        m["asdg"] = "12";
        m.clear();
        assertEqual(0, m.size());
        assertEqual(0, m.keys().size());
        m["asdf"] = "11";
        assertEqual(1, m.size());
        assertEqual(1, m.keys().size());
    }

}

class MapTestStringInt {
    void getset() {
        Map<String,int> m = new Map<String,int>();
        m["asdf"] = 42;
        assertEqual(42, m["asdf"]);
    }

    void size() {
        Map<String,int> m = new Map<String,int>();
        assertEqual(0, m.size());
        m["asdf"] = 11;
        assertEqual(1, m.size());
        m["asdfg"] = 22;
        assertEqual(2, m.size());
        m["asdf"] = 33;
        assertEqual(2, m.size());
    }

    void no_key() {
        Map<String,int> m = new Map<String,int>();
        assertEqual(0, m["asdf"]);
        assertEqual(0, m.size());
    }

    void keys() {
        Map<String,int> m = new Map<String,int>();
        List<String> k1 = m.keys();
        assertEqual(0, k1.size());
        m["asdf"] = 11;
        assertEqual(0, k1.size());
        List<String> k2 = m.keys();
        assertEqual(1, k2.size());
        assertEqual("asdf", k2[0]);
    }

    void remove() {
        Map<String,int> m = new Map<String,int>();
        m["asdf"] = 11;
        m["asdg"] = 12;
        assertEqual(0, m.remove("notthere"));
        assertEqual(11, m.remove("asdf"));
        assertEqual(12, m.remove("asdg"));
        assertEqual(0, m.size());
    }

    void contains() {
        Map<String,int> m = new Map<String,int>();
        m["asdf"] = 11;
        m["asdg"] = 12;
        assertEqual(false, m.contains("notthere"));
        assertEqual(true, m.contains("asdf"));
        assertEqual(true, m.contains("asdg"));
    }

    void update() {
        Map<String,int> m = new Map<String,int>();
        m["asdf"] = 11;
        m["asdg"] = 12;
        Map<String,int> n = new Map<String,int>();
        n["asdf"] = -11;
        n["asdg"] = -12;
        n.update(m);
        m["notthere"] = 13;
        assertEqual(false, n.contains("notthere"));
        assertEqual(11, n["asdf"]);
        assertEqual(12, n["asdg"]);
    }

    void clear() {
        Map<String,int> m = new Map<String,int>();
        m["asdf"] = 11;
        m["asdg"] = 12;
        m.clear();
        assertEqual(0, m.size());
        assertEqual(0, m.keys().size());
        m["asdf"] = 11;
        assertEqual(1, m.size());
        assertEqual(1, m.keys().size());
    }

}

class ListTestInt {

    void append() {
        List<int> l = new List<int>();
        l.append(3);
        assertEqual(3, l[0]);
    }

    void size() {
        List<int> l = new List<int>();
        assertEqual(0, l.size());
        l.append(3);
        assertEqual(1, l.size());
    }

    void set() {
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

    void extend() {
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

    void remove() {
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
}


class ListTestString {

    void append() {
        List<String> l = new List<String>();
        l.append("fdsa");
        assertEqual("fdsa", l[0]);
    }

    void size() {
        List<String> l = new List<String>();
        assertEqual(0, l.size());
        l.append("fdsa");
        assertEqual(1, l.size());
    }

    void set() {
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

    void extend() {
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

    void remove() {
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
}
