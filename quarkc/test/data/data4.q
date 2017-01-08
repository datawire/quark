
void test_String_31() {
    String value = " ";
    String copy = " ";
    String other = "pi";
    assert(value == copy, "equals String: \" \"");
    assert(!(value == other), "different String: \" \" \"pi\"");
    assertEqual(true, true);
}
        
void test_String_32() {
    String value = "\n";
    String copy = "\n";
    String other = "pie";
    assert(value == copy, "equals String: \"\n\"");
    assert(!(value == other), "different String: \"\n\" \"pie\"");
    assertEqual(true, true);
}
        
void test_String_33() {
    String value = "asdf\n";
    String copy = "asdf\n";
    String other = " ";
    assert(value == copy, "equals String: \"asdf\n\"");
    assert(!(value == other), "different String: \"asdf\n\" \" \"");
    assertEqual(true, true);
}
        
void test_Scalar_34() {
    Scalar value = unsafe(true).asScalar();
    Scalar copy = unsafe(true).asScalar();
    Scalar other = unsafe(false).asScalar();
    assert(value == copy, "equals Scalar: unsafe(true).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(true).asScalar() unsafe(false).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_35() {
    Scalar value = unsafe(-3).asScalar();
    Scalar copy = unsafe(-3).asScalar();
    Scalar other = unsafe(2147483645).asScalar();
    assert(value == copy, "equals Scalar: unsafe(-3).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-3).asScalar() unsafe(2147483645).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_36() {
    Scalar value = unsafe(0.0).asScalar();
    Scalar copy = unsafe(0.0).asScalar();
    Scalar other = unsafe("").asScalar();
    assert(value == copy, "equals Scalar: unsafe(0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(0.0).asScalar() unsafe(\"\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_37() {
    Scalar value = unsafe("").asScalar();
    Scalar copy = unsafe("").asScalar();
    Scalar other = unsafe(true).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"\").asScalar() unsafe(true).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_38() {
    Scalar value = unsafe(false).asScalar();
    Scalar copy = unsafe(false).asScalar();
    Scalar other = unsafe(true).asScalar();
    assert(value == copy, "equals Scalar: unsafe(false).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(false).asScalar() unsafe(true).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_39() {
    Scalar value = unsafe(-2).asScalar();
    Scalar copy = unsafe(-2).asScalar();
    Scalar other = unsafe(-3).asScalar();
    assert(value == copy, "equals Scalar: unsafe(-2).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-2).asScalar() unsafe(-3).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_40() {
    Scalar value = unsafe(-0.0).asScalar();
    Scalar copy = unsafe(-0.0).asScalar();
    Scalar other = unsafe("").asScalar();
    assert(value == copy, "equals Scalar: unsafe(-0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-0.0).asScalar() unsafe(\"\").asScalar()");
    assertEqual(true, true);
}
        