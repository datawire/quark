
void test_Map_float_List_String___791() {
    float value_ktmp0 = 0.0;
    
    List<String> value_vtmp0 = [];
    Map<float,List<String>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    List<String> copy_vtmp0 = [];
    Map<float,List<String>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    String other_vtmp0_tmp0 = "";
    List<String> other_vtmp0 = [other_vtmp0_tmp0];
    float other_ktmp1 = 3.14;
    String other_vtmp1_tmp0 = "Hello World!";
    String other_vtmp1_tmp1 = "pi";
    List<String> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<float,List<String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,List<String>>: {0.0: []}");
    assert(!(value == other), "different Map<float,List<String>>: {0.0: []} {-0.0: [\"\"], 3.14: [\"Hello World!\", \"pi\"]}");
    assertEqual(true, true);
}
        
void test_Map_float_List_String___792() {
    float value_ktmp0 = -0.0;
    String value_vtmp0_tmp0 = "";
    List<String> value_vtmp0 = [value_vtmp0_tmp0];
    float value_ktmp1 = 3.14;
    String value_vtmp1_tmp0 = "Hello World!";
    String value_vtmp1_tmp1 = "pi";
    List<String> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<float,List<String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    String copy_vtmp0_tmp0 = "";
    List<String> copy_vtmp0 = [copy_vtmp0_tmp0];
    float copy_ktmp1 = 3.14;
    String copy_vtmp1_tmp0 = "Hello World!";
    String copy_vtmp1_tmp1 = "pi";
    List<String> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<float,List<String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,List<String>> other = {};
    assert(value == copy, "equals Map<float,List<String>>: {-0.0: [\"\"], 3.14: [\"Hello World!\", \"pi\"]}");
    assert(!(value == other), "different Map<float,List<String>>: {-0.0: [\"\"], 3.14: [\"Hello World!\", \"pi\"]} {}");
    assertEqual(true, true);
}
        
void test_Map_float_List_Scalar___793() {
    
    Map<float,List<Scalar>> value = {};
    
    Map<float,List<Scalar>> copy = {};
    float other_ktmp0 = 0.0;
    
    List<Scalar> other_vtmp0 = [];
    Map<float,List<Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,List<Scalar>>: {}");
    assert(!(value == other), "different Map<float,List<Scalar>>: {} {0.0: []}");
    assertEqual(true, true);
}
        
void test_Map_float_List_Scalar___794() {
    float value_ktmp0 = 0.0;
    
    List<Scalar> value_vtmp0 = [];
    Map<float,List<Scalar>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    List<Scalar> copy_vtmp0 = [];
    Map<float,List<Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    Scalar other_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> other_vtmp0 = [other_vtmp0_tmp0];
    float other_ktmp1 = 3.14;
    Scalar other_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar other_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<float,List<Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,List<Scalar>>: {0.0: []}");
    assert(!(value == other), "different Map<float,List<Scalar>>: {0.0: []} {-0.0: [unsafe(0).asScalar()], 3.14: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]}");
    assertEqual(true, true);
}
        
void test_Map_float_List_Scalar___795() {
    float value_ktmp0 = -0.0;
    Scalar value_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> value_vtmp0 = [value_vtmp0_tmp0];
    float value_ktmp1 = 3.14;
    Scalar value_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar value_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<float,List<Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    Scalar copy_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> copy_vtmp0 = [copy_vtmp0_tmp0];
    float copy_ktmp1 = 3.14;
    Scalar copy_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar copy_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<float,List<Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,List<Scalar>> other = {};
    assert(value == copy, "equals Map<float,List<Scalar>>: {-0.0: [unsafe(0).asScalar()], 3.14: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]}");
    assert(!(value == other), "different Map<float,List<Scalar>>: {-0.0: [unsafe(0).asScalar()], 3.14: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]} {}");
    assertEqual(true, true);
}
        
void test_Map_float_List_Any___796() {
    
    Map<float,List<Any>> value = {};
    
    Map<float,List<Any>> copy = {};
    float other_ktmp0 = 0.0;
    
    List<Any> other_vtmp0 = [];
    Map<float,List<Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,List<Any>>: {}");
    assert(!(value == other), "different Map<float,List<Any>>: {} {0.0: []}");
    assertEqual(true, true);
}
        
void test_Map_float_List_Any___797() {
    float value_ktmp0 = 0.0;
    
    List<Any> value_vtmp0 = [];
    Map<float,List<Any>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    List<Any> copy_vtmp0 = [];
    Map<float,List<Any>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0_tmp0_tmp = false;
    Any other_vtmp0_tmp0 = unsafe(other_vtmp0_tmp0_tmp);
    List<Any> other_vtmp0 = [other_vtmp0_tmp0];
    float other_ktmp1 = 3.14;
    int other_vtmp1_tmp0_tmp = 2147483646;
    Any other_vtmp1_tmp0 = unsafe(other_vtmp1_tmp0_tmp);
    float other_vtmp1_tmp1_tmp = 3.14;
    Any other_vtmp1_tmp1 = unsafe(other_vtmp1_tmp1_tmp);
    List<Any> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<float,List<Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,List<Any>>: {0.0: []}");
    assert(!(value == other), "different Map<float,List<Any>>: {0.0: []} {-0.0: [unsafe(false)], 3.14: [unsafe(2147483646), unsafe(3.14)]}");
    assertEqual(true, true);
}
        
void test_Map_float_List_Any___798() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0_tmp0_tmp = false;
    Any value_vtmp0_tmp0 = unsafe(value_vtmp0_tmp0_tmp);
    List<Any> value_vtmp0 = [value_vtmp0_tmp0];
    float value_ktmp1 = 3.14;
    int value_vtmp1_tmp0_tmp = 2147483646;
    Any value_vtmp1_tmp0 = unsafe(value_vtmp1_tmp0_tmp);
    float value_vtmp1_tmp1_tmp = 3.14;
    Any value_vtmp1_tmp1 = unsafe(value_vtmp1_tmp1_tmp);
    List<Any> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<float,List<Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0_tmp0_tmp = false;
    Any copy_vtmp0_tmp0 = unsafe(copy_vtmp0_tmp0_tmp);
    List<Any> copy_vtmp0 = [copy_vtmp0_tmp0];
    float copy_ktmp1 = 3.14;
    int copy_vtmp1_tmp0_tmp = 2147483646;
    Any copy_vtmp1_tmp0 = unsafe(copy_vtmp1_tmp0_tmp);
    float copy_vtmp1_tmp1_tmp = 3.14;
    Any copy_vtmp1_tmp1 = unsafe(copy_vtmp1_tmp1_tmp);
    List<Any> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<float,List<Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,List<Any>> other = {};
    assert(value == copy, "equals Map<float,List<Any>>: {-0.0: [unsafe(false)], 3.14: [unsafe(2147483646), unsafe(3.14)]}");
    assert(!(value == other), "different Map<float,List<Any>>: {-0.0: [unsafe(false)], 3.14: [unsafe(2147483646), unsafe(3.14)]} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_bool___799() {
    
    Map<float,Map<bool,bool>> value = {};
    
    Map<float,Map<bool,bool>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<bool,bool> other_vtmp0 = {};
    Map<float,Map<bool,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<bool,bool>>: {}");
    assert(!(value == other), "different Map<float,Map<bool,bool>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_bool___800() {
    float value_ktmp0 = 0.0;
    
    Map<bool,bool> value_vtmp0 = {};
    Map<float,Map<bool,bool>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<bool,bool> copy_vtmp0 = {};
    Map<float,Map<bool,bool>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0_ktmp0 = true;
    bool other_vtmp0_vtmp0 = false;
    Map<bool,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    bool other_vtmp1_ktmp0 = true;
    bool other_vtmp1_vtmp0 = true;
    bool other_vtmp1_ktmp1 = false;
    bool other_vtmp1_vtmp1 = false;
    Map<bool,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<bool,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<bool,bool>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<bool,bool>>: {0.0: {}} {-0.0: {true: false}, 3.14: {true: true, false: false}}");
    assertEqual(true, true);
}
        