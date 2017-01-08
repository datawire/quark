
void test_Map_String_Map_Scalar_Scalar___991() {
    
    Map<String,Map<Scalar,Scalar>> value = {};
    
    Map<String,Map<Scalar,Scalar>> copy = {};
    String other_ktmp0 = "pie";
    
    Map<Scalar,Scalar> other_vtmp0 = {};
    Map<String,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Map<Scalar,Scalar>>: {}");
    assert(!(value == other), "different Map<String,Map<Scalar,Scalar>>: {} {\"pie\": {}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_Scalar___992() {
    String value_ktmp0 = "pie";
    
    Map<Scalar,Scalar> value_vtmp0 = {};
    Map<String,Map<Scalar,Scalar>> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "pie";
    
    Map<Scalar,Scalar> copy_vtmp0 = {};
    Map<String,Map<Scalar,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = " ";
    Scalar other_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar other_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    String other_ktmp1 = "\n";
    Scalar other_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar other_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar other_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar other_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<String,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Map<Scalar,Scalar>>: {\"pie\": {}}");
    assert(!(value == other), "different Map<String,Map<Scalar,Scalar>>: {\"pie\": {}} {\" \": {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, \"\n\": {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_Scalar___993() {
    String value_ktmp0 = " ";
    Scalar value_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar value_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    String value_ktmp1 = "\n";
    Scalar value_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar value_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar value_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar value_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<String,Map<Scalar,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = " ";
    Scalar copy_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar copy_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    String copy_ktmp1 = "\n";
    Scalar copy_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar copy_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar copy_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar copy_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<String,Map<Scalar,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Map<Scalar,Scalar>> other = {};
    assert(value == copy, "equals Map<String,Map<Scalar,Scalar>>: {\" \": {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, \"\n\": {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}}");
    assert(!(value == other), "different Map<String,Map<Scalar,Scalar>>: {\" \": {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, \"\n\": {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}} {}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_Any___994() {
    
    Map<String,Map<Scalar,Any>> value = {};
    
    Map<String,Map<Scalar,Any>> copy = {};
    String other_ktmp0 = "asdf\n";
    
    Map<Scalar,Any> other_vtmp0 = {};
    Map<String,Map<Scalar,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,Map<Scalar,Any>>: {}");
    assert(!(value == other), "different Map<String,Map<Scalar,Any>>: {} {\"asdf\n\": {}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_Any___995() {
    String value_ktmp0 = "asdf\n";
    
    Map<Scalar,Any> value_vtmp0 = {};
    Map<String,Map<Scalar,Any>> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "asdf\n";
    
    Map<Scalar,Any> copy_vtmp0 = {};
    Map<String,Map<Scalar,Any>> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "";
    Scalar other_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool other_vtmp0_vtmp0_tmp = true;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    String other_ktmp1 = "Hello World!";
    Scalar other_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int other_vtmp1_vtmp0_tmp = 2147483649;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    Scalar other_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float other_vtmp1_vtmp1_tmp = 3.14;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<String,Map<Scalar,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,Map<Scalar,Any>>: {\"asdf\n\": {}}");
    assert(!(value == other), "different Map<String,Map<Scalar,Any>>: {\"asdf\n\": {}} {\"\": {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, \"Hello World!\": {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}}");
    assertEqual(true, true);
}
        
void test_Map_String_Map_Scalar_Any___996() {
    String value_ktmp0 = "";
    Scalar value_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool value_vtmp0_vtmp0_tmp = true;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    String value_ktmp1 = "Hello World!";
    Scalar value_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int value_vtmp1_vtmp0_tmp = 2147483649;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    Scalar value_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float value_vtmp1_vtmp1_tmp = 3.14;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<String,Map<Scalar,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    String copy_ktmp0 = "";
    Scalar copy_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool copy_vtmp0_vtmp0_tmp = true;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    String copy_ktmp1 = "Hello World!";
    Scalar copy_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int copy_vtmp1_vtmp0_tmp = 2147483649;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    Scalar copy_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float copy_vtmp1_vtmp1_tmp = 3.14;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<String,Map<Scalar,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<String,Map<Scalar,Any>> other = {};
    assert(value == copy, "equals Map<String,Map<Scalar,Any>>: {\"\": {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, \"Hello World!\": {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}}");
    assert(!(value == other), "different Map<String,Map<Scalar,Any>>: {\"\": {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, \"Hello World!\": {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_bool___997() {
    
    Map<Scalar,List<bool>> value = {};
    
    Map<Scalar,List<bool>> copy = {};
    Scalar other_ktmp0 = unsafe(" ").asScalar();
    
    List<bool> other_vtmp0 = [];
    Map<Scalar,List<bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,List<bool>>: {}");
    assert(!(value == other), "different Map<Scalar,List<bool>>: {} {<__main__.Scalar object at 0x7f9dce0f05d0>: []}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_bool___998() {
    Scalar value_ktmp0 = unsafe(" ").asScalar();
    
    List<bool> value_vtmp0 = [];
    Map<Scalar,List<bool>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(" ").asScalar();
    
    List<bool> copy_vtmp0 = [];
    Map<Scalar,List<bool>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    bool other_vtmp0_tmp0 = false;
    List<bool> other_vtmp0 = [other_vtmp0_tmp0];
    Scalar other_ktmp1 = unsafe(2).asScalar();
    bool other_vtmp1_tmp0 = true;
    bool other_vtmp1_tmp1 = false;
    List<bool> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<Scalar,List<bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,List<bool>>: {<__main__.Scalar object at 0x7f9dce0f05d0>: []}");
    assert(!(value == other), "different Map<Scalar,List<bool>>: {<__main__.Scalar object at 0x7f9dce0f05d0>: []} {<__main__.Scalar object at 0x7f9dce0f0610>: [false], <__main__.Scalar object at 0x7f9dce0f0650>: [true, false]}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_bool___999() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    bool value_vtmp0_tmp0 = false;
    List<bool> value_vtmp0 = [value_vtmp0_tmp0];
    Scalar value_ktmp1 = unsafe(2).asScalar();
    bool value_vtmp1_tmp0 = true;
    bool value_vtmp1_tmp1 = false;
    List<bool> value_vtmp1 = [value_vtmp1_tmp0, value_vtmp1_tmp1];
    Map<Scalar,List<bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    bool copy_vtmp0_tmp0 = false;
    List<bool> copy_vtmp0 = [copy_vtmp0_tmp0];
    Scalar copy_ktmp1 = unsafe(2).asScalar();
    bool copy_vtmp1_tmp0 = true;
    bool copy_vtmp1_tmp1 = false;
    List<bool> copy_vtmp1 = [copy_vtmp1_tmp0, copy_vtmp1_tmp1];
    Map<Scalar,List<bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,List<bool>> other = {};
    assert(value == copy, "equals Map<Scalar,List<bool>>: {<__main__.Scalar object at 0x7f9dce0f0610>: [false], <__main__.Scalar object at 0x7f9dce0f0650>: [true, false]}");
    assert(!(value == other), "different Map<Scalar,List<bool>>: {<__main__.Scalar object at 0x7f9dce0f0610>: [false], <__main__.Scalar object at 0x7f9dce0f0650>: [true, false]} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_List_int___1000() {
    
    Map<Scalar,List<int>> value = {};
    
    Map<Scalar,List<int>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    List<int> other_vtmp0 = [];
    Map<Scalar,List<int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,List<int>>: {}");
    assert(!(value == other), "different Map<Scalar,List<int>>: {} {<__main__.Scalar object at 0x7f9dce0f0690>: []}");
    assertEqual(true, true);
}
        