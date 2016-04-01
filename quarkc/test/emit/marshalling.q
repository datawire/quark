namespace m {
class Inner {
    int inner_int;
    String inner_string;
    float inner_float;
    List<String> inner_string_list;

    Inner setup(int i) {
        float f = i.toFloat();
        self.inner_int = i;
        self.inner_string = "str of " + i.toString();
        self.inner_float = 300.14 + f;
        self.inner_string_list = ["i"];
        return self;
    }
}

class Outer {
    int outer_int;
    String outer_string;
    float outer_float;
    List<Inner> outer_inner_list;

    Outer setup (int i) {
        float f = i.toFloat();
        self.outer_int = i * 10;
        self.outer_string = "str of " + i.toString();
        self.outer_float = 314000.15 + f;
        self.outer_inner_list = [new Inner().setup(i), new Inner().setup(i+42), new Inner().setup(i*42)];
        return self;
    }
}


void test_marshalling() {
    Outer actual = new Outer().setup(101);

    String encoded = toJSON(actual, actual.getClass()).toString();

    print(encoded);

    Outer expected = new Outer();
    fromJSON(expected.getClass(), expected, encoded.parseJSON());
    print(expected.outer_int.toString());
    print(expected.outer_string);
    print(expected.outer_float.toString());
    print(expected.outer_inner_list[1].inner_float.toString());
}
}

void main(List<String> args) {
    m.test_marshalling();
}
