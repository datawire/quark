
void test_Map_Scalar_List_int___1001() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    List<int> value_vtmp0 = [];
    Map<Scalar,List<int>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    List<int> copy_vtmp0 = [];
    Map<Scalar,List<int>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("\n").asScalar();
    int other_vtmp0_tmp0 = -3;
    List<int> other_vtmp0 = [other_vtmp0_tmp0];
    Scalar other_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_tmp0 = -2;
    int other_vtmp1_tmp1 = -1;
    List<int> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<Scalar,List<int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,List<int>>: {<__main__.Scalar object at 0x7f9dce0f0690>: []}");
    assert(!(value == other), "different Map<Scalar,List<int>>: {<__main__.Scalar object at 0x7f9dce0f0690>: []} {<__main__.Scalar object at 0x7f9dce0f06d0>: [-3], <__main__.Scalar object at 0x7f9dce0f0710>: [-2, -1]}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_int___1002() {
    Scalar value_ktmp0 = unsafe("\n").asScalar();
    int value_vtmp0_tmp0 = -3;
    List<int> value_vtmp0 = [value_vtmp0_tmp0];
    Scalar value_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_tmp0 = -2;
    int value_vtmp1_tmp1 = -1;
    List<int> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<Scalar,List<int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("\n").asScalar();
    int copy_vtmp0_tmp0 = -3;
    List<int> copy_vtmp0 = [copy_vtmp0_tmp0];
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_tmp0 = -2;
    int copy_vtmp1_tmp1 = -1;
    List<int> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<Scalar,List<int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,List<int>> other = {};
    assert(value == copy, "equals Map<Scalar,List<int>>: {<__main__.Scalar object at 0x7f9dce0f06d0>: [-3], <__main__.Scalar object at 0x7f9dce0f0710>: [-2, -1]}");
    assert(!(value == other), "different Map<Scalar,List<int>>: {<__main__.Scalar object at 0x7f9dce0f06d0>: [-3], <__main__.Scalar object at 0x7f9dce0f0710>: [-2, -1]} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_float___1003() {
    
    Map<Scalar,List<float>> value = {};
    
    Map<Scalar,List<float>> copy = {};
    Scalar other_ktmp0 = unsafe(3).asScalar();
    
    List<float> other_vtmp0 = [];
    Map<Scalar,List<float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,List<float>>: {}");
    assert(!(value == other), "different Map<Scalar,List<float>>: {} {<__main__.Scalar object at 0x7f9dce0f0750>: []}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_float___1004() {
    Scalar value_ktmp0 = unsafe(3).asScalar();
    
    List<float> value_vtmp0 = [];
    Map<Scalar,List<float>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3).asScalar();
    
    List<float> copy_vtmp0 = [];
    Map<Scalar,List<float>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    float other_vtmp0_tmp0 = 0.0;
    List<float> other_vtmp0 = [other_vtmp0_tmp0];
    Scalar other_ktmp1 = unsafe("asdf\n").asScalar();
    float other_vtmp1_tmp0 = -0.0;
    float other_vtmp1_tmp1 = 3.14;
    List<float> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<Scalar,List<float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,List<float>>: {<__main__.Scalar object at 0x7f9dce0f0750>: []}");
    assert(!(value == other), "different Map<Scalar,List<float>>: {<__main__.Scalar object at 0x7f9dce0f0750>: []} {<__main__.Scalar object at 0x7f9dce0f0790>: [0.0], <__main__.Scalar object at 0x7f9dce0f07d0>: [-0.0, 3.14]}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_float___1005() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    float value_vtmp0_tmp0 = 0.0;
    List<float> value_vtmp0 = [value_vtmp0_tmp0];
    Scalar value_ktmp1 = unsafe("asdf\n").asScalar();
    float value_vtmp1_tmp0 = -0.0;
    float value_vtmp1_tmp1 = 3.14;
    List<float> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<Scalar,List<float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    float copy_vtmp0_tmp0 = 0.0;
    List<float> copy_vtmp0 = [copy_vtmp0_tmp0];
    Scalar copy_ktmp1 = unsafe("asdf\n").asScalar();
    float copy_vtmp1_tmp0 = -0.0;
    float copy_vtmp1_tmp1 = 3.14;
    List<float> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<Scalar,List<float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,List<float>> other = {};
    assert(value == copy, "equals Map<Scalar,List<float>>: {<__main__.Scalar object at 0x7f9dce0f0790>: [0.0], <__main__.Scalar object at 0x7f9dce0f07d0>: [-0.0, 3.14]}");
    assert(!(value == other), "different Map<Scalar,List<float>>: {<__main__.Scalar object at 0x7f9dce0f0790>: [0.0], <__main__.Scalar object at 0x7f9dce0f07d0>: [-0.0, 3.14]} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_String___1006() {
    
    Map<Scalar,List<String>> value = {};
    
    Map<Scalar,List<String>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    List<String> other_vtmp0 = [];
    Map<Scalar,List<String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,List<String>>: {}");
    assert(!(value == other), "different Map<Scalar,List<String>>: {} {<__main__.Scalar object at 0x7f9dce0f0810>: []}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_String___1007() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    
    List<String> value_vtmp0 = [];
    Map<Scalar,List<String>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    
    List<String> copy_vtmp0 = [];
    Map<Scalar,List<String>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(2147483645).asScalar();
    String other_vtmp0_tmp0 = "";
    List<String> other_vtmp0 = [other_vtmp0_tmp0];
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1_tmp0 = "Hello World!";
    String other_vtmp1_tmp1 = "pi";
    List<String> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<Scalar,List<String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,List<String>>: {<__main__.Scalar object at 0x7f9dce0f0810>: []}");
    assert(!(value == other), "different Map<Scalar,List<String>>: {<__main__.Scalar object at 0x7f9dce0f0810>: []} {<__main__.Scalar object at 0x7f9dce0f0850>: [\"\"], <__main__.Scalar object at 0x7f9dce0f0890>: [\"Hello World!\", \"pi\"]}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_String___1008() {
    Scalar value_ktmp0 = unsafe(2147483645).asScalar();
    String value_vtmp0_tmp0 = "";
    List<String> value_vtmp0 = [value_vtmp0_tmp0];
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1_tmp0 = "Hello World!";
    String value_vtmp1_tmp1 = "pi";
    List<String> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<Scalar,List<String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(2147483645).asScalar();
    String copy_vtmp0_tmp0 = "";
    List<String> copy_vtmp0 = [copy_vtmp0_tmp0];
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1_tmp0 = "Hello World!";
    String copy_vtmp1_tmp1 = "pi";
    List<String> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<Scalar,List<String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,List<String>> other = {};
    assert(value == copy, "equals Map<Scalar,List<String>>: {<__main__.Scalar object at 0x7f9dce0f0850>: [\"\"], <__main__.Scalar object at 0x7f9dce0f0890>: [\"Hello World!\", \"pi\"]}");
    assert(!(value == other), "different Map<Scalar,List<String>>: {<__main__.Scalar object at 0x7f9dce0f0850>: [\"\"], <__main__.Scalar object at 0x7f9dce0f0890>: [\"Hello World!\", \"pi\"]} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_Scalar___1009() {
    
    Map<Scalar,List<Scalar>> value = {};
    
    Map<Scalar,List<Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe("").asScalar();
    
    List<Scalar> other_vtmp0 = [];
    Map<Scalar,List<Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,List<Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,List<Scalar>>: {} {<__main__.Scalar object at 0x7f9dce0f08d0>: []}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_Scalar___1010() {
    Scalar value_ktmp0 = unsafe("").asScalar();
    
    List<Scalar> value_vtmp0 = [];
    Map<Scalar,List<Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("").asScalar();
    
    List<Scalar> copy_vtmp0 = [];
    Map<Scalar,List<Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    Scalar other_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> other_vtmp0 = [other_vtmp0_tmp0];
    Scalar other_ktmp1 = unsafe(true).asScalar();
    Scalar other_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar other_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<Scalar,List<Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,List<Scalar>>: {<__main__.Scalar object at 0x7f9dce0f08d0>: []}");
    assert(!(value == other), "different Map<Scalar,List<Scalar>>: {<__main__.Scalar object at 0x7f9dce0f08d0>: []} {<__main__.Scalar object at 0x7f9dce0f0910>: [unsafe(0).asScalar()], <__main__.Scalar object at 0x7f9dce0e4f90>: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]}");
    assertEqual(true, true);
}
        