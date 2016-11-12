void boollits() {
    assertEqual(true, !false);
}

void intlits() {
    assertEqual(2, 1+1);
}

void stringlits() {
    assertEqual("two", "t" + "wo");
}

void list_int_empty() {
    List<int> empty_ints = [];
    empty_ints.append(3);
    assertEqual(3, empty_ints[0]);
}

void list_string_empty() {
    List<String> empty_strings = [];
    empty_strings.append("pi");
    assertEqual("pi", empty_strings[0]);
}

void list_int_simple() {
    List<int> l = [1, 2, 3];
    assertEqual(1, l[0]);
    assertEqual(2, l[1]);
    assertEqual(3, l[2]);
}

void list_string_simple() {
    List<String> s = ["one", "two", "three"];
    assertEqual("one", s[0]);
    assertEqual("two", s[1]);
    assertEqual("three", s[2]);
}

// doesn't work yet, need to figure out FFI
/*
void list_int_nested() {
    List<List<int>> l = [[1, 2], [3, 4]];
    assertEqual(1, l[0][0]);
}
*/

List<int> fun(List<int> l) {
    return l;
}

void list_int_nest_literal() {
    List<int> l = fun([1, 2, 3]);
    assertEqual(1, l[0]);
    assertEqual(2, l[1]);
    assertEqual(3, l[2]);
}
