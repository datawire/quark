
void test_Map_String_Map_float_float___951() {
    String value_ktmp0 = " ";
    float value_vtmp0_ktmp0 = 0.0;
    float value_vtmp0_vtmp0 = -0.0;
    Map<float,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    String value_ktmp1 = "\n";
    float value_vtmp1_ktmp0 = 3.14;
    float value_vtmp1_vtmp0 = -0.0;
    float value_vtmp1_ktmp1 = 0.0;
    float value_vtmp1_vtmp1 = 3.14;
    Map<float,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<String,Map<float,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = " ";
    float copy_vtmp0_ktmp0 = 0.0;
    float copy_vtmp0_vtmp0 = -0.0;
    Map<float,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    String copy_ktmp1 = "\n";
    float copy_vtmp1_ktmp0 = 3.14;
    float copy_vtmp1_vtmp0 = -0.0;
    float copy_vtmp1_ktmp1 = 0.0;
    float copy_vtmp1_vtmp1 = 3.14;
    Map<float,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<String,Map<float,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Map<float,float>> other = {};
    assert(value == copy, "equals Map<String,Map<float,float>>: {\" \": {0.0: -0.0}, \"\n\": {3.14: -0.0, 0.0: 3.14}}");
    assert(!(value == other), "different Map<String,Map<float,float>>: {\" \": {0.0: -0.0}, \"\n\": {3.14: -0.0, 0.0: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_float_String___952() {
    
    Map<String,Map<float,String>> value = {};
    
    Map<String,Map<float,String>> copy = {};
    String other_ktmp0 = "asdf\n";
    
    Map<float,String> other_vtmp0 = {};
    Map<String,Map<float,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Map<float,String>>: {}");
    assert(!(value == other), "different Map<String,Map<float,String>>: {} {\"asdf\n\": {}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_float_String___953() {
    String value_ktmp0 = "asdf\n";
    
    Map<float,String> value_vtmp0 = {};
    Map<String,Map<float,String>> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "asdf\n";
    
    Map<float,String> copy_vtmp0 = {};
    Map<String,Map<float,String>> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "";
    float other_vtmp0_ktmp0 = 0.0;
    String other_vtmp0_vtmp0 = "pi";
    Map<float,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    String other_ktmp1 = "Hello World!";
    float other_vtmp1_ktmp0 = -0.0;
    String other_vtmp1_vtmp0 = "pie";
    float other_vtmp1_ktmp1 = 3.14;
    String other_vtmp1_vtmp1 = " ";
    Map<float,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<String,Map<float,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Map<float,String>>: {\"asdf\n\": {}}");
    assert(!(value == other), "different Map<String,Map<float,String>>: {\"asdf\n\": {}} {\"\": {0.0: \"pi\"}, \"Hello World!\": {-0.0: \"pie\", 3.14: \" \"}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_float_String___954() {
    String value_ktmp0 = "";
    float value_vtmp0_ktmp0 = 0.0;
    String value_vtmp0_vtmp0 = "pi";
    Map<float,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    String value_ktmp1 = "Hello World!";
    float value_vtmp1_ktmp0 = -0.0;
    String value_vtmp1_vtmp0 = "pie";
    float value_vtmp1_ktmp1 = 3.14;
    String value_vtmp1_vtmp1 = " ";
    Map<float,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<String,Map<float,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "";
    float copy_vtmp0_ktmp0 = 0.0;
    String copy_vtmp0_vtmp0 = "pi";
    Map<float,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    String copy_ktmp1 = "Hello World!";
    float copy_vtmp1_ktmp0 = -0.0;
    String copy_vtmp1_vtmp0 = "pie";
    float copy_vtmp1_ktmp1 = 3.14;
    String copy_vtmp1_vtmp1 = " ";
    Map<float,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<String,Map<float,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Map<float,String>> other = {};
    assert(value == copy, "equals Map<String,Map<float,String>>: {\"\": {0.0: \"pi\"}, \"Hello World!\": {-0.0: \"pie\", 3.14: \" \"}}");
    assert(!(value == other), "different Map<String,Map<float,String>>: {\"\": {0.0: \"pi\"}, \"Hello World!\": {-0.0: \"pie\", 3.14: \" \"}} {}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_float_Scalar___955() {
    
    Map<String,Map<float,Scalar>> value = {};
    
    Map<String,Map<float,Scalar>> copy = {};
    String other_ktmp0 = "pi";
    
    Map<float,Scalar> other_vtmp0 = {};
    Map<String,Map<float,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Map<float,Scalar>>: {}");
    assert(!(value == other), "different Map<String,Map<float,Scalar>>: {} {\"pi\": {}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_float_Scalar___956() {
    String value_ktmp0 = "pi";
    
    Map<float,Scalar> value_vtmp0 = {};
    Map<String,Map<float,Scalar>> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "pi";
    
    Map<float,Scalar> copy_vtmp0 = {};
    Map<String,Map<float,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "pie";
    float other_vtmp0_ktmp0 = 0.0;
    Scalar other_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    String other_ktmp1 = " ";
    float other_vtmp1_ktmp0 = -0.0;
    Scalar other_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float other_vtmp1_ktmp1 = 3.14;
    Scalar other_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<String,Map<float,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Map<float,Scalar>>: {\"pi\": {}}");
    assert(!(value == other), "different Map<String,Map<float,Scalar>>: {\"pi\": {}} {\"pie\": {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, \" \": {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_float_Scalar___957() {
    String value_ktmp0 = "pie";
    float value_vtmp0_ktmp0 = 0.0;
    Scalar value_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    String value_ktmp1 = " ";
    float value_vtmp1_ktmp0 = -0.0;
    Scalar value_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float value_vtmp1_ktmp1 = 3.14;
    Scalar value_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<String,Map<float,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "pie";
    float copy_vtmp0_ktmp0 = 0.0;
    Scalar copy_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    String copy_ktmp1 = " ";
    float copy_vtmp1_ktmp0 = -0.0;
    Scalar copy_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float copy_vtmp1_ktmp1 = 3.14;
    Scalar copy_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<String,Map<float,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Map<float,Scalar>> other = {};
    assert(value == copy, "equals Map<String,Map<float,Scalar>>: {\"pie\": {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, \" \": {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}}");
    assert(!(value == other), "different Map<String,Map<float,Scalar>>: {\"pie\": {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, \" \": {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}} {}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_float_Any___958() {
    
    Map<String,Map<float,Any>> value = {};
    
    Map<String,Map<float,Any>> copy = {};
    String other_ktmp0 = "\n";
    
    Map<float,Any> other_vtmp0 = {};
    Map<String,Map<float,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Map<float,Any>>: {}");
    assert(!(value == other), "different Map<String,Map<float,Any>>: {} {\"\n\": {}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_float_Any___959() {
    String value_ktmp0 = "\n";
    
    Map<float,Any> value_vtmp0 = {};
    Map<String,Map<float,Any>> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "\n";
    
    Map<float,Any> copy_vtmp0 = {};
    Map<String,Map<float,Any>> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "asdf\n";
    float other_vtmp0_ktmp0 = 0.0;
    int other_vtmp0_vtmp0_tmp = -3;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<float,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    String other_ktmp1 = "";
    float other_vtmp1_ktmp0 = -0.0;
    bool other_vtmp1_vtmp0_tmp = false;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    float other_vtmp1_ktmp1 = 3.14;
    int other_vtmp1_vtmp1_tmp = 2147483648;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<float,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<String,Map<float,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Map<float,Any>>: {\"\n\": {}}");
    assert(!(value == other), "different Map<String,Map<float,Any>>: {\"\n\": {}} {\"asdf\n\": {0.0: unsafe(-3)}, \"\": {-0.0: unsafe(false), 3.14: unsafe(2147483648)}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_float_Any___960() {
    String value_ktmp0 = "asdf\n";
    float value_vtmp0_ktmp0 = 0.0;
    int value_vtmp0_vtmp0_tmp = -3;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<float,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    String value_ktmp1 = "";
    float value_vtmp1_ktmp0 = -0.0;
    bool value_vtmp1_vtmp0_tmp = false;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    float value_vtmp1_ktmp1 = 3.14;
    int value_vtmp1_vtmp1_tmp = 2147483648;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<float,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<String,Map<float,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "asdf\n";
    float copy_vtmp0_ktmp0 = 0.0;
    int copy_vtmp0_vtmp0_tmp = -3;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<float,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    String copy_ktmp1 = "";
    float copy_vtmp1_ktmp0 = -0.0;
    bool copy_vtmp1_vtmp0_tmp = false;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    float copy_vtmp1_ktmp1 = 3.14;
    int copy_vtmp1_vtmp1_tmp = 2147483648;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<float,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<String,Map<float,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Map<float,Any>> other = {};
    assert(value == copy, "equals Map<String,Map<float,Any>>: {\"asdf\n\": {0.0: unsafe(-3)}, \"\": {-0.0: unsafe(false), 3.14: unsafe(2147483648)}}");
    assert(!(value == other), "different Map<String,Map<float,Any>>: {\"asdf\n\": {0.0: unsafe(-3)}, \"\": {-0.0: unsafe(false), 3.14: unsafe(2147483648)}} {}");
    assertEqual(true, true);
}
        