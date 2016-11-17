package quark

func List_Any___init__() *[]interface{} {
	var arr []interface{} = make([]interface{},0,10)
	return &arr
}
func List_Any___get__(l  *[]interface{}, key int) interface{} { return (*l)[key] }
func List_Any___set__(l  *[]interface{}, key int, value interface{}) { (*l)[key] = value }
func List_Any_size(l  *[]interface{}) int { return len(*l) }

func List_Any_remove(l  *[]interface{}, key int) interface{} {
	ret := (*l)[key];
	copy((*l)[key:], (*l)[key+1:]);
	*l = (*l)[:len(*l)-1]
	return ret
}
func List_Any_append(l  *[]interface{}, value interface{}) { *l = append(*l, value) }
func List_Any_extend(l  *[]interface{}, r *[]interface{}) { *l = append(*l, (*r)...) }
