
void test_Map_Scalar_Map_float_String___1061() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    
    Map<float,String> value_vtmp0 = {};
    Map<Scalar,Map<float,String>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    
    Map<float,String> copy_vtmp0 = {};
    Map<Scalar,Map<float,String>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(1).asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    String other_vtmp0_vtmp0 = "pi";
    Map<float,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    float other_vtmp1_ktmp0 = -0.0;
    String other_vtmp1_vtmp0 = "pie";
    float other_vtmp1_ktmp1 = 3.14;
    String other_vtmp1_vtmp1 = " ";
    Map<float,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,String>>: {<__main__.Scalar object at 0x7f9dce0f0510>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,String>>: {<__main__.Scalar object at 0x7f9dce0f0510>: {}} {<__main__.Scalar object at 0x7f9dce0f0550>: {0.0: \"pi\"}, <__main__.Scalar object at 0x7f9dce0f0590>: {-0.0: \"pie\", 3.14: \" \"}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_String___1062() {
    Scalar value_ktmp0 = unsafe(1).asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    String value_vtmp0_vtmp0 = "pi";
    Map<float,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    float value_vtmp1_ktmp0 = -0.0;
    String value_vtmp1_vtmp0 = "pie";
    float value_vtmp1_ktmp1 = 3.14;
    String value_vtmp1_vtmp1 = " ";
    Map<float,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(1).asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    String copy_vtmp0_vtmp0 = "pi";
    Map<float,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    float copy_vtmp1_ktmp0 = -0.0;
    String copy_vtmp1_vtmp0 = "pie";
    float copy_vtmp1_ktmp1 = 3.14;
    String copy_vtmp1_vtmp1 = " ";
    Map<float,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,String>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,String>>: {<__main__.Scalar object at 0x7f9dce0f0550>: {0.0: \"pi\"}, <__main__.Scalar object at 0x7f9dce0f0590>: {-0.0: \"pie\", 3.14: \" \"}}");
    assert(!(value == other), "different Map<Scalar,Map<float,String>>: {<__main__.Scalar object at 0x7f9dce0f0550>: {0.0: \"pi\"}, <__main__.Scalar object at 0x7f9dce0f0590>: {-0.0: \"pie\", 3.14: \" \"}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Scalar___1063() {
    
    Map<Scalar,Map<float,Scalar>> value = {};
    
    Map<Scalar,Map<float,Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe(" ").asScalar();
    
    Map<float,Scalar> other_vtmp0 = {};
    Map<Scalar,Map<float,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,Scalar>>: {} {<__main__.Scalar object at 0x7f9dce0f05d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Scalar___1064() {
    Scalar value_ktmp0 = unsafe(" ").asScalar();
    
    Map<float,Scalar> value_vtmp0 = {};
    Map<Scalar,Map<float,Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(" ").asScalar();
    
    Map<float,Scalar> copy_vtmp0 = {};
    Map<Scalar,Map<float,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    Scalar other_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(2).asScalar();
    float other_vtmp1_ktmp0 = -0.0;
    Scalar other_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float other_vtmp1_ktmp1 = 3.14;
    Scalar other_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f05d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f05d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0610>: {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, <__main__.Scalar object at 0x7f9dce0f0650>: {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Scalar___1065() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    Scalar value_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(2).asScalar();
    float value_vtmp1_ktmp0 = -0.0;
    Scalar value_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float value_vtmp1_ktmp1 = 3.14;
    Scalar value_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    Scalar copy_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(2).asScalar();
    float copy_vtmp1_ktmp0 = -0.0;
    Scalar copy_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float copy_vtmp1_ktmp1 = 3.14;
    Scalar copy_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,Scalar>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0610>: {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, <__main__.Scalar object at 0x7f9dce0f0650>: {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}}");
    assert(!(value == other), "different Map<Scalar,Map<float,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0610>: {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, <__main__.Scalar object at 0x7f9dce0f0650>: {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Any___1066() {
    
    Map<Scalar,Map<float,Any>> value = {};
    
    Map<Scalar,Map<float,Any>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,Any> other_vtmp0 = {};
    Map<Scalar,Map<float,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,Any>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,Any>>: {} {<__main__.Scalar object at 0x7f9dce0f0690>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Any___1067() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,Any> value_vtmp0 = {};
    Map<Scalar,Map<float,Any>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,Any> copy_vtmp0 = {};
    Map<Scalar,Map<float,Any>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("\n").asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    int other_vtmp0_vtmp0_tmp = -3;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<float,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(true).asScalar();
    float other_vtmp1_ktmp0 = -0.0;
    bool other_vtmp1_vtmp0_tmp = false;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    float other_vtmp1_ktmp1 = 3.14;
    int other_vtmp1_vtmp1_tmp = 2147483648;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<float,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,Any>>: {<__main__.Scalar object at 0x7f9dce0f0690>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,Any>>: {<__main__.Scalar object at 0x7f9dce0f0690>: {}} {<__main__.Scalar object at 0x7f9dce0f06d0>: {0.0: unsafe(-3)}, <__main__.Scalar object at 0x7f9dce0f0710>: {-0.0: unsafe(false), 3.14: unsafe(2147483648)}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_Any___1068() {
    Scalar value_ktmp0 = unsafe("\n").asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    int value_vtmp0_vtmp0_tmp = -3;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<float,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(true).asScalar();
    float value_vtmp1_ktmp0 = -0.0;
    bool value_vtmp1_vtmp0_tmp = false;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    float value_vtmp1_ktmp1 = 3.14;
    int value_vtmp1_vtmp1_tmp = 2147483648;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<float,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("\n").asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    int copy_vtmp0_vtmp0_tmp = -3;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<float,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    float copy_vtmp1_ktmp0 = -0.0;
    bool copy_vtmp1_vtmp0_tmp = false;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    float copy_vtmp1_ktmp1 = 3.14;
    int copy_vtmp1_vtmp1_tmp = 2147483648;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<float,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,Any>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,Any>>: {<__main__.Scalar object at 0x7f9dce0f06d0>: {0.0: unsafe(-3)}, <__main__.Scalar object at 0x7f9dce0f0710>: {-0.0: unsafe(false), 3.14: unsafe(2147483648)}}");
    assert(!(value == other), "different Map<Scalar,Map<float,Any>>: {<__main__.Scalar object at 0x7f9dce0f06d0>: {0.0: unsafe(-3)}, <__main__.Scalar object at 0x7f9dce0f0710>: {-0.0: unsafe(false), 3.14: unsafe(2147483648)}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_bool___1069() {
    
    Map<Scalar,Map<String,bool>> value = {};
    
    Map<Scalar,Map<String,bool>> copy = {};
    Scalar other_ktmp0 = unsafe(3).asScalar();
    
    Map<String,bool> other_vtmp0 = {};
    Map<Scalar,Map<String,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<String,bool>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<String,bool>>: {} {<__main__.Scalar object at 0x7f9dce0f0750>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_String_bool___1070() {
    Scalar value_ktmp0 = unsafe(3).asScalar();
    
    Map<String,bool> value_vtmp0 = {};
    Map<Scalar,Map<String,bool>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3).asScalar();
    
    Map<String,bool> copy_vtmp0 = {};
    Map<Scalar,Map<String,bool>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    String other_vtmp0_ktmp0 = "\n";
    bool other_vtmp0_vtmp0 = false;
    Map<String,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("asdf\n").asScalar();
    String other_vtmp1_ktmp0 = "asdf\n";
    bool other_vtmp1_vtmp0 = true;
    String other_vtmp1_ktmp1 = "";
    bool other_vtmp1_vtmp1 = false;
    Map<String,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<String,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<String,bool>>: {<__main__.Scalar object at 0x7f9dce0f0750>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<String,bool>>: {<__main__.Scalar object at 0x7f9dce0f0750>: {}} {<__main__.Scalar object at 0x7f9dce0f0790>: {\"\n\": false}, <__main__.Scalar object at 0x7f9dce0f07d0>: {\"asdf\n\": true, \"\": false}}");
    assertEqual(true, true);
}
        