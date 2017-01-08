
void test_List_String__261() {
    String value_tmp0 = "Hello World!";
    String value_tmp1 = "pi";
    List<String> value = [value_tmp0, value_tmp1];
    String copy_tmp0 = "Hello World!";
    String copy_tmp1 = "pi";
    List<String> copy = [copy_tmp0, copy_tmp1];
    
    List<String> other = [];
    assert(value == copy, "equals List<String>: [\"Hello World!\", \"pi\"]");
    assert(!(value == other), "different List<String>: [\"Hello World!\", \"pi\"] []");
    assertEqual(true, true);
}
        
void test_List_String__262() {
    
    List<String> value = [];
    
    List<String> copy = [];
    String other_tmp0 = "Hello World!";
    List<String> other = [other_tmp0];
    assert(value == copy, "equals List<String>: []");
    assert(!(value == other), "different List<String>: [] [\"Hello World!\"]");
    assertEqual(true, true);
}
        
void test_List_String__263() {
    String value_tmp0 = "Hello World!";
    List<String> value = [value_tmp0];
    String copy_tmp0 = "Hello World!";
    List<String> copy = [copy_tmp0];
    String other_tmp0 = "pi";
    String other_tmp1 = "pie";
    List<String> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<String>: [\"Hello World!\"]");
    assert(!(value == other), "different List<String>: [\"Hello World!\"] [\"pi\", \"pie\"]");
    assertEqual(true, true);
}
        
void test_List_String__264() {
    String value_tmp0 = "pi";
    String value_tmp1 = "pie";
    List<String> value = [value_tmp0, value_tmp1];
    String copy_tmp0 = "pi";
    String copy_tmp1 = "pie";
    List<String> copy = [copy_tmp0, copy_tmp1];
    
    List<String> other = [];
    assert(value == copy, "equals List<String>: [\"pi\", \"pie\"]");
    assert(!(value == other), "different List<String>: [\"pi\", \"pie\"] []");
    assertEqual(true, true);
}
        
void test_List_Scalar__265() {
    
    List<Scalar> value = [];
    
    List<Scalar> copy = [];
    Scalar other_tmp0 = unsafe(0).asScalar();
    List<Scalar> other = [other_tmp0];
    assert(value == copy, "equals List<Scalar>: []");
    assert(!(value == other), "different List<Scalar>: [] [unsafe(0).asScalar()]");
    assertEqual(true, true);
}
        
void test_List_Scalar__266() {
    Scalar value_tmp0 = unsafe(0).asScalar();
    List<Scalar> value = [value_tmp0];
    Scalar copy_tmp0 = unsafe(0).asScalar();
    List<Scalar> copy = [copy_tmp0];
    Scalar other_tmp0 = unsafe(0.0).asScalar();
    Scalar other_tmp1 = unsafe("pie").asScalar();
    List<Scalar> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Scalar>: [unsafe(0).asScalar()]");
    assert(!(value == other), "different List<Scalar>: [unsafe(0).asScalar()] [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]");
    assertEqual(true, true);
}
        
void test_List_Scalar__267() {
    Scalar value_tmp0 = unsafe(0.0).asScalar();
    Scalar value_tmp1 = unsafe("pie").asScalar();
    List<Scalar> value = [value_tmp0, value_tmp1];
    Scalar copy_tmp0 = unsafe(0.0).asScalar();
    Scalar copy_tmp1 = unsafe("pie").asScalar();
    List<Scalar> copy = [copy_tmp0, copy_tmp1];
    
    List<Scalar> other = [];
    assert(value == copy, "equals List<Scalar>: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]");
    assert(!(value == other), "different List<Scalar>: [unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()] []");
    assertEqual(true, true);
}
        
void test_List_Scalar__268() {
    
    List<Scalar> value = [];
    
    List<Scalar> copy = [];
    Scalar other_tmp0 = unsafe(true).asScalar();
    List<Scalar> other = [other_tmp0];
    assert(value == copy, "equals List<Scalar>: []");
    assert(!(value == other), "different List<Scalar>: [] [unsafe(true).asScalar()]");
    assertEqual(true, true);
}
        
void test_List_Scalar__269() {
    Scalar value_tmp0 = unsafe(true).asScalar();
    List<Scalar> value = [value_tmp0];
    Scalar copy_tmp0 = unsafe(true).asScalar();
    List<Scalar> copy = [copy_tmp0];
    Scalar other_tmp0 = unsafe(1).asScalar();
    Scalar other_tmp1 = unsafe(-0.0).asScalar();
    List<Scalar> other = [other_tmp0, other_tmp1];
    assert(value == copy, "equals List<Scalar>: [unsafe(true).asScalar()]");
    assert(!(value == other), "different List<Scalar>: [unsafe(true).asScalar()] [unsafe(1).asScalar(), unsafe(-0.0).asScalar()]");
    assertEqual(true, true);
}
        
void test_List_Scalar__270() {
    Scalar value_tmp0 = unsafe(1).asScalar();
    Scalar value_tmp1 = unsafe(-0.0).asScalar();
    List<Scalar> value = [value_tmp0, value_tmp1];
    Scalar copy_tmp0 = unsafe(1).asScalar();
    Scalar copy_tmp1 = unsafe(-0.0).asScalar();
    List<Scalar> copy = [copy_tmp0, copy_tmp1];
    
    List<Scalar> other = [];
    assert(value == copy, "equals List<Scalar>: [unsafe(1).asScalar(), unsafe(-0.0).asScalar()]");
    assert(!(value == other), "different List<Scalar>: [unsafe(1).asScalar(), unsafe(-0.0).asScalar()] []");
    assertEqual(true, true);
}
        