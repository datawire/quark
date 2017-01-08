
void test_Any_211() {
    
    Map<String,float> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,float> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "pi";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(\"pi\")");
    assertEqual(true, true);
}
        
void test_Any_212() {
    String value_tmp_ktmp0 = " ";
    float value_tmp_vtmp0 = 0.0;
    Map<String,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = " ";
    float copy_tmp_vtmp0 = 0.0;
    Map<String,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    int other_tmp = -3;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\" \": 0.0})");
    assert(!(value == other), "different Any: unsafe({\" \": 0.0}) unsafe(-3)");
    assertEqual(true, true);
}
        
void test_Any_213() {
    String value_tmp_ktmp0 = "\n";
    float value_tmp_vtmp0 = -0.0;
    String value_tmp_ktmp1 = "asdf\n";
    float value_tmp_vtmp1 = 3.14;
    Map<String,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "\n";
    float copy_tmp_vtmp0 = -0.0;
    String copy_tmp_ktmp1 = "asdf\n";
    float copy_tmp_vtmp1 = 3.14;
    Map<String,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"\n\": -0.0, \"asdf\n\": 3.14})");
    assert(!(value == other), "different Any: unsafe({\"\n\": -0.0, \"asdf\n\": 3.14}) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_214() {
    
    Map<String,String> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,String> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 2147483648;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(2147483648)");
    assertEqual(true, true);
}
        
void test_Any_215() {
    String value_tmp_ktmp0 = "";
    String value_tmp_vtmp0 = "Hello World!";
    Map<String,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "";
    String copy_tmp_vtmp0 = "Hello World!";
    Map<String,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    float other_tmp = -0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"\": \"Hello World!\"})");
    assert(!(value == other), "different Any: unsafe({\"\": \"Hello World!\"}) unsafe(-0.0)");
    assertEqual(true, true);
}
        
void test_Any_216() {
    String value_tmp_ktmp0 = "pi";
    String value_tmp_vtmp0 = " ";
    String value_tmp_ktmp1 = "pie";
    String value_tmp_vtmp1 = "\n";
    Map<String,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "pi";
    String copy_tmp_vtmp0 = " ";
    String copy_tmp_ktmp1 = "pie";
    String copy_tmp_vtmp1 = "\n";
    Map<String,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp = "pie";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"pi\": \" \", \"pie\": \"\n\"})");
    assert(!(value == other), "different Any: unsafe({\"pi\": \" \", \"pie\": \"\n\"}) unsafe(\"pie\")");
    assertEqual(true, true);
}
        
void test_Any_217() {
    
    Map<String,Scalar> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,Scalar> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(0.0)");
    assertEqual(true, true);
}
        
void test_Any_218() {
    String value_tmp_ktmp0 = "asdf\n";
    Scalar value_tmp_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "asdf\n";
    Scalar copy_tmp_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>})");
    assert(!(value == other), "different Any: unsafe({\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_219() {
    String value_tmp_ktmp0 = "";
    Scalar value_tmp_vtmp0 = unsafe(0.0).asScalar();
    String value_tmp_ktmp1 = "Hello World!";
    Scalar value_tmp_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    String copy_tmp_ktmp0 = "";
    Scalar copy_tmp_vtmp0 = unsafe(0.0).asScalar();
    String copy_tmp_ktmp1 = "Hello World!";
    Scalar copy_tmp_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    int other_tmp = 2147483649;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>})");
    assert(!(value == other), "different Any: unsafe({\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}) unsafe(2147483649)");
    assertEqual(true, true);
}
        
void test_Any_220() {
    
    Map<String,Any> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<String,Any> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp = 3.14;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe(3.14)");
    assertEqual(true, true);
}
        