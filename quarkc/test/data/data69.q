
void test_Map_int_List_float___681() {
    int value_ktmp0 = 2147483645;
    float value_vtmp0_tmp0 = 0.0;
    List<float> value_vtmp0 = [value_vtmp0_tmp0];
    int value_ktmp1 = 2147483646;
    float value_vtmp1_tmp0 = -0.0;
    float value_vtmp1_tmp1 = 3.14;
    List<float> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<int,List<float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483645;
    float copy_vtmp0_tmp0 = 0.0;
    List<float> copy_vtmp0 = [copy_vtmp0_tmp0];
    int copy_ktmp1 = 2147483646;
    float copy_vtmp1_tmp0 = -0.0;
    float copy_vtmp1_tmp1 = 3.14;
    List<float> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<int,List<float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,List<float>> other = {};
    assert(value == copy, "equals Map<int,List<float>>: {2147483645: [0.0], 2147483646: [-0.0, 3.14]}");
    assert(!(value == other), "different Map<int,List<float>>: {2147483645: [0.0], 2147483646: [-0.0, 3.14]} {}");
    assertEqual(true, true);
}
        
void test_Map_int_List_String___682() {
    
    Map<int,List<String>> value = {};
    
    Map<int,List<String>> copy = {};
    int other_ktmp0 = 2147483647;
    
    List<String> other_vtmp0 = [];
    Map<int,List<String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,List<String>>: {}");
    assert(!(value == other), "different Map<int,List<String>>: {} {2147483647: []}");
    assertEqual(true, true);
}
        
void test_Map_int_List_String___683() {
    int value_ktmp0 = 2147483647;
    
    List<String> value_vtmp0 = [];
    Map<int,List<String>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 2147483647;
    
    List<String> copy_vtmp0 = [];
    Map<int,List<String>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483648;
    String other_vtmp0_tmp0 = "";
    List<String> other_vtmp0 = [other_vtmp0_tmp0];
    int other_ktmp1 = 2147483649;
    String other_vtmp1_tmp0 = "Hello World!";
    String other_vtmp1_tmp1 = "pi";
    List<String> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<int,List<String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,List<String>>: {2147483647: []}");
    assert(!(value == other), "different Map<int,List<String>>: {2147483647: []} {2147483648: [\"\"], 2147483649: [\"Hello World!\", \"pi\"]}");
    assertEqual(true, true);
}
        
void test_Map_int_List_String___684() {
    int value_ktmp0 = 2147483648;
    String value_vtmp0_tmp0 = "";
    List<String> value_vtmp0 = [value_vtmp0_tmp0];
    int value_ktmp1 = 2147483649;
    String value_vtmp1_tmp0 = "Hello World!";
    String value_vtmp1_tmp1 = "pi";
    List<String> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<int,List<String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483648;
    String copy_vtmp0_tmp0 = "";
    List<String> copy_vtmp0 = [copy_vtmp0_tmp0];
    int copy_ktmp1 = 2147483649;
    String copy_vtmp1_tmp0 = "Hello World!";
    String copy_vtmp1_tmp1 = "pi";
    List<String> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<int,List<String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,List<String>> other = {};
    assert(value == copy, "equals Map<int,List<String>>: {2147483648: [\"\"], 2147483649: [\"Hello World!\", \"pi\"]}");
    assert(!(value == other), "different Map<int,List<String>>: {2147483648: [\"\"], 2147483649: [\"Hello World!\", \"pi\"]} {}");
    assertEqual(true, true);
}
        
void test_Map_int_List_Scalar___685() {
    
    Map<int,List<Scalar>> value = {};
    
    Map<int,List<Scalar>> copy = {};
    int other_ktmp0 = 2147483650;
    
    List<Scalar> other_vtmp0 = [];
    Map<int,List<Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,List<Scalar>>: {}");
    assert(!(value == other), "different Map<int,List<Scalar>>: {} {2147483650: []}");
    assertEqual(true, true);
}
        
void test_Map_int_List_Scalar___686() {
    int value_ktmp0 = 2147483650;
    
    List<Scalar> value_vtmp0 = [];
    Map<int,List<Scalar>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 2147483650;
    
    List<Scalar> copy_vtmp0 = [];
    Map<int,List<Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483651;
    Scalar other_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> other_vtmp0 = [other_vtmp0_tmp0];
    int other_ktmp1 = 4294967293;
    Scalar other_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar other_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<int,List<Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,List<Scalar>>: {2147483650: []}");
    assert(!(value == other), "different Map<int,List<Scalar>>: {2147483650: []} {2147483651: [unsafe(0).asScalar()], 4294967293: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]}");
    assertEqual(true, true);
}
        
void test_Map_int_List_Scalar___687() {
    int value_ktmp0 = 2147483651;
    Scalar value_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> value_vtmp0 = [value_vtmp0_tmp0];
    int value_ktmp1 = 4294967293;
    Scalar value_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar value_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<int,List<Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483651;
    Scalar copy_vtmp0_tmp0 = unsafe(0).asScalar();
    List<Scalar> copy_vtmp0 = [copy_vtmp0_tmp0];
    int copy_ktmp1 = 4294967293;
    Scalar copy_vtmp1_tmp0 = unsafe(0.0).asScalar();
    Scalar copy_vtmp1_tmp1 = unsafe("pie").asScalar();
    List<Scalar> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<int,List<Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,List<Scalar>> other = {};
    assert(value == copy, "equals Map<int,List<Scalar>>: {2147483651: [unsafe(0).asScalar()], 4294967293: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]}");
    assert(!(value == other), "different Map<int,List<Scalar>>: {2147483651: [unsafe(0).asScalar()], 4294967293: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]} {}");
    assertEqual(true, true);
}
        
void test_Map_int_List_Any___688() {
    
    Map<int,List<Any>> value = {};
    
    Map<int,List<Any>> copy = {};
    int other_ktmp0 = 4294967294;
    
    List<Any> other_vtmp0 = [];
    Map<int,List<Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,List<Any>>: {}");
    assert(!(value == other), "different Map<int,List<Any>>: {} {4294967294: []}");
    assertEqual(true, true);
}
        
void test_Map_int_List_Any___689() {
    int value_ktmp0 = 4294967294;
    
    List<Any> value_vtmp0 = [];
    Map<int,List<Any>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 4294967294;
    
    List<Any> copy_vtmp0 = [];
    Map<int,List<Any>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 4294967295;
    bool other_vtmp0_tmp0_tmp = false;
    Any other_vtmp0_tmp0 = unsafe(other_vtmp0_tmp0_tmp);
    List<Any> other_vtmp0 = [other_vtmp0_tmp0];
    int other_ktmp1 = 4294967296;
    int other_vtmp1_tmp0_tmp = 2147483646;
    Any other_vtmp1_tmp0 = unsafe(other_vtmp1_tmp0_tmp);
    float other_vtmp1_tmp1_tmp = 3.14;
    Any other_vtmp1_tmp1 = unsafe(other_vtmp1_tmp1_tmp);
    List<Any> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<int,List<Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,List<Any>>: {4294967294: []}");
    assert(!(value == other), "different Map<int,List<Any>>: {4294967294: []} {4294967295: [unsafe(false)], 4294967296: [unsafe(2147483646), unsafe(3.14)]}");
    assertEqual(true, true);
}
        
void test_Map_int_List_Any___690() {
    int value_ktmp0 = 4294967295;
    bool value_vtmp0_tmp0_tmp = false;
    Any value_vtmp0_tmp0 = unsafe(value_vtmp0_tmp0_tmp);
    List<Any> value_vtmp0 = [value_vtmp0_tmp0];
    int value_ktmp1 = 4294967296;
    int value_vtmp1_tmp0_tmp = 2147483646;
    Any value_vtmp1_tmp0 = unsafe(value_vtmp1_tmp0_tmp);
    float value_vtmp1_tmp1_tmp = 3.14;
    Any value_vtmp1_tmp1 = unsafe(value_vtmp1_tmp1_tmp);
    List<Any> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<int,List<Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 4294967295;
    bool copy_vtmp0_tmp0_tmp = false;
    Any copy_vtmp0_tmp0 = unsafe(copy_vtmp0_tmp0_tmp);
    List<Any> copy_vtmp0 = [copy_vtmp0_tmp0];
    int copy_ktmp1 = 4294967296;
    int copy_vtmp1_tmp0_tmp = 2147483646;
    Any copy_vtmp1_tmp0 = unsafe(copy_vtmp1_tmp0_tmp);
    float copy_vtmp1_tmp1_tmp = 3.14;
    Any copy_vtmp1_tmp1 = unsafe(copy_vtmp1_tmp1_tmp);
    List<Any> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<int,List<Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,List<Any>> other = {};
    assert(value == copy, "equals Map<int,List<Any>>: {4294967295: [unsafe(false)], 4294967296: [unsafe(2147483646), unsafe(3.14)]}");
    assert(!(value == other), "different Map<int,List<Any>>: {4294967295: [unsafe(false)], 4294967296: [unsafe(2147483646), unsafe(3.14)]} {}");
    assertEqual(true, true);
}
        