
void test_Scalar_41() {
    Scalar value = unsafe("Hello World!").asScalar();
    Scalar copy = unsafe("Hello World!").asScalar();
    Scalar other = unsafe(false).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"Hello World!\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"Hello World!\").asScalar() unsafe(false).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_42() {
    Scalar value = unsafe(true).asScalar();
    Scalar copy = unsafe(true).asScalar();
    Scalar other = unsafe(-2).asScalar();
    assert(value == copy, "equals Scalar: unsafe(true).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(true).asScalar() unsafe(-2).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_43() {
    Scalar value = unsafe(-1).asScalar();
    Scalar copy = unsafe(-1).asScalar();
    Scalar other = unsafe(-0.0).asScalar();
    assert(value == copy, "equals Scalar: unsafe(-1).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-1).asScalar() unsafe(-0.0).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_44() {
    Scalar value = unsafe(3.14).asScalar();
    Scalar copy = unsafe(3.14).asScalar();
    Scalar other = unsafe("Hello World!").asScalar();
    assert(value == copy, "equals Scalar: unsafe(3.14).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(3.14).asScalar() unsafe(\"Hello World!\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_45() {
    Scalar value = unsafe("pi").asScalar();
    Scalar copy = unsafe("pi").asScalar();
    Scalar other = unsafe(true).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"pi\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"pi\").asScalar() unsafe(true).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_46() {
    Scalar value = unsafe(false).asScalar();
    Scalar copy = unsafe(false).asScalar();
    Scalar other = unsafe(-1).asScalar();
    assert(value == copy, "equals Scalar: unsafe(false).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(false).asScalar() unsafe(-1).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_47() {
    Scalar value = unsafe(0).asScalar();
    Scalar copy = unsafe(0).asScalar();
    Scalar other = unsafe(3.14).asScalar();
    assert(value == copy, "equals Scalar: unsafe(0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(0).asScalar() unsafe(3.14).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_48() {
    Scalar value = unsafe(0.0).asScalar();
    Scalar copy = unsafe(0.0).asScalar();
    Scalar other = unsafe("pi").asScalar();
    assert(value == copy, "equals Scalar: unsafe(0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(0.0).asScalar() unsafe(\"pi\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_49() {
    Scalar value = unsafe("pie").asScalar();
    Scalar copy = unsafe("pie").asScalar();
    Scalar other = unsafe(false).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"pie\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"pie\").asScalar() unsafe(false).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_50() {
    Scalar value = unsafe(true).asScalar();
    Scalar copy = unsafe(true).asScalar();
    Scalar other = unsafe(0).asScalar();
    assert(value == copy, "equals Scalar: unsafe(true).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(true).asScalar() unsafe(0).asScalar()");
    assertEqual(true, true);
}
        