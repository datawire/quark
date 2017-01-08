
void test_Map_Scalar_Map_Scalar_Scalar___1101() {
    Scalar value_ktmp0 = unsafe("\n").asScalar();
    Scalar value_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar value_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(true).asScalar();
    Scalar value_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar value_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar value_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar value_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("\n").asScalar();
    Scalar copy_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar copy_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    Scalar copy_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar copy_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar copy_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar copy_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<Scalar,Scalar>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f06d0>: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, <__main__.Scalar object at 0x7f9dce0f0710>: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f06d0>: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, <__main__.Scalar object at 0x7f9dce0f0710>: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_Any___1102() {
    
    Map<Scalar,Map<Scalar,Any>> value = {};
    
    Map<Scalar,Map<Scalar,Any>> copy = {};
    Scalar other_ktmp0 = unsafe(3).asScalar();
    
    Map<Scalar,Any> other_vtmp0 = {};
    Map<Scalar,Map<Scalar,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,Any>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,Any>>: {} {<__main__.Scalar object at 0x7f9dce0f0750>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_Any___1103() {
    Scalar value_ktmp0 = unsafe(3).asScalar();
    
    Map<Scalar,Any> value_vtmp0 = {};
    Map<Scalar,Map<Scalar,Any>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3).asScalar();
    
    Map<Scalar,Any> copy_vtmp0 = {};
    Map<Scalar,Map<Scalar,Any>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    Scalar other_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool other_vtmp0_vtmp0_tmp = true;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("asdf\n").asScalar();
    Scalar other_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int other_vtmp1_vtmp0_tmp = 2147483649;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    Scalar other_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float other_vtmp1_vtmp1_tmp = 3.14;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,Any>>: {<__main__.Scalar object at 0x7f9dce0f0750>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,Any>>: {<__main__.Scalar object at 0x7f9dce0f0750>: {}} {<__main__.Scalar object at 0x7f9dce0f0790>: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, <__main__.Scalar object at 0x7f9dce0f07d0>: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_Any___1104() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    Scalar value_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool value_vtmp0_vtmp0_tmp = true;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("asdf\n").asScalar();
    Scalar value_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int value_vtmp1_vtmp0_tmp = 2147483649;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    Scalar value_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float value_vtmp1_vtmp1_tmp = 3.14;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    Scalar copy_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool copy_vtmp0_vtmp0_tmp = true;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("asdf\n").asScalar();
    Scalar copy_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int copy_vtmp1_vtmp0_tmp = 2147483649;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    Scalar copy_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float copy_vtmp1_vtmp1_tmp = 3.14;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<Scalar,Any>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,Any>>: {<__main__.Scalar object at 0x7f9dce0f0790>: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, <__main__.Scalar object at 0x7f9dce0f07d0>: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,Any>>: {<__main__.Scalar object at 0x7f9dce0f0790>: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, <__main__.Scalar object at 0x7f9dce0f07d0>: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}} {}");
    assertEqual(true, true);
}
        