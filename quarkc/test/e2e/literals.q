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

void list_int_simple() {
    List<int> l = [1, 2, 3];
    assertEqual(1, l[0]);
    assertEqual(2, l[1]);
    assertEqual(3, l[2]);
}

void list_int_nested() {
    List<List<int>> l = [[1, 2], [3, 4]];
    assertEqual(1, l[0][0]);
    assertEqual(2, l[0][1]);
    assertEqual(3, l[1][0]);
    assertEqual(4, l[1][1]);
}

void list_string_empty() {
    List<String> empty_strings = [];
    empty_strings.append("pi");
    assertEqual("pi", empty_strings[0]);
}

void list_string_simple() {
    List<String> s = ["one", "two", "three"];
    assertEqual("one", s[0]);
    assertEqual("two", s[1]);
    assertEqual("three", s[2]);
}

void list_string_nested() {
    List<List<String>> s = [["one", "two"], ["three", "four"]];
    assertEqual("one", s[0][0]);
    assertEqual("two", s[0][1]);
    assertEqual("three", s[1][0]);
    assertEqual("four", s[1][1]);
}

List<int> fun(List<int> l) {
    return l;
}

void list_int_nest_literal() {
    List<int> l = fun([1, 2, 3]);
    assertEqual(1, l[0]);
    assertEqual(2, l[1]);
    assertEqual(3, l[2]);
}

class Foo {}

void list_foo_empty() {
    List<Foo> empty_foos = [];
    Foo foo = new Foo();
    empty_foos.append(foo);
    assertEqual(foo, empty_foos[0]);
}

void list_foo_simple() {
    Foo first = new Foo();
    Foo second = new Foo();
    Foo third = new Foo();
    List<Foo> foos = [first, second, third];
    assertEqual(first, foos[0]);
    assertEqual(second, foos[1]);
    assertEqual(third, foos[2]);
}

void list_foo_nested() {
    Foo first = new Foo();
    Foo second = new Foo();
    Foo third = new Foo();
    Foo fourth = new Foo();

    List<List<Foo>> foos = [[first, second], [third, fourth]];

    assertEqual(first, foos[0][0]);
    assertEqual(second, foos[0][1]);
    assertEqual(third, foos[1][0]);
    assertEqual(fourth, foos[1][1]);
}

void map_String_int_empty() {
    Map<String,int> m = {};
    assertEqual(0, m.size());
    m["pi"] = 3;
    assertEqual(1, m.size());
    assertEqual(3, m["pi"]);
}

void map_String_int_nested() {
    Map<String,Map<String,int>> m = {"first": {"one": 1, "two": 2}, "second": {"three": 3, "four": 4}};
    assertEqual(2, m.size());
    assertEqual(2, m["first"].size());
    assertEqual(2, m["second"].size());
    assertEqual(1, m["first"]["one"]);
    assertEqual(2, m["first"]["two"]);
    assertEqual(3, m["second"]["three"]);
    assertEqual(4, m["second"]["four"]);
}

void map_String_int_simple() {
    Map<String,int> m = {"pi": 3, "e": 2};
    assertEqual(2, m.size());
    assertEqual(3, m["pi"]);
    assertEqual(2, m["e"]);
}

void map_String_String_empty() {
    Map<String,String> m = {};
    assertEqual(0, m.size());
    m["pi"] = "blueberry";
    assertEqual(1, m.size());
    assertEqual("blueberry", m["pi"]);
}

void map_String_String_simple() {
    Map<String,String> m = {"pi": "blueberry", "e": "euler"};
    assertEqual(2, m.size());
    assertEqual("blueberry", m["pi"]);
    assertEqual("euler", m["e"]);
}
