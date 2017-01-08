
void test_Map_bool_List_float___571() {
    
    Map<bool,List<float>> value = {};
    
    Map<bool,List<float>> copy = {};
    bool other_ktmp0 = false;
    
    List<float> other_vtmp0 = [];
    Map<bool,List<float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,List<float>>: {}");
    assert(!(value == other), "different Map<bool,List<float>>: {} {false: []}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_float___572() {
    bool value_ktmp0 = false;
    
    List<float> value_vtmp0 = [];
    Map<bool,List<float>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    List<float> copy_vtmp0 = [];
    Map<bool,List<float>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    float other_vtmp0_tmp0 = 0.0;
    List<float> other_vtmp0 = [other_vtmp0_tmp0];
    bool other_ktmp1 = false;
    float other_vtmp1_tmp0 = -0.0;
    float other_vtmp1_tmp1 = 3.14;
    List<float> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<bool,List<float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,List<float>>: {false: []}");
    assert(!(value == other), "different Map<bool,List<float>>: {false: []} {true: [0.0], false: [-0.0, 3.14]}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_float___573() {
    bool value_ktmp0 = true;
    float value_vtmp0_tmp0 = 0.0;
    List<float> value_vtmp0 = [value_vtmp0_tmp0];
    bool value_ktmp1 = false;
    float value_vtmp1_tmp0 = -0.0;
    float value_vtmp1_tmp1 = 3.14;
    List<float> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<bool,List<float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    float copy_vtmp0_tmp0 = 0.0;
    List<float> copy_vtmp0 = [copy_vtmp0_tmp0];
    bool copy_ktmp1 = false;
    float copy_vtmp1_tmp0 = -0.0;
    float copy_vtmp1_tmp1 = 3.14;
    List<float> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<bool,List<float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,List<float>> other = {};
    assert(value == copy, "equals Map<bool,List<float>>: {true: [0.0], false: [-0.0, 3.14]}");
    assert(!(value == other), "different Map<bool,List<float>>: {true: [0.0], false: [-0.0, 3.14]} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_String___574() {
    
    Map<bool,List<String>> value = {};
    
    Map<bool,List<String>> copy = {};
    bool other_ktmp0 = true;
    
    List<String> other_vtmp0 = [];
    Map<bool,List<String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,List<String>>: {}");
    assert(!(value == other), "different Map<bool,List<String>>: {} {true: []}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_String___575() {
    bool value_ktmp0 = true;
    
    List<String> value_vtmp0 = [];
    Map<bool,List<String>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    
    List<String> copy_vtmp0 = [];
    Map<bool,List<String>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    String other_vtmp0_tmp0 = "";
    List<String> other_vtmp0 = [other_vtmp0_tmp0];
    bool other_ktmp1 = true;
    String other_vtmp1_tmp0 = "Hello World!";
    String other_vtmp1_tmp1 = "pi";
    List<String> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<bool,List<String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,List<String>>: {true: []}");
    assert(!(value == other), "different Map<bool,List<String>>: {true: []} {false: [\"\"], true: [\"Hello World!\", \"pi\"]}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_String___576() {
    bool value_ktmp0 = false;
    String value_vtmp0_tmp0 = "";
    List<String> value_vtmp0 = [value_vtmp0_tmp0];
    bool value_ktmp1 = true;
    String value_vtmp1_tmp0 = "Hello World!";
    String value_vtmp1_tmp1 = "pi";
    List<String> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<bool,List<String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    String copy_vtmp0_tmp0 = "";
    List<String> copy_vtmp0 = [copy_vtmp0_tmp0];
    bool copy_ktmp1 = true;
    String copy_vtmp1_tmp0 = "Hello World!";
    String copy_vtmp1_tmp1 = "pi";
    List<String> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<bool,List<String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,List<String>> other = {};
    assert(value == copy, "equals Map<bool,List<String>>: {false: [\"\"], true: [\"Hello World!\", \"pi\"]}");
    assert(!(value == other), "different Map<bool,List<String>>: {false: [\"\"], true: [\"Hello World!\", \"pi\"]} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_Scalar___577() {
    
    Map<bool,List<Scalar>> value = {};
    
    Map<bool,List<Scalar>> copy = {};
    bool other_ktmp0 = false;
    
    List<Scalar> other_vtmp0 = [];
    Map<bool,List<Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,List<Scalar>>: {}");
    assert(!(value == other), "different Map<bool,List<Scalar>>: {} {false: []}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_Scalar___578() {
    bool value_ktmp0 = false;
    
    List<Scalar> value_vtmp0 = [];
    Map<bool,List<Scalar>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    List<Scalar> copy_vtmp0 = [];
    Map<bool,List<Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    Scalar other_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> other_vtmp0 = [other_vtmp0_tmp0];
    bool other_ktmp1 = false;
    Scalar other_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar other_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<bool,List<Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,List<Scalar>>: {false: []}");
    assert(!(value == other), "different Map<bool,List<Scalar>>: {false: []} {true: [unsafe(0).asScalar()], false: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_Scalar___579() {
    bool value_ktmp0 = true;
    Scalar value_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> value_vtmp0 = [value_vtmp0_tmp0];
    bool value_ktmp1 = false;
    Scalar value_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar value_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<bool,List<Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    Scalar copy_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> copy_vtmp0 = [copy_vtmp0_tmp0];
    bool copy_ktmp1 = false;
    Scalar copy_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar copy_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<bool,List<Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,List<Scalar>> other = {};
    assert(value == copy, "equals Map<bool,List<Scalar>>: {true: [unsafe(0).asScalar()], false: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]}");
    assert(!(value == other), "different Map<bool,List<Scalar>>: {true: [unsafe(0).asScalar()], false: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_List_Any___580() {
    
    Map<bool,List<Any>> value = {};
    
    Map<bool,List<Any>> copy = {};
    bool other_ktmp0 = true;
    
    List<Any> other_vtmp0 = [];
    Map<bool,List<Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,List<Any>>: {}");
    assert(!(value == other), "different Map<bool,List<Any>>: {} {true: []}");
    assertEqual(true, true);
}
        