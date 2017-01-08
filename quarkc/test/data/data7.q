
void test_Scalar_61() {
    Scalar value = unsafe("asdf\n").asScalar();
    Scalar copy = unsafe("asdf\n").asScalar();
    Scalar other = unsafe(true).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"asdf\n\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"asdf\n\").asScalar() unsafe(true).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_62() {
    Scalar value = unsafe(false).asScalar();
    Scalar copy = unsafe(false).asScalar();
    Scalar other = unsafe(3).asScalar();
    assert(value == copy, "equals Scalar: unsafe(false).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(false).asScalar() unsafe(3).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_63() {
    Scalar value = unsafe(2147483645).asScalar();
    Scalar copy = unsafe(2147483645).asScalar();
    Scalar other = unsafe(0.0).asScalar();
    assert(value == copy, "equals Scalar: unsafe(2147483645).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(2147483645).asScalar() unsafe(0.0).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_64() {
    Scalar value = unsafe(-0.0).asScalar();
    Scalar copy = unsafe(-0.0).asScalar();
    Scalar other = unsafe("asdf\n").asScalar();
    assert(value == copy, "equals Scalar: unsafe(-0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-0.0).asScalar() unsafe(\"asdf\n\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_65() {
    Scalar value = unsafe("").asScalar();
    Scalar copy = unsafe("").asScalar();
    Scalar other = unsafe(false).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"\").asScalar() unsafe(false).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_66() {
    Scalar value = unsafe(true).asScalar();
    Scalar copy = unsafe(true).asScalar();
    Scalar other = unsafe(2147483645).asScalar();
    assert(value == copy, "equals Scalar: unsafe(true).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(true).asScalar() unsafe(2147483645).asScalar()");
    assertEqual(true, true);
}
        
void test_Any_67() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967294;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe(4294967294)");
    assertEqual(true, true);
}
        
void test_Any_68() {
    int value_tmp = 2147483646;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483646;
    Any copy = unsafe(copy_tmp);
    float other_tmp = 0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483646)");
    assert(!(value == other), "different Any: unsafe(2147483646) unsafe(0.0)");
    assertEqual(true, true);
}
        
void test_Any_69() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "Hello World!";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe(\"Hello World!\")");
    assertEqual(true, true);
}
        
void test_Any_70() {
    String value_tmp = "Hello World!";
    Any value = unsafe(value_tmp);
    String copy_tmp = "Hello World!";
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"Hello World!\")");
    assert(!(value == other), "different Any: unsafe(\"Hello World!\") unsafe(false)");
    assertEqual(true, true);
}
        