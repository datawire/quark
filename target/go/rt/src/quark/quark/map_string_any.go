package quark

func Map_String_Any___init__() map[string]interface{} { return make(map[string]interface{}); }
func Map_String_Any___get__(m map[string]interface{}, key string) interface{} { return m[key] }
func Map_String_Any___set__(m map[string]interface{}, key string, value interface{}) { m[key] = value }
func Map_String_Any_size(m map[string]interface{}) int { return len(m) }
func Map_String_Any_keys(m map[string]interface{}) *[]string {
	var keys []string;
	for k := range m {
		keys = append(keys, k)
	}
	return &keys
}
