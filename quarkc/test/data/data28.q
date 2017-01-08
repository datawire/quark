
void test_List_Any__271() {
    
    List<Any> value = [];
    
    List<Any> copy = [];
    bool other_tmp0_tmp = false;
    Any other_tmp0 = unsafe(other_tmp0_tmp);
    List<Any> other = [other_tmp0];
    assert(value == copy, "equals List<Any>: []");
    assert(!(value == other), "different List<Any>: [] [unsafe(false)]");
    assertEqual(true, true);
}
        
void test_List_Any__272() {
    bool value_tmp0_tmp = false;
    Any value_tmp0 = unsafe(value_tmp0_tmp);
    List<Any> value = [value_tmp0];
    bool copy_tmp0_tmp = false;
    Any copy_tmp0 = unsafe(copy_tmp0_tmp);
    List<Any> copy = [copy_tmp0];
    int other_tmp0_tmp = 2147483646;
    Any other_tmp0 = unsafe(other_tmp0_tmp);
    float other_tmp1_tmp = 3.14;
    Any other_tmp1 = unsafe(other_tmp1_tmp);
    List<Any> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Any>: [unsafe(false)]");
    assert(!(value == other), "different List<Any>: [unsafe(false)] [unsafe(2147483646), unsafe(3.14)]");
    assertEqual(true, true);
}
        
void test_List_Any__273() {
    int value_tmp0_tmp = 2147483646;
    Any value_tmp0 = unsafe(value_tmp0_tmp);
    float value_tmp1_tmp = 3.14;
    Any value_tmp1 = unsafe(value_tmp1_tmp);
    List<Any> value = [value_tmp0, value_tmp1];
    int copy_tmp0_tmp = 2147483646;
    Any copy_tmp0 = unsafe(copy_tmp0_tmp);
    float copy_tmp1_tmp = 3.14;
    Any copy_tmp1 = unsafe(copy_tmp1_tmp);
    List<Any> copy = [copy_tmp0, copy_tmp1];
    
    List<Any> other = [];
    assert(value == copy, "equals List<Any>: [unsafe(2147483646), unsafe(3.14)]");
    assert(!(value == other), "different List<Any>: [unsafe(2147483646), unsafe(3.14)] []");
    assertEqual(true, true);
}
        
void test_List_Any__274() {
    
    List<Any> value = [];
    
    List<Any> copy = [];
    String other_tmp0_tmp = " ";
    Any other_tmp0 = unsafe(other_tmp0_tmp);
    List<Any> other = [other_tmp0];
    assert(value == copy, "equals List<Any>: []");
    assert(!(value == other), "different List<Any>: [] [unsafe(\" \")]");
    assertEqual(true, true);
}
        
void test_List_Any__275() {
    String value_tmp0_tmp = " ";
    Any value_tmp0 = unsafe(value_tmp0_tmp);
    List<Any> value = [value_tmp0];
    String copy_tmp0_tmp = " ";
    Any copy_tmp0 = unsafe(copy_tmp0_tmp);
    List<Any> copy = [copy_tmp0];
    String other_tmp0_tmp = "";
    Any other_tmp0 = unsafe(other_tmp0_tmp);
    bool other_tmp1_tmp = false;
    Any other_tmp1 = unsafe(other_tmp1_tmp);
    List<Any> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Any>: [unsafe(\" \")]");
    assert(!(value == other), "different List<Any>: [unsafe(\" \")] [unsafe(\"\"), unsafe(false)]");
    assertEqual(true, true);
}
        
void test_List_Any__276() {
    String value_tmp0_tmp = "";
    Any value_tmp0 = unsafe(value_tmp0_tmp);
    bool value_tmp1_tmp = false;
    Any value_tmp1 = unsafe(value_tmp1_tmp);
    List<Any> value = [value_tmp0, value_tmp1];
    String copy_tmp0_tmp = "";
    Any copy_tmp0 = unsafe(copy_tmp0_tmp);
    bool copy_tmp1_tmp = false;
    Any copy_tmp1 = unsafe(copy_tmp1_tmp);
    List<Any> copy = [copy_tmp0, copy_tmp1];
    
    List<Any> other = [];
    assert(value == copy, "equals List<Any>: [unsafe(\"\"), unsafe(false)]");
    assert(!(value == other), "different List<Any>: [unsafe(\"\"), unsafe(false)] []");
    assertEqual(true, true);
}
        
void test_Map_bool_bool__277() {
    
    Map<bool,bool> value = {};
    
    Map<bool,bool> copy = {};
    bool other_ktmp0 = true;
    bool other_vtmp0 = false;
    Map<bool,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,bool>: {}");
    assert(!(value == other), "different Map<bool,bool>: {} {true: false}");
    assertEqual(true, true);
}
        
void test_Map_bool_bool__278() {
    bool value_ktmp0 = true;
    bool value_vtmp0 = false;
    Map<bool,bool> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    bool copy_vtmp0 = false;
    Map<bool,bool> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    bool other_vtmp0 = true;
    bool other_ktmp1 = false;
    bool other_vtmp1 = false;
    Map<bool,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,bool>: {true: false}");
    assert(!(value == other), "different Map<bool,bool>: {true: false} {true: true, false: false}");
    assertEqual(true, true);
}
        
void test_Map_bool_bool__279() {
    bool value_ktmp0 = true;
    bool value_vtmp0 = true;
    bool value_ktmp1 = false;
    bool value_vtmp1 = false;
    Map<bool,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    bool copy_vtmp0 = true;
    bool copy_ktmp1 = false;
    bool copy_vtmp1 = false;
    Map<bool,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,bool> other = {};
    assert(value == copy, "equals Map<bool,bool>: {true: true, false: false}");
    assert(!(value == other), "different Map<bool,bool>: {true: true, false: false} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_bool__280() {
    
    Map<bool,bool> value = {};
    
    Map<bool,bool> copy = {};
    bool other_ktmp0 = true;
    bool other_vtmp0 = false;
    Map<bool,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,bool>: {}");
    assert(!(value == other), "different Map<bool,bool>: {} {true: false}");
    assertEqual(true, true);
}
        