
void test_Map_String_Scalar__411() {
    String value_ktmp0 = "";
    Scalar value_vtmp0 = unsafe(0.0).asScalar();
    String value_ktmp1 = "Hello World!";
    Scalar value_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "";
    Scalar copy_vtmp0 = unsafe(0.0).asScalar();
    String copy_ktmp1 = "Hello World!";
    Scalar copy_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Scalar> other = {};
    assert(value == copy, "equals Map<String,Scalar>: {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}");
    assert(!(value == other), "different Map<String,Scalar>: {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>} {}");
    assertEqual(true, true);
}
        
void test_Map_String_Scalar__412() {
    
    Map<String,Scalar> value = {};
    
    Map<String,Scalar> copy = {};
    String other_ktmp0 = "";
    Scalar other_vtmp0 = unsafe(false).asScalar();
    Map<String,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Scalar>: {}");
    assert(!(value == other), "different Map<String,Scalar>: {} {\"\": <__main__.Scalar object at 0x7f9dce0f0810>}");
    assertEqual(true, true);
}
        
void test_Map_String_Scalar__413() {
    String value_ktmp0 = "";
    Scalar value_vtmp0 = unsafe(false).asScalar();
    Map<String,Scalar> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "";
    Scalar copy_vtmp0 = unsafe(false).asScalar();
    Map<String,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "Hello World!";
    Scalar other_vtmp0 = unsafe(2147483645).asScalar();
    String other_ktmp1 = "pi";
    Scalar other_vtmp1 = unsafe(-0.0).asScalar();
    Map<String,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Scalar>: {\"\": <__main__.Scalar object at 0x7f9dce0f0810>}");
    assert(!(value == other), "different Map<String,Scalar>: {\"\": <__main__.Scalar object at 0x7f9dce0f0810>} {\"Hello World!\": <__main__.Scalar object at 0x7f9dce0f0850>, \"pi\": <__main__.Scalar object at 0x7f9dce0f0890>}");
    assertEqual(true, true);
}
        
void test_Map_String_Scalar__414() {
    String value_ktmp0 = "Hello World!";
    Scalar value_vtmp0 = unsafe(2147483645).asScalar();
    String value_ktmp1 = "pi";
    Scalar value_vtmp1 = unsafe(-0.0).asScalar();
    Map<String,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "Hello World!";
    Scalar copy_vtmp0 = unsafe(2147483645).asScalar();
    String copy_ktmp1 = "pi";
    Scalar copy_vtmp1 = unsafe(-0.0).asScalar();
    Map<String,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Scalar> other = {};
    assert(value == copy, "equals Map<String,Scalar>: {\"Hello World!\": <__main__.Scalar object at 0x7f9dce0f0850>, \"pi\": <__main__.Scalar object at 0x7f9dce0f0890>}");
    assert(!(value == other), "different Map<String,Scalar>: {\"Hello World!\": <__main__.Scalar object at 0x7f9dce0f0850>, \"pi\": <__main__.Scalar object at 0x7f9dce0f0890>} {}");
    assertEqual(true, true);
}
        
void test_Map_String_Any__415() {
    
    Map<String,Any> value = {};
    
    Map<String,Any> copy = {};
    String other_ktmp0 = "pi";
    float other_vtmp0_tmp = -0.0;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<String,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Any>: {}");
    assert(!(value == other), "different Map<String,Any>: {} {\"pi\": unsafe(-0.0)}");
    assertEqual(true, true);
}
        
void test_Map_String_Any__416() {
    String value_ktmp0 = "pi";
    float value_vtmp0_tmp = -0.0;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<String,Any> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "pi";
    float copy_vtmp0_tmp = -0.0;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<String,Any> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "pie";
    String other_vtmp0_tmp = "pie";
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    String other_ktmp1 = " ";
    float other_vtmp1_tmp = 0.0;
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<String,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Any>: {\"pi\": unsafe(-0.0)}");
    assert(!(value == other), "different Map<String,Any>: {\"pi\": unsafe(-0.0)} {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}");
    assertEqual(true, true);
}
        
void test_Map_String_Any__417() {
    String value_ktmp0 = "pie";
    String value_vtmp0_tmp = "pie";
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    String value_ktmp1 = " ";
    float value_vtmp1_tmp = 0.0;
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<String,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "pie";
    String copy_vtmp0_tmp = "pie";
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    String copy_ktmp1 = " ";
    float copy_vtmp1_tmp = 0.0;
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<String,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Any> other = {};
    assert(value == copy, "equals Map<String,Any>: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}");
    assert(!(value == other), "different Map<String,Any>: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)} {}");
    assertEqual(true, true);
}
        
void test_Map_String_Any__418() {
    
    Map<String,Any> value = {};
    
    Map<String,Any> copy = {};
    String other_ktmp0 = "pie";
    bool other_vtmp0_tmp = false;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<String,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Any>: {}");
    assert(!(value == other), "different Map<String,Any>: {} {\"pie\": unsafe(false)}");
    assertEqual(true, true);
}
        
void test_Map_String_Any__419() {
    String value_ktmp0 = "pie";
    bool value_vtmp0_tmp = false;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<String,Any> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "pie";
    bool copy_vtmp0_tmp = false;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<String,Any> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = " ";
    int other_vtmp0_tmp = 4294967293;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    String other_ktmp1 = "\n";
    float other_vtmp1_tmp = 3.14;
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<String,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Any>: {\"pie\": unsafe(false)}");
    assert(!(value == other), "different Map<String,Any>: {\"pie\": unsafe(false)} {\" \": unsafe(4294967293), \"\n\": unsafe(3.14)}");
    assertEqual(true, true);
}
        
void test_Map_String_Any__420() {
    String value_ktmp0 = " ";
    int value_vtmp0_tmp = 4294967293;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    String value_ktmp1 = "\n";
    float value_vtmp1_tmp = 3.14;
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<String,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = " ";
    int copy_vtmp0_tmp = 4294967293;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    String copy_ktmp1 = "\n";
    float copy_vtmp1_tmp = 3.14;
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<String,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Any> other = {};
    assert(value == copy, "equals Map<String,Any>: {\" \": unsafe(4294967293), \"\n\": unsafe(3.14)}");
    assert(!(value == other), "different Map<String,Any>: {\" \": unsafe(4294967293), \"\n\": unsafe(3.14)} {}");
    assertEqual(true, true);
}
        