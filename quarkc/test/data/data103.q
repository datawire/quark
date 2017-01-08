
void test_Map_Scalar_Map_bool_float___1021() {
    
    Map<Scalar,Map<bool,float>> value = {};
    
    Map<Scalar,Map<bool,float>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<bool,float> other_vtmp0 = {};
    Map<Scalar,Map<bool,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,float>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,float>>: {} {<__main__.Scalar object at 0x7f9dce0f0390>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_float___1022() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<bool,float> value_vtmp0 = {};
    Map<Scalar,Map<bool,float>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<bool,float> copy_vtmp0 = {};
    Map<Scalar,Map<bool,float>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("pi").asScalar();
    bool other_vtmp0_ktmp0 = false;
    float other_vtmp0_vtmp0 = 0.0;
    Map<bool,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(false).asScalar();
    bool other_vtmp1_ktmp0 = true;
    float other_vtmp1_vtmp0 = -0.0;
    bool other_vtmp1_ktmp1 = false;
    float other_vtmp1_vtmp1 = 3.14;
    Map<bool,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<bool,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<bool,float>>: {<__main__.Scalar object at 0x7f9dce0f0390>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,float>>: {<__main__.Scalar object at 0x7f9dce0f0390>: {}} {<__main__.Scalar object at 0x7f9dce0f03d0>: {false: 0.0}, <__main__.Scalar object at 0x7f9dce0f0410>: {true: -0.0, false: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_float___1023() {
    Scalar value_ktmp0 = unsafe("pi").asScalar();
    bool value_vtmp0_ktmp0 = false;
    float value_vtmp0_vtmp0 = 0.0;
    Map<bool,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(false).asScalar();
    bool value_vtmp1_ktmp0 = true;
    float value_vtmp1_vtmp0 = -0.0;
    bool value_vtmp1_ktmp1 = false;
    float value_vtmp1_vtmp1 = 3.14;
    Map<bool,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<bool,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("pi").asScalar();
    bool copy_vtmp0_ktmp0 = false;
    float copy_vtmp0_vtmp0 = 0.0;
    Map<bool,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(false).asScalar();
    bool copy_vtmp1_ktmp0 = true;
    float copy_vtmp1_vtmp0 = -0.0;
    bool copy_vtmp1_ktmp1 = false;
    float copy_vtmp1_vtmp1 = 3.14;
    Map<bool,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<bool,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<bool,float>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<bool,float>>: {<__main__.Scalar object at 0x7f9dce0f03d0>: {false: 0.0}, <__main__.Scalar object at 0x7f9dce0f0410>: {true: -0.0, false: 3.14}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,float>>: {<__main__.Scalar object at 0x7f9dce0f03d0>: {false: 0.0}, <__main__.Scalar object at 0x7f9dce0f0410>: {true: -0.0, false: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_String___1024() {
    
    Map<Scalar,Map<bool,String>> value = {};
    
    Map<Scalar,Map<bool,String>> copy = {};
    Scalar other_ktmp0 = unsafe(0).asScalar();
    
    Map<bool,String> other_vtmp0 = {};
    Map<Scalar,Map<bool,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,String>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,String>>: {} {<__main__.Scalar object at 0x7f9dce0f0450>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_String___1025() {
    Scalar value_ktmp0 = unsafe(0).asScalar();
    
    Map<bool,String> value_vtmp0 = {};
    Map<Scalar,Map<bool,String>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(0).asScalar();
    
    Map<bool,String> copy_vtmp0 = {};
    Map<Scalar,Map<bool,String>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    bool other_vtmp0_ktmp0 = true;
    String other_vtmp0_vtmp0 = "pie";
    Map<bool,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("pie").asScalar();
    bool other_vtmp1_ktmp0 = false;
    String other_vtmp1_vtmp0 = " ";
    bool other_vtmp1_ktmp1 = true;
    String other_vtmp1_vtmp1 = "\n";
    Map<bool,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<bool,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<bool,String>>: {<__main__.Scalar object at 0x7f9dce0f0450>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,String>>: {<__main__.Scalar object at 0x7f9dce0f0450>: {}} {<__main__.Scalar object at 0x7f9dce0f0490>: {true: \"pie\"}, <__main__.Scalar object at 0x7f9dce0f04d0>: {false: \" \", true: \"\n\"}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_String___1026() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    bool value_vtmp0_ktmp0 = true;
    String value_vtmp0_vtmp0 = "pie";
    Map<bool,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("pie").asScalar();
    bool value_vtmp1_ktmp0 = false;
    String value_vtmp1_vtmp0 = " ";
    bool value_vtmp1_ktmp1 = true;
    String value_vtmp1_vtmp1 = "\n";
    Map<bool,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<bool,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    bool copy_vtmp0_ktmp0 = true;
    String copy_vtmp0_vtmp0 = "pie";
    Map<bool,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("pie").asScalar();
    bool copy_vtmp1_ktmp0 = false;
    String copy_vtmp1_vtmp0 = " ";
    bool copy_vtmp1_ktmp1 = true;
    String copy_vtmp1_vtmp1 = "\n";
    Map<bool,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<bool,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<bool,String>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<bool,String>>: {<__main__.Scalar object at 0x7f9dce0f0490>: {true: \"pie\"}, <__main__.Scalar object at 0x7f9dce0f04d0>: {false: \" \", true: \"\n\"}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,String>>: {<__main__.Scalar object at 0x7f9dce0f0490>: {true: \"pie\"}, <__main__.Scalar object at 0x7f9dce0f04d0>: {false: \" \", true: \"\n\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_Scalar___1027() {
    
    Map<Scalar,Map<bool,Scalar>> value = {};
    
    Map<Scalar,Map<bool,Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    
    Map<bool,Scalar> other_vtmp0 = {};
    Map<Scalar,Map<bool,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Scalar>>: {} {<__main__.Scalar object at 0x7f9dce0f0510>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_Scalar___1028() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    
    Map<bool,Scalar> value_vtmp0 = {};
    Map<Scalar,Map<bool,Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    
    Map<bool,Scalar> copy_vtmp0 = {};
    Map<Scalar,Map<bool,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(1).asScalar();
    bool other_vtmp0_ktmp0 = false;
    Scalar other_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    bool other_vtmp1_ktmp0 = true;
    Scalar other_vtmp1_vtmp0 = unsafe(1).asScalar();
    bool other_vtmp1_ktmp1 = false;
    Scalar other_vtmp1_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<bool,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0510>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0510>: {}} {<__main__.Scalar object at 0x7f9dce0f0550>: {false: <__main__.Scalar object at 0x7f9dce0f0510>}, <__main__.Scalar object at 0x7f9dce0f0590>: {true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_Scalar___1029() {
    Scalar value_ktmp0 = unsafe(1).asScalar();
    bool value_vtmp0_ktmp0 = false;
    Scalar value_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    bool value_vtmp1_ktmp0 = true;
    Scalar value_vtmp1_vtmp0 = unsafe(1).asScalar();
    bool value_vtmp1_ktmp1 = false;
    Scalar value_vtmp1_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(1).asScalar();
    bool copy_vtmp0_ktmp0 = false;
    Scalar copy_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_vtmp1_ktmp0 = true;
    Scalar copy_vtmp1_vtmp0 = unsafe(1).asScalar();
    bool copy_vtmp1_ktmp1 = false;
    Scalar copy_vtmp1_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<bool,Scalar>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<bool,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0550>: {false: <__main__.Scalar object at 0x7f9dce0f0510>}, <__main__.Scalar object at 0x7f9dce0f0590>: {true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0550>: {false: <__main__.Scalar object at 0x7f9dce0f0510>}, <__main__.Scalar object at 0x7f9dce0f0590>: {true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_Any___1030() {
    
    Map<Scalar,Map<bool,Any>> value = {};
    
    Map<Scalar,Map<bool,Any>> copy = {};
    Scalar other_ktmp0 = unsafe(" ").asScalar();
    
    Map<bool,Any> other_vtmp0 = {};
    Map<Scalar,Map<bool,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<bool,Any>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Any>>: {} {<__main__.Scalar object at 0x7f9dce0f05d0>: {}}");
    assertEqual(true, true);
}
        