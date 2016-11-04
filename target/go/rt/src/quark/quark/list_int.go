package quark

func List_int___init__() *[]int {
	var arr []int = make([]int,0,10)
	return &arr
}
func List_int___get__(l  *[]int, key int) int { return (*l)[key] }
func List_int___set__(l  *[]int, key int, value int) { (*l)[key] = value }
func List_int___len__(l  *[]int) int { return len(*l) }

func List_int_append(l  *[]int, value int) { *l = append(*l, value) }
func List_int_extend(l  *[]int, r *[]int) { *l = append(*l, (*r)...) }
