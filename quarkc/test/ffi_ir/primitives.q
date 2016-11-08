
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
    assertEqual("cde", "abcdefg".substring(2, 5));
}

void map_getset() {
    Map<String,String> m = new Map<String,String>();
    m["asdf"] = "fdsa";
    assertEqual("fdsa", m["asdf"]);
}

void map_size() {
    Map<String,String> m = new Map<String,String>();
    assertEqual(0, m.size());
    m["asdf"] = "fdsa";
    assertEqual(1, m.size());
}

void list_append() {
    List<int> l = new List<int>();
    l.append(3);
    assertEqual(3, l[0]);
}

void list_size() {
    List<int> l = new List<int>();
    assertEqual(0, l.size());
    l.append(3);
    assertEqual(1, l.size());
}
