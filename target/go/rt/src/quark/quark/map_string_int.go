package quark

func Map_String_int___init__() map[string]int { return make(map[string]int); }
func Map_String_int___getitem__(m  map[string]int, key string) int { return m[key] }
func Map_String_int___setitem__(m  map[string]int, key string, value int) { m[key] = value }
func Map_String_int_size(m  map[string]int) int { return len(m) }
func Map_String_int_keys(m  map[string]int) *[]string {
	var keys []string;
	for k := range m {
		keys = append(keys, k)
	}
	return &keys
}
