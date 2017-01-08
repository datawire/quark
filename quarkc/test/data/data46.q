
void test_Map_Scalar_Any__451() {
    
    Map<Scalar,Any> value = {};
    
    Map<Scalar,Any> copy = {};
    Scalar other_ktmp0 = unsafe(0).asScalar();
    bool other_vtmp0_tmp = true;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<Scalar,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Any>: {}");
    assert(!(value == other), "different Map<Scalar,Any>: {} {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Any__452() {
    Scalar value_ktmp0 = unsafe(0).asScalar();
    bool value_vtmp0_tmp = true;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<Scalar,Any> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(0).asScalar();
    bool copy_vtmp0_tmp = true;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<Scalar,Any> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    int other_vtmp0_tmp = 2147483649;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Scalar other_ktmp1 = unsafe("pie").asScalar();
    float other_vtmp1_tmp = 3.14;
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<Scalar,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Any>: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}");
    assert(!(value == other), "different Map<Scalar,Any>: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)} {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Any__453() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    int value_vtmp0_tmp = 2147483649;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Scalar value_ktmp1 = unsafe("pie").asScalar();
    float value_vtmp1_tmp = 3.14;
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<Scalar,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    int copy_vtmp0_tmp = 2147483649;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Scalar copy_ktmp1 = unsafe("pie").asScalar();
    float copy_vtmp1_tmp = 3.14;
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<Scalar,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Any> other = {};
    assert(value == copy, "equals Map<Scalar,Any>: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}");
    assert(!(value == other), "different Map<Scalar,Any>: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Any__454() {
    
    Map<Scalar,Any> value = {};
    
    Map<Scalar,Any> copy = {};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    String other_vtmp0_tmp = "";
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<Scalar,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Any>: {}");
    assert(!(value == other), "different Map<Scalar,Any>: {} {<__main__.Scalar object at 0x7f9dce0f0510>: unsafe(\"\")}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Any__455() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    String value_vtmp0_tmp = "";
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<Scalar,Any> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    String copy_vtmp0_tmp = "";
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<Scalar,Any> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(1).asScalar();
    float other_vtmp0_tmp = -0.0;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    bool other_vtmp1_tmp = true;
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<Scalar,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Any>: {<__main__.Scalar object at 0x7f9dce0f0510>: unsafe(\"\")}");
    assert(!(value == other), "different Map<Scalar,Any>: {<__main__.Scalar object at 0x7f9dce0f0510>: unsafe(\"\")} {<__main__.Scalar object at 0x7f9dce0f0550>: unsafe(-0.0), <__main__.Scalar object at 0x7f9dce0f0590>: unsafe(true)}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Any__456() {
    Scalar value_ktmp0 = unsafe(1).asScalar();
    float value_vtmp0_tmp = -0.0;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    bool value_vtmp1_tmp = true;
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<Scalar,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(1).asScalar();
    float copy_vtmp0_tmp = -0.0;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_vtmp1_tmp = true;
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<Scalar,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Any> other = {};
    assert(value == copy, "equals Map<Scalar,Any>: {<__main__.Scalar object at 0x7f9dce0f0550>: unsafe(-0.0), <__main__.Scalar object at 0x7f9dce0f0590>: unsafe(true)}");
    assert(!(value == other), "different Map<Scalar,Any>: {<__main__.Scalar object at 0x7f9dce0f0550>: unsafe(-0.0), <__main__.Scalar object at 0x7f9dce0f0590>: unsafe(true)} {}");
    assertEqual(true, true);
}
        
void test_List_List_bool___457() {
    
    List<List<bool>> value = [];
    
    List<List<bool>> copy = [];
    
    List<bool> other_tmp0 = [];
    List<List<bool>> other = [other_tmp0];
    assert(value == copy, "equals List<List<bool>>: []");
    assert(!(value == other), "different List<List<bool>>: [] [[]]");
    assertEqual(true, true);
}
        
void test_List_List_bool___458() {
    
    List<bool> value_tmp0 = [];
    List<List<bool>> value = [value_tmp0];
    
    List<bool> copy_tmp0 = [];
    List<List<bool>> copy = [copy_tmp0];
    bool other_tmp0_tmp0 = false;
    List<bool> other_tmp0 = [other_tmp0_tmp0];
    bool other_tmp1_tmp0 = true;
    bool other_tmp1_tmp1 = false;
    List<bool> other_tmp1 = [other_tmp1_tmp0, other_tmp1_tmp1];
    List<List<bool>> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<List<bool>>: [[]]");
    assert(!(value == other), "different List<List<bool>>: [[]] [[false], [true, false]]");
    assertEqual(true, true);
}
        
void test_List_List_bool___459() {
    bool value_tmp0_tmp0 = false;
    List<bool> value_tmp0 = [value_tmp0_tmp0];
    bool value_tmp1_tmp0 = true;
    bool value_tmp1_tmp1 = false;
    List<bool> value_tmp1 = [value_tmp1_tmp0, value_tmp1_tmp1];
    List<List<bool>> value = [value_tmp0, value_tmp1];
    bool copy_tmp0_tmp0 = false;
    List<bool> copy_tmp0 = [copy_tmp0_tmp0];
    bool copy_tmp1_tmp0 = true;
    bool copy_tmp1_tmp1 = false;
    List<bool> copy_tmp1 = [copy_tmp1_tmp0, copy_tmp1_tmp1];
    List<List<bool>> copy = [copy_tmp0, copy_tmp1];
    
    List<List<bool>> other = [];
    assert(value == copy, "equals List<List<bool>>: [[false], [true, false]]");
    assert(!(value == other), "different List<List<bool>>: [[false], [true, false]] []");
    assertEqual(true, true);
}
        
void test_List_List_int___460() {
    
    List<List<int>> value = [];
    
    List<List<int>> copy = [];
    
    List<int> other_tmp0 = [];
    List<List<int>> other = [other_tmp0];
    assert(value == copy, "equals List<List<int>>: []");
    assert(!(value == other), "different List<List<int>>: [] [[]]");
    assertEqual(true, true);
}
        