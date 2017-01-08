
void test_Map_String_float__401() {
    String value_ktmp0 = "\n";
    float value_vtmp0 = 0.0;
    Map<String,float> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "\n";
    float copy_vtmp0 = 0.0;
    Map<String,float> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "asdf\n";
    float other_vtmp0 = -0.0;
    String other_ktmp1 = "";
    float other_vtmp1 = 3.14;
    Map<String,float> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,float>: {\"\n\": 0.0}");
    assert(!(value == other), "different Map<String,float>: {\"\n\": 0.0} {\"asdf\n\": -0.0, \"\": 3.14}");
    assertEqual(true, true);
}
        
void test_Map_String_float__402() {
    String value_ktmp0 = "asdf\n";
    float value_vtmp0 = -0.0;
    String value_ktmp1 = "";
    float value_vtmp1 = 3.14;
    Map<String,float> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "asdf\n";
    float copy_vtmp0 = -0.0;
    String copy_ktmp1 = "";
    float copy_vtmp1 = 3.14;
    Map<String,float> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,float> other = {};
    assert(value == copy, "equals Map<String,float>: {\"asdf\n\": -0.0, \"\": 3.14}");
    assert(!(value == other), "different Map<String,float>: {\"asdf\n\": -0.0, \"\": 3.14} {}");
    assertEqual(true, true);
}
        
void test_Map_String_String__403() {
    
    Map<String,String> value = {};
    
    Map<String,String> copy = {};
    String other_ktmp0 = "";
    String other_vtmp0 = "Hello World!";
    Map<String,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,String>: {}");
    assert(!(value == other), "different Map<String,String>: {} {\"\": \"Hello World!\"}");
    assertEqual(true, true);
}
        
void test_Map_String_String__404() {
    String value_ktmp0 = "";
    String value_vtmp0 = "Hello World!";
    Map<String,String> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "";
    String copy_vtmp0 = "Hello World!";
    Map<String,String> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "pi";
    String other_vtmp0 = " ";
    String other_ktmp1 = "pie";
    String other_vtmp1 = "\n";
    Map<String,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,String>: {\"\": \"Hello World!\"}");
    assert(!(value == other), "different Map<String,String>: {\"\": \"Hello World!\"} {\"pi\": \" \", \"pie\": \"\n\"}");
    assertEqual(true, true);
}
        
void test_Map_String_String__405() {
    String value_ktmp0 = "pi";
    String value_vtmp0 = " ";
    String value_ktmp1 = "pie";
    String value_vtmp1 = "\n";
    Map<String,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "pi";
    String copy_vtmp0 = " ";
    String copy_ktmp1 = "pie";
    String copy_vtmp1 = "\n";
    Map<String,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,String> other = {};
    assert(value == copy, "equals Map<String,String>: {\"pi\": \" \", \"pie\": \"\n\"}");
    assert(!(value == other), "different Map<String,String>: {\"pi\": \" \", \"pie\": \"\n\"} {}");
    assertEqual(true, true);
}
        
void test_Map_String_String__406() {
    
    Map<String,String> value = {};
    
    Map<String,String> copy = {};
    String other_ktmp0 = "Hello World!";
    String other_vtmp0 = "pi";
    Map<String,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,String>: {}");
    assert(!(value == other), "different Map<String,String>: {} {\"Hello World!\": \"pi\"}");
    assertEqual(true, true);
}
        
void test_Map_String_String__407() {
    String value_ktmp0 = "Hello World!";
    String value_vtmp0 = "pi";
    Map<String,String> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "Hello World!";
    String copy_vtmp0 = "pi";
    Map<String,String> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "pie";
    String other_vtmp0 = "\n";
    String other_ktmp1 = " ";
    String other_vtmp1 = "asdf\n";
    Map<String,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,String>: {\"Hello World!\": \"pi\"}");
    assert(!(value == other), "different Map<String,String>: {\"Hello World!\": \"pi\"} {\"pie\": \"\n\", \" \": \"asdf\n\"}");
    assertEqual(true, true);
}
        
void test_Map_String_String__408() {
    String value_ktmp0 = "pie";
    String value_vtmp0 = "\n";
    String value_ktmp1 = " ";
    String value_vtmp1 = "asdf\n";
    Map<String,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "pie";
    String copy_vtmp0 = "\n";
    String copy_ktmp1 = " ";
    String copy_vtmp1 = "asdf\n";
    Map<String,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,String> other = {};
    assert(value == copy, "equals Map<String,String>: {\"pie\": \"\n\", \" \": \"asdf\n\"}");
    assert(!(value == other), "different Map<String,String>: {\"pie\": \"\n\", \" \": \"asdf\n\"} {}");
    assertEqual(true, true);
}
        
void test_Map_String_Scalar__409() {
    
    Map<String,Scalar> value = {};
    
    Map<String,Scalar> copy = {};
    String other_ktmp0 = "asdf\n";
    Scalar other_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Scalar>: {}");
    assert(!(value == other), "different Map<String,Scalar>: {} {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}");
    assertEqual(true, true);
}
        
void test_Map_String_Scalar__410() {
    String value_ktmp0 = "asdf\n";
    Scalar value_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "asdf\n";
    Scalar copy_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "";
    Scalar other_vtmp0 = unsafe(0.0).asScalar();
    String other_ktmp1 = "Hello World!";
    Scalar other_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Scalar>: {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}");
    assert(!(value == other), "different Map<String,Scalar>: {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>} {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}");
    assertEqual(true, true);
}
        