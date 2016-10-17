package q

func Map_string_int__init__() map[string]int { return make(map[string]int); }
func Map_string_int__get__(m  map[string]int, key string) int { return m[key] }
func Map_string_int__set__(m  map[string]int, key string, value int) { m[key] = value }
func Map_string_int__len__(m  map[string]int) int { return len(m) }
