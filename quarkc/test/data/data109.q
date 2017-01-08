
void test_Map_Scalar_Map_String_Scalar___1081() {
    
    Map<Scalar,Map<String,Scalar>> value = {};
    
    Map<Scalar,Map<String,Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    Map<String,Scalar> other_vtmp0 = {};
    Map<Scalar,Map<String,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,Scalar>>: {} {<__main__.Scalar object at 0x7f9dce0f01d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_Scalar___1082() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    
    Map<String,Scalar> value_vtmp0 = {};
    Map<Scalar,Map<String,Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    
    Map<String,Scalar> copy_vtmp0 = {};
    Map<Scalar,Map<String,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(-2).asScalar();
    String other_vtmp0_ktmp0 = "asdf\n";
    Scalar other_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1_ktmp0 = "";
    Scalar other_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String other_vtmp1_ktmp1 = "Hello World!";
    Scalar other_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<String,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<String,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f01d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f01d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0210>: {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}, <__main__.Scalar object at 0x7f9dce0f0290>: {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_Scalar___1083() {
    Scalar value_ktmp0 = unsafe(-2).asScalar();
    String value_vtmp0_ktmp0 = "asdf\n";
    Scalar value_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1_ktmp0 = "";
    Scalar value_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String value_vtmp1_ktmp1 = "Hello World!";
    Scalar value_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<String,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(-2).asScalar();
    String copy_vtmp0_ktmp0 = "asdf\n";
    Scalar copy_vtmp0_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1_ktmp0 = "";
    Scalar copy_vtmp1_vtmp0 = unsafe(0.0).asScalar();
    String copy_vtmp1_ktmp1 = "Hello World!";
    Scalar copy_vtmp1_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<String,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<String,Scalar>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<String,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0210>: {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}, <__main__.Scalar object at 0x7f9dce0f0290>: {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}}");
    assert(!(value == other), "different Map<Scalar,Map<String,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0210>: {\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>}, <__main__.Scalar object at 0x7f9dce0f0290>: {\"\": <__main__.Scalar object at 0x7f9dce0f0790>, \"Hello World!\": <__main__.Scalar object at 0x7f9dce0f07d0>}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_Any___1084() {
    
    Map<Scalar,Map<String,Any>> value = {};
    
    Map<Scalar,Map<String,Any>> copy = {};
    Scalar other_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<String,Any> other_vtmp0 = {};
    Map<Scalar,Map<String,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,Any>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,Any>>: {} {<__main__.Scalar object at 0x7f9dce0f02d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_Any___1085() {
    Scalar value_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<String,Any> value_vtmp0 = {};
    Map<Scalar,Map<String,Any>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<String,Any> copy_vtmp0 = {};
    Map<Scalar,Map<String,Any>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    String other_vtmp0_ktmp0 = "pi";
    float other_vtmp0_vtmp0_tmp = -0.0;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<String,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-1).asScalar();
    String other_vtmp1_ktmp0 = "pie";
    String other_vtmp1_vtmp0_tmp = "pie";
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    String other_vtmp1_ktmp1 = " ";
    float other_vtmp1_vtmp1_tmp = 0.0;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<String,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<String,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<String,Any>>: {<__main__.Scalar object at 0x7f9dce0f02d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,Any>>: {<__main__.Scalar object at 0x7f9dce0f02d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0310>: {\"pi\": unsafe(-0.0)}, <__main__.Scalar object at 0x7f9dce0f0350>: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_Any___1086() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    String value_vtmp0_ktmp0 = "pi";
    float value_vtmp0_vtmp0_tmp = -0.0;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<String,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-1).asScalar();
    String value_vtmp1_ktmp0 = "pie";
    String value_vtmp1_vtmp0_tmp = "pie";
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    String value_vtmp1_ktmp1 = " ";
    float value_vtmp1_vtmp1_tmp = 0.0;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<String,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<String,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    String copy_vtmp0_ktmp0 = "pi";
    float copy_vtmp0_vtmp0_tmp = -0.0;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<String,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-1).asScalar();
    String copy_vtmp1_ktmp0 = "pie";
    String copy_vtmp1_vtmp0_tmp = "pie";
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    String copy_vtmp1_ktmp1 = " ";
    float copy_vtmp1_vtmp1_tmp = 0.0;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<String,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<String,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<String,Any>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<String,Any>>: {<__main__.Scalar object at 0x7f9dce0f0310>: {\"pi\": unsafe(-0.0)}, <__main__.Scalar object at 0x7f9dce0f0350>: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}}");
    assert(!(value == other), "different Map<Scalar,Map<String,Any>>: {<__main__.Scalar object at 0x7f9dce0f0310>: {\"pi\": unsafe(-0.0)}, <__main__.Scalar object at 0x7f9dce0f0350>: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_bool___1087() {
    
    Map<Scalar,Map<Scalar,bool>> value = {};
    
    Map<Scalar,Map<Scalar,bool>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,bool> other_vtmp0 = {};
    Map<Scalar,Map<Scalar,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,bool>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,bool>>: {} {<__main__.Scalar object at 0x7f9dce0f0390>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_bool___1088() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,bool> value_vtmp0 = {};
    Map<Scalar,Map<Scalar,bool>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,bool> copy_vtmp0 = {};
    Map<Scalar,Map<Scalar,bool>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("pi").asScalar();
    Scalar other_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool other_vtmp0_vtmp0 = true;
    Map<Scalar,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(false).asScalar();
    Scalar other_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool other_vtmp1_vtmp0 = false;
    Scalar other_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool other_vtmp1_vtmp1 = true;
    Map<Scalar,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,bool>>: {<__main__.Scalar object at 0x7f9dce0f0390>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,bool>>: {<__main__.Scalar object at 0x7f9dce0f0390>: {}} {<__main__.Scalar object at 0x7f9dce0f03d0>: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, <__main__.Scalar object at 0x7f9dce0f0410>: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_bool___1089() {
    Scalar value_ktmp0 = unsafe("pi").asScalar();
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool value_vtmp0_vtmp0 = true;
    Map<Scalar,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(false).asScalar();
    Scalar value_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool value_vtmp1_vtmp0 = false;
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool value_vtmp1_vtmp1 = true;
    Map<Scalar,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("pi").asScalar();
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool copy_vtmp0_vtmp0 = true;
    Map<Scalar,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(false).asScalar();
    Scalar copy_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool copy_vtmp1_vtmp0 = false;
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_vtmp1_vtmp1 = true;
    Map<Scalar,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<Scalar,bool>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,bool>>: {<__main__.Scalar object at 0x7f9dce0f03d0>: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, <__main__.Scalar object at 0x7f9dce0f0410>: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,bool>>: {<__main__.Scalar object at 0x7f9dce0f03d0>: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, <__main__.Scalar object at 0x7f9dce0f0410>: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_int___1090() {
    
    Map<Scalar,Map<Scalar,int>> value = {};
    
    Map<Scalar,Map<Scalar,int>> copy = {};
    Scalar other_ktmp0 = unsafe(0).asScalar();
    
    Map<Scalar,int> other_vtmp0 = {};
    Map<Scalar,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,int>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,int>>: {} {<__main__.Scalar object at 0x7f9dce0f0450>: {}}");
    assertEqual(true, true);
}
        