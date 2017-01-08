
void test_Scalar_51() {
    Scalar value = unsafe(1).asScalar();
    Scalar copy = unsafe(1).asScalar();
    Scalar other = unsafe(0.0).asScalar();
    assert(value == copy, "equals Scalar: unsafe(1).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(1).asScalar() unsafe(0.0).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_52() {
    Scalar value = unsafe(-0.0).asScalar();
    Scalar copy = unsafe(-0.0).asScalar();
    Scalar other = unsafe("pie").asScalar();
    assert(value == copy, "equals Scalar: unsafe(-0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-0.0).asScalar() unsafe(\"pie\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_53() {
    Scalar value = unsafe(" ").asScalar();
    Scalar copy = unsafe(" ").asScalar();
    Scalar other = unsafe(true).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\" \").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\" \").asScalar() unsafe(true).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_54() {
    Scalar value = unsafe(false).asScalar();
    Scalar copy = unsafe(false).asScalar();
    Scalar other = unsafe(1).asScalar();
    assert(value == copy, "equals Scalar: unsafe(false).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(false).asScalar() unsafe(1).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_55() {
    Scalar value = unsafe(2).asScalar();
    Scalar copy = unsafe(2).asScalar();
    Scalar other = unsafe(-0.0).asScalar();
    assert(value == copy, "equals Scalar: unsafe(2).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(2).asScalar() unsafe(-0.0).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_56() {
    Scalar value = unsafe(3.14).asScalar();
    Scalar copy = unsafe(3.14).asScalar();
    Scalar other = unsafe(" ").asScalar();
    assert(value == copy, "equals Scalar: unsafe(3.14).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(3.14).asScalar() unsafe(\" \").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_57() {
    Scalar value = unsafe("\n").asScalar();
    Scalar copy = unsafe("\n").asScalar();
    Scalar other = unsafe(false).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"\n\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"\n\").asScalar() unsafe(false).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_58() {
    Scalar value = unsafe(true).asScalar();
    Scalar copy = unsafe(true).asScalar();
    Scalar other = unsafe(2).asScalar();
    assert(value == copy, "equals Scalar: unsafe(true).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(true).asScalar() unsafe(2).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_59() {
    Scalar value = unsafe(3).asScalar();
    Scalar copy = unsafe(3).asScalar();
    Scalar other = unsafe(3.14).asScalar();
    assert(value == copy, "equals Scalar: unsafe(3).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(3).asScalar() unsafe(3.14).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_60() {
    Scalar value = unsafe(0.0).asScalar();
    Scalar copy = unsafe(0.0).asScalar();
    Scalar other = unsafe("\n").asScalar();
    assert(value == copy, "equals Scalar: unsafe(0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(0.0).asScalar() unsafe(\"\n\").asScalar()");
    assertEqual(true, true);
}
        