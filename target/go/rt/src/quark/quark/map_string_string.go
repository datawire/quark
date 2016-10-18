package quark

func Map_string_string___init__() map[string]string { return make(map[string]string); }
func Map_string_string___get__(m map[string]string, key string) string { return m[key] }
func Map_string_string___set__(m map[string]string, key string, value string) { m[key] = value }
func Map_string_string___len__(m map[string]string) int { return len(m) }
