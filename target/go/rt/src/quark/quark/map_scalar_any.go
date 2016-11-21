package quark

func Map_Scalar_Any___init__() map[interface{}]interface{} { return make(map[interface{}]interface{}); }
func Map_Scalar_Any___get__(m map[interface{}]interface{}, key interface{}) interface{} { return m[key] }
func Map_Scalar_Any___set__(m map[interface{}]interface{}, key interface{}, value interface{}) { m[key] = value }
func Map_Scalar_Any_size(m map[interface{}]interface{}) int { return len(m) }
func Map_Scalar_Any_keys(m map[interface{}]interface{}) *[]interface{} {
     	var keys []interface{};
	for k := range m {
		keys = append(keys, k)
	}
	return &keys
}
