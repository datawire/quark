package quark

func List_String___init__() *[]string {
	var arr []string = make([]string,0,10)
	return &arr
}
func List_String___getitem__(l  *[]string, key int) string { return (*l)[key] }
func List_String___setitem__(l  *[]string, key int, value string) { (*l)[key] = value }
func List_String_size(l  *[]string) int { return len(*l) }

func List_String_remove(l  *[]string, key int) string {
	ret := (*l)[key];
	copy((*l)[key:], (*l)[key+1:]);
	*l = (*l)[:len(*l)-1]
	return ret
}
func List_String_append(l  *[]string, value string) { *l = append(*l, value) }
func List_String_extend(l  *[]string, r *[]string) { *l = append(*l, (*r)...) }
