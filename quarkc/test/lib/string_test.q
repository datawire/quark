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

}
