
void test_Any_161() {
    bool value_tmp_ktmp0 = true;
    String value_tmp_vtmp0 = "pie";
    Map<bool,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    String copy_tmp_vtmp0 = "pie";
    Map<bool,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<float,Scalar> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: \"pie\"})");
    assert(!(value == other), "different Any: unsafe({true: \"pie\"}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_162() {
    bool value_tmp_ktmp0 = false;
    String value_tmp_vtmp0 = " ";
    bool value_tmp_ktmp1 = true;
    String value_tmp_vtmp1 = "\n";
    Map<bool,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = false;
    String copy_tmp_vtmp0 = " ";
    bool copy_tmp_ktmp1 = true;
    String copy_tmp_vtmp1 = "\n";
    Map<bool,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    Scalar other_tmp_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({false: \" \", true: \"\n\"})");
    assert(!(value == other), "different Any: unsafe({false: \" \", true: \"\n\"}) unsafe({0.0: <__main__.Scalar object at 0x7f9dce0f0690>})");
    assertEqual(true, true);
}
        
void test_Any_163() {
    
    Map<bool,Scalar> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,Scalar> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = -0.0;
    Scalar other_tmp_vtmp0 = unsafe("\n").asScalar();
    float other_tmp_ktmp1 = 3.14;
    Scalar other_tmp_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>})");
    assertEqual(true, true);
}
        
void test_Any_164() {
    bool value_tmp_ktmp0 = false;
    Scalar value_tmp_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = false;
    Scalar copy_tmp_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<float,Any> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({false: <__main__.Scalar object at 0x7f9dce0f0510>})");
    assert(!(value == other), "different Any: unsafe({false: <__main__.Scalar object at 0x7f9dce0f0510>}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_165() {
    bool value_tmp_ktmp0 = true;
    Scalar value_tmp_vtmp0 = unsafe(1).asScalar();
    bool value_tmp_ktmp1 = false;
    Scalar value_tmp_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    Scalar copy_tmp_vtmp0 = unsafe(1).asScalar();
    bool copy_tmp_ktmp1 = false;
    Scalar copy_tmp_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    int other_tmp_vtmp0_tmp = -3;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Map<float,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>})");
    assert(!(value == other), "different Any: unsafe({true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>}) unsafe({0.0: unsafe(-3)})");
    assertEqual(true, true);
}
        
void test_Any_166() {
    
    Map<bool,Any> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,Any> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = -0.0;
    bool other_tmp_vtmp0_tmp = false;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    float other_tmp_ktmp1 = 3.14;
    int other_tmp_vtmp1_tmp = 2147483648;
    Any other_tmp_vtmp1 = unsafe(other_tmp_vtmp1_tmp);
    Map<float,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({-0.0: unsafe(false), 3.14: unsafe(2147483648)})");
    assertEqual(true, true);
}
        
void test_Any_167() {
    bool value_tmp_ktmp0 = true;
    String value_tmp_vtmp0_tmp = "Hello World!";
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    Map<bool,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    String copy_tmp_vtmp0_tmp = "Hello World!";
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    Map<bool,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<String,bool> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: unsafe(\"Hello World!\")})");
    assert(!(value == other), "different Any: unsafe({true: unsafe(\"Hello World!\")}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_168() {
    bool value_tmp_ktmp0 = false;
    bool value_tmp_vtmp0_tmp = true;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    bool value_tmp_ktmp1 = true;
    bool value_tmp_vtmp1_tmp = true;
    Any value_tmp_vtmp1 = unsafe(value_tmp_vtmp1_tmp);
    Map<bool,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = false;
    bool copy_tmp_vtmp0_tmp = true;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    bool copy_tmp_ktmp1 = true;
    bool copy_tmp_vtmp1_tmp = true;
    Any copy_tmp_vtmp1 = unsafe(copy_tmp_vtmp1_tmp);
    Map<bool,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "\n";
    bool other_tmp_vtmp0 = false;
    Map<String,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({false: unsafe(true), true: unsafe(true)})");
    assert(!(value == other), "different Any: unsafe({false: unsafe(true), true: unsafe(true)}) unsafe({\"\n\": false})");
    assertEqual(true, true);
}
        
void test_Any_169() {
    
    Map<int,bool> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<int,bool> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "asdf\n";
    bool other_tmp_vtmp0 = true;
    String other_tmp_ktmp1 = "";
    bool other_tmp_vtmp1 = false;
    Map<String,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({\"asdf\n\": true, \"\": false})");
    assertEqual(true, true);
}
        
void test_Any_170() {
    int value_tmp_ktmp0 = 3;
    bool value_tmp_vtmp0 = false;
    Map<int,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 3;
    bool copy_tmp_vtmp0 = false;
    Map<int,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<String,int> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({3: false})");
    assert(!(value == other), "different Any: unsafe({3: false}) unsafe({})");
    assertEqual(true, true);
}
        