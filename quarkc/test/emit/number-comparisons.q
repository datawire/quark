quark *;
String strBool(bool b) {
    return b.toString();
}

void do_byte() {
    print("byte ---");
    byte outer = 0;
    byte inner = 0;

    while (outer < 2) {
        inner = 0;
        while (inner < 2) {
            print(" " + outer.toString() + " == " + inner.toString() + " --> " + strBool(outer == inner));
            print(" " + outer.toString() + " != " + inner.toString() + " --> " + strBool(outer != inner));
            print(" " + outer.toString() + " < " + inner.toString() + " --> " + strBool(outer < inner));
            print(" " + outer.toString() + " > " + inner.toString() + " --> " + strBool(outer > inner));
            print(" " + outer.toString() + " <= " + inner.toString() + " --> " + strBool(outer <= inner));
            print(" " + outer.toString() + " >= " + inner.toString() + " --> " + strBool(outer >= inner));
            inner = (inner + 1).__to_int().__to_byte();
        }
        outer = (outer + 1).__to_int().__to_byte();
    }
}

void do_short() {
    print("short ---");
    short outer = 0;
    short inner = 0;

    while (outer < 2) {
        inner = 0;
        while (inner < 2) {
            print(" " + outer.toString() + " == " + inner.toString() + " --> " + strBool(outer == inner));
            print(" " + outer.toString() + " != " + inner.toString() + " --> " + strBool(outer != inner));
            print(" " + outer.toString() + " < " + inner.toString() + " --> " + strBool(outer < inner));
            print(" " + outer.toString() + " > " + inner.toString() + " --> " + strBool(outer > inner));
            print(" " + outer.toString() + " <= " + inner.toString() + " --> " + strBool(outer <= inner));
            print(" " + outer.toString() + " >= " + inner.toString() + " --> " + strBool(outer >= inner));
            inner = (inner + 1).__to_int().__to_short();
        }
        outer = (outer + 1).__to_int().__to_short();
    }
}

void do_int() {
    print("int ---");
    int outer = 0;
    int inner = 0;

    while (outer < 2) {
        inner = 0;
        while (inner < 2) {
            print(" " + outer.toString() + " == " + inner.toString() + " --> " + strBool(outer == inner));
            print(" " + outer.toString() + " != " + inner.toString() + " --> " + strBool(outer != inner));
            print(" " + outer.toString() + " < " + inner.toString() + " --> " + strBool(outer < inner));
            print(" " + outer.toString() + " > " + inner.toString() + " --> " + strBool(outer > inner));
            print(" " + outer.toString() + " <= " + inner.toString() + " --> " + strBool(outer <= inner));
            print(" " + outer.toString() + " >= " + inner.toString() + " --> " + strBool(outer >= inner));
            inner = inner + 1;
        }
        outer = outer + 1;
    }
}

void do_long() {
    print("long ---");
    long outer = 0;
    long inner = 0;

    while (outer < 2) {
        inner = 0;
        while (inner < 2) {
            print(" " + outer.toString() + " == " + inner.toString() + " --> " + strBool(outer == inner));
            print(" " + outer.toString() + " != " + inner.toString() + " --> " + strBool(outer != inner));
            print(" " + outer.toString() + " < " + inner.toString() + " --> " + strBool(outer < inner));
            print(" " + outer.toString() + " > " + inner.toString() + " --> " + strBool(outer > inner));
            print(" " + outer.toString() + " <= " + inner.toString() + " --> " + strBool(outer <= inner));
            print(" " + outer.toString() + " >= " + inner.toString() + " --> " + strBool(outer >= inner));
            inner = inner + 1;
        }
        outer = outer + 1;
    }
}

String strFloat(float f) {
    if (f == 0.0) {
        return "0";
    }
    return "1";
}

void do_float() {
    print("float ---");
    float outer = 0.0;
    float inner = 0.0;

    while (outer < 2.0) {
        inner = 0.0;
        while (inner < 2.0) {
            print(" " + strFloat(outer) + " == " + strFloat(inner) + " --> " + strBool(outer == inner));
            print(" " + strFloat(outer) + " != " + strFloat(inner) + " --> " + strBool(outer != inner));
            print(" " + strFloat(outer) + " < " + strFloat(inner) + " --> " + strBool(outer < inner));
            print(" " + strFloat(outer) + " > " + strFloat(inner) + " --> " + strBool(outer > inner));
            print(" " + strFloat(outer) + " <= " + strFloat(inner) + " --> " + strBool(outer <= inner));
            print(" " + strFloat(outer) + " >= " + strFloat(inner) + " --> " + strBool(outer >= inner));
            inner = inner + 1.0;
        }
        outer = outer + 1.0;
    }
}

void main(List<String> args) {
    do_byte();
    do_short();
    do_int();
    do_long();
    do_float();
}
