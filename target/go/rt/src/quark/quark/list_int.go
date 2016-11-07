package quark

func List_int___init__() *[]int {
	var arr []int = make([]int,0,10)
	return &arr
}
func List_int___getitem__(l  *[]int, key int) int { return (*l)[key] }
func List_int___setitem__(l  *[]int, key int, value int) { (*l)[key] = value }
func List_int_size(l  *[]int) int { return len(*l) }

func List_int_remove(l  *[]int, key int) int {
	ret := (*l)[key];
	copy((*l)[key:], (*l)[key+1:]);
	*l = (*l)[:len(*l)-1]
	return ret
}
func List_int_append(l  *[]int, value int) { *l = append(*l, value) }
func List_int_extend(l  *[]int, r *[]int) { *l = append(*l, (*r)...) }
