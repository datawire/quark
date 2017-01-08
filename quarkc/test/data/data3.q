
void test_int_21() {
    int value = 4294967297;
    int copy = 4294967297;
    int other = 2147483647;
    assert(value == copy, "equals int: 4294967297");
    assert(!(value == other), "different int: 4294967297 2147483647");
    assertEqual(true, true);
}
        
void test_int_22() {
    int value = 4294967298;
    int copy = 4294967298;
    int other = 2147483648;
    assert(value == copy, "equals int: 4294967298");
    assert(!(value == other), "different int: 4294967298 2147483648");
    assertEqual(true, true);
}
        
void test_int_23() {
    int value = 4294967299;
    int copy = 4294967299;
    int other = 2147483649;
    assert(value == copy, "equals int: 4294967299");
    assert(!(value == other), "different int: 4294967299 2147483649");
    assertEqual(true, true);
}
        
void test_float_24() {
    float value = 0.0;
    float copy = 0.0;
    float other = 3.14;
    assert(value == copy, "equals float: 0.0");
    assert(!(value == other), "different float: 0.0 3.14");
    assertEqual(true, true);
}
        
void test_float_25() {
    float value = -0.0;
    float copy = -0.0;
    float other = 3.14;
    assert(value == copy, "equals float: -0.0");
    assert(!(value == other), "different float: -0.0 3.14");
    assertEqual(true, true);
}
        
void test_float_26() {
    float value = 3.14;
    float copy = 3.14;
    float other = 0.0;
    assert(value == copy, "equals float: 3.14");
    assert(!(value == other), "different float: 3.14 0.0");
    assertEqual(true, true);
}
        
void test_String_27() {
    String value = "";
    String copy = "";
    String other = "\n";
    assert(value == copy, "equals String: \"\"");
    assert(!(value == other), "different String: \"\" \"\n\"");
    assertEqual(true, true);
}
        
void test_String_28() {
    String value = "Hello World!";
    String copy = "Hello World!";
    String other = "asdf\n";
    assert(value == copy, "equals String: \"Hello World!\"");
    assert(!(value == other), "different String: \"Hello World!\" \"asdf\n\"");
    assertEqual(true, true);
}
        
void test_String_29() {
    String value = "pi";
    String copy = "pi";
    String other = "";
    assert(value == copy, "equals String: \"pi\"");
    assert(!(value == other), "different String: \"pi\" \"\"");
    assertEqual(true, true);
}
        
void test_String_30() {
    String value = "pie";
    String copy = "pie";
    String other = "Hello World!";
    assert(value == copy, "equals String: \"pie\"");
    assert(!(value == other), "different String: \"pie\" \"Hello World!\"");
    assertEqual(true, true);
}
        