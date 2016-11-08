package quark

func Map_String_String___init__() map[string]string { return make(map[string]string); }
func Map_String_String___get__(m map[string]string, key string) string { return m[key] }
func Map_String_String___set__(m map[string]string, key string, value string) { m[key] = value }
func Map_String_String_size(m map[string]string) int { return len(m) }
func Map_String_String_keys(m  map[string]string) *[]string {
	var keys []string;
	for k := range m {
		keys = append(keys, k)
	}
	return &keys
}
