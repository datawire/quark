package q

func Map_string_string__init__() map[string]string { return make(map[string]string); }
func Map_string_string__get__(m map[string]string, key string) string { return m[key] }
func Map_string_string__set__(m map[string]string, key string, value string) { m[key] = value }
func Map_string_string__len__(m map[string]string) int { return len(m) }
