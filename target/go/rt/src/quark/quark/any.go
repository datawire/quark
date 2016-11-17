package quark

import "fmt"

func Unsafe(a interface{}) interface{} { return a }

func Any_type(a interface{}) int {
	switch i := a.(type) {
	case nil:
		return 0
	case bool:
		return 1
	case int:
		return 1
	case string:
		return 1
	case float32, float64:
		return 1
	case []bool, []int, []string, []float32, []float64, []interface{},
		*[]bool, *[]int, *[]string, *[]float32, *[]float64, *[]interface{}:
		return 2
	case map[int]int, map[int]string, map[int]interface{},
		map[string]int, map[string]string, map[string]interface{},
		map[interface{}]interface{}, map[interface{}]int, map[interface{}]string :
		return 3
	default:
		_ = i
		// XXX: use reflection here to detect weirder map types
		return -1
	}
}

func Any_asBool(a interface{}) bool {
	switch i := a.(type) {
	case bool:
		return i
	case int:
		return i != 0
	case float32:
		return i != 0.0
	case float64:
		return i != 0.0
	default:
		return false
	}
}

func Any_asInt(a interface{}) int {
	switch i := a.(type) {
	case nil:
		return 0
	case bool:
		if i {
			return 1
		} else {
			return 0
		}
	case int:
		return i
	case string:
		return 0
	case float32:
		return int(i)
	case float64:
		return int(i)
	default:
		return 0
	}
}

func Any_asString(a interface{}) string {
	switch i := a.(type) {
	case nil:
		return ""
	case bool:
		if i {
			return "true"
		} else {
			return "false"
		}
	case int:
		return fmt.Sprint(i)
	case string:
		return i
	case float32:
		return fmt.Sprint(i)
	case float64:
		return fmt.Sprint(i)
	default:
		return ""
	}
}

func Any_asList(a interface{}) *[]interface{} {
	fmt.Print("===============")
	switch i := a.(type) {
	case []bool:
		ret := make([]interface{},len(i),len(i))
		for k,v := range(i) {
			ret[k] = v
		}
		return &ret
	case []int:
		ret := make([]interface{},len(i),len(i))
		for k,v := range(i) {
			ret[k] = v
		}
		return &ret
	case []string:
		ret := make([]interface{},len(i),len(i))
		for k,v := range(i) {
			ret[k] = v
		}
		return &ret
	case []float32:
		ret := make([]interface{},len(i),len(i))
		for k,v := range(i) {
			ret[k] = v
		}
		return &ret
	case []float64:
		ret := make([]interface{},len(i),len(i))
		for k,v := range(i) {
			ret[k] = v
		}
		return &ret
	case *[]bool:
		ret := make([]interface{},len(*i),len(*i))
		for k,v := range(*i) {
			ret[k] = v
		}
		return &ret
	case *[]int:
		ret := make([]interface{},len(*i),len(*i))
		for k,v := range(*i) {
			ret[k] = v
		}
		return &ret
	case *[]string:
		ret := make([]interface{},len(*i),len(*i))
		for k,v := range(*i) {
			ret[k] = v
		}
		return &ret
	case *[]float32:
		ret := make([]interface{},len(*i),len(*i))
		for k,v := range(*i) {
			ret[k] = v
		}
		return &ret
	case *[]float64:
		ret := make([]interface{},len(*i),len(*i))
		for k,v := range(*i) {
			ret[k] = v
		}
		return &ret
	case []interface{}:
		return &i
	case *[]interface{}:
		return i
	default:
		return nil
	}
}

func Any_asMap(a interface{}) map[interface{}]interface{} {
	switch i := a.(type) {
	case map[int]int:
		ret := make(map[interface{}]interface{})
		for k,v := range(i) {
			ret[k] = v
		}
		return ret
	case map[int]string:
		ret := make(map[interface{}]interface{})
		for k,v := range(i) {
			ret[k] = v
		}
		return ret
	case map[interface{}]int:
		ret := make(map[interface{}]interface{})
		for k,v := range(i) {
			ret[k] = v
		}
		return ret
	case map[interface{}]string:
		ret := make(map[interface{}]interface{})
		for k,v := range(i) {
			ret[k] = v
		}
		return ret
	case map[int]interface{}:
		ret := make(map[interface{}]interface{})
		for k,v := range(i) {
			ret[k] = v
		}
		return ret
	case map[string]int:
		ret := make(map[interface{}]interface{})
		for k,v := range(i) {
			ret[k] = v
		}
		return ret
	case map[string]string:
		ret := make(map[interface{}]interface{})
		for k,v := range(i) {
			ret[k] = v
		}
		return ret
	case map[string]interface{}:
		ret := make(map[interface{}]interface{})
		for k,v := range(i) {
			ret[k] = v
		}
		return ret
	case map[interface{}]interface{}:
		return i
	}
	return nil
}
