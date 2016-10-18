package quark

func Map_string_int___init__() map[string]int { return make(map[string]int); }
func Map_string_int___get__(m  map[string]int, key string) int { return m[key] }
func Map_string_int___set__(m  map[string]int, key string, value int) { m[key] = value }
func Map_string_int___len__(m  map[string]int) int { return len(m) }
