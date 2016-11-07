
void integers() {
    int a = 0;
    assertEqual(1, a+1);
    assertEqual(-1, a-1);
    assertEqual(0, a*2);
}

void strings() {
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

void maps() {
    Map<String,String> m = new Map<String,String>();
    m["asdf"] = "fdsa";
    assertEqual("fdsa", m["asdf"]);
}

void lists() {
    List<int> l = new List<int>();
    l.append(3);
    assertEqual(3, l[0]);
}
