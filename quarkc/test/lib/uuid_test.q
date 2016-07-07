quark *;
import quark.test;

void main(List<String> args) {
    test.run(args);
}

class UUIDTest {

    int a = "a".ordAt(0);
    int f = "f".ordAt(0);
    int AA = "A".ordAt(0);
    int FF = "F".ordAt(0);
    int zero = "0".ordAt(0);
    int nine = "9".ordAt(0);

    bool isHex(String value, int index) {
        // Assumes ASCII-ish encoding...
        int ordVal = value.ordAt(index);
        return (((a <= ordVal) && (ordVal <= f)) ||
                ((AA <= ordVal) && (ordVal <= FF)) ||
                ((zero <= ordVal) && (ordVal <= nine)));
    }

    void test_uuid() {
        String res = uuid();
        check(res != null, "Expected UUID is not null");
        check(res.size() == 36, "Expected UUID to be 36 characters (" + res.size().toString() + ")");

        int idx = 0;
        while (idx < 36) {
            if ((idx == 8) || (idx == 13) || (idx == 18) || (idx == 23)) {
                check(res.ordAt(idx) == "-".ordAt(0),
                      "Expected UUID[" + idx.toString() + "] to be '-' (" + res + ")");
            } else {
                if (idx == 14) {
                    check(res.ordAt(idx) == "4".ordAt(0),
                          "Expected UUID[" + idx.toString() + "] to be '4' (" + res + ")");
                } else {
                    if (idx == 19) {
                        int ordVal = res.ordAt(idx);
                        check((ordVal == nine - 1) || (ordVal == nine) ||
                              (ordVal == AA) || (ordVal == a) ||
                              (ordVal == AA + 1) || (ordVal == a + 1),
                              "Expected UUID[" + idx.toString() + "] to be hex 8..b (" + res + ")");
                    } else {
                        check(isHex(res, idx), "Expected UUID[" + idx.toString() + "] to be hex (" + res + ")");
                    }
                }
            }
            idx = idx + 1;
        }
    }
}
