namespace quark {

    primitive void {}

    primitive bool {
        bool __eq__(bool b);
        bool __not__();
        bool __or__(bool b);
        bool __and__(bool b);

        bool __eq__(bool b) for java { return $self == $b; }
        bool __not__() for java { return !$self; }
        bool __or__(bool b) for java { return $self || $b; }
        bool __and__(bool b) for java { return $self && $b; }

        bool __eq__(bool b) for go { return $self == $b; }
        bool __not__() for go { return !$self; }
        bool __or__(bool b) for go { return $self || $b; }
        bool __and__(bool b) for go { return $self && $b; }

        bool __eq__(bool b) for python { return $self == $b; }
        bool __not__() for python { return not $self; }
        bool __or__(bool b) for python { return $self or $b; }
        bool __and__(bool b) for python { return $self and $b; }

        bool __eq__(bool b) for ruby { return $self == $b }
        bool __not__() for ruby { return (not $self) }
        bool __or__(bool b) for ruby { return ($self or $b) }
        bool __and__(bool b) for ruby { return ($self and $b) }

        bool __eq__(bool b) for javascript { return $self == $b }
        bool __not__() for javascript { return (! $self) }
        bool __or__(bool b) for javascript { return ($self || $b) }
        bool __and__(bool b) for javascript { return ($self && $b) }
    }

    primitive int {
        int __add__(int other);
        int __sub__(int other);
        int __neg__();
        int __mul__(int other);
        bool __eq__(int other);
        bool __ne__(int other);
        bool __ge__(int other);
        bool __le__(int other);
        bool __gt__(int other);
        bool __lt__(int other);

        Any to_quark_Any();

        int __add__(int other) for java { return $self + $other; }
        int __sub__(int other) for java { return $self - $other; }
        int __neg__() for java { return -$self; }
        int __mul__(int other) for java { return $self * $other; }
        bool __eq__(int other) for java { return $self == $other; }
        bool __ne__(int other) for java { return $self != $other; }
        bool __ge__(int other) for java { return $self >= $other; }
        bool __le__(int other) for java { return $self <= $other; }
        bool __gt__(int other) for java { return $self > $other; }
        bool __lt__(int other) for java { return $self < $other; }

        int __add__(int other) for go { return $self + $other; }
        int __sub__(int other) for go { return $self - $other; }
        int __neg__() for go { return -$self; }
        int __mul__(int other) for go { return $self * $other; }
        bool __eq__(int other) for go { return $self == $other; }
        bool __ne__(int other) for go { return $self != $other; }
        bool __ge__(int other) for go { return $self >= $other; }
        bool __le__(int other) for go { return $self <= $other; }
        bool __gt__(int other) for go { return $self > $other; }
        bool __lt__(int other) for go { return $self < $other; }

        int __add__(int other) for python { return $self + $other; }
        int __sub__(int other) for python { return $self - $other; }
        int __neg__() for python { return -$self; }
        int __mul__(int other) for python { return $self * $other; }
        bool __eq__(int other) for python { return $self == $other; }
        bool __ne__(int other) for python { return $self != $other; }
        bool __ge__(int other) for python { return $self >= $other; }
        bool __le__(int other) for python { return $self <= $other; }
        bool __gt__(int other) for python { return $self > $other; }
        bool __lt__(int other) for python { return $self < $other; }

        int __add__(int other) for ruby { return $self + $other }
        int __sub__(int other) for ruby { return $self - $other }
        int __neg__() for ruby { return -$self }
        int __mul__(int other) for ruby { return $self * $other }
        bool __eq__(int other) for ruby { return $self == $other }
        bool __ne__(int other) for ruby { return $self != $other }
        bool __ge__(int other) for ruby { return $self >= $other }
        bool __le__(int other) for ruby { return $self <= $other }
        bool __gt__(int other) for ruby { return $self > $other }
        bool __lt__(int other) for ruby { return $self < $other }

        int __add__(int other) for javascript { return $self + $other }
        int __sub__(int other) for javascript { return $self - $other }
        int __neg__() for javascript { return -$self }
        int __mul__(int other) for javascript { return $self * $other }
        bool __eq__(int other) for javascript { return $self === $other }
        bool __ne__(int other) for javascript { return $self !== $other }
        bool __ge__(int other) for javascript { return $self >= $other }
        bool __le__(int other) for javascript { return $self <= $other }
        bool __gt__(int other) for javascript { return $self > $other }
        bool __lt__(int other) for javascript { return $self < $other }

    }

    Any int_to_quark_Any(int self) {
        return unsafe(self);
    }

    /*
    primitive float {
        bool __eq__(float other);

        int floor();
    }
    */

    primitive Any {
        /*
         * Returns type of the thing contained
         * 0 - null
         * 1 - scalar. To query more precisely see asScalar() below
         * 2 - list
         * 3 - map
         * XXX - interface ?
         */
        int type();

        /*
         * if Any contains a scalar it returns bool value based on the value contained
         * null - false
         * bool - it's value
         * int - false for 0, true for all other values
         * string - false for "", true for all other values
         * float - false for 0, true for all other values
         *
         * if Any does not contain a scalar it returns false
         */
        bool asBool();

        /*
         * if Any contains a scalar it returns int value based on the value contained
         * null - 0
         * bool - 0 for false, 1 for true
         * int - it's value
         * string - 0
         * float - it's value as float.floor()
         *
         * if Any does not contain a scalar it returns 0
         */
        int asInt();

        /*
         * if Any contains a scalar it returns string value based on the value contained
         * null - empty string
         * bool - "false" for false, "true" for true
         * int - decimal representation of int value
         * string - it's value
         * float - decimal representation of float value
         *
         * if Any does not contain a scalar it returns an empty string
         */
        String asString();

        //float asFloat();                  // returns float iff type() returned 4

        /*
         * if Any contains a scalar it returns the scalar.
         * if Any does not contain a scalar it returns a Scalar holding a null
         */
        Scalar asScalar();

        /*
         * if Any contains a list it returns a list. The list returned may be a copy.
         * if Any does not contain a list it returns null
         */
        List<Any> asList();

        /*
         * if Any contains a map it returns a map. The map returned may be a shallow copy.
         * if Any does not contain a map it returns null
         */
        Map<Scalar,Any> asMap();          // returns Map<Scalar,Any> iff type() returned 6. This may return a copy.

        /*
         * XXX: TBD
         */
        // mumble_mumble asInterface(); // returns mumble_mumble iff type() returned 7



        int type() for java  import "java.util.List" import "java.util.Map" {
                Object a = $self;
                if (a == null) {
                    return 0;
                } else if (a instanceof Boolean) {
                    return 1;
                } else if (a instanceof Integer) {
                    return 1;
                } else if (a instanceof String) {
                    return 1;
                } else if (a instanceof Float || a instanceof Double) {
                    return 1;
                } else if (a instanceof List) {
                    return 2;
                } else if (a instanceof Map) {
                    return 3;
                }
                return -1;
            }


        Scalar asScalar() for java {
                Object a = $self;
                if (a instanceof Boolean) {
                    return a;
                } else if (a instanceof Integer) {
                    return a;
                } else if (a instanceof String) {
                    return a;
                } else if (a instanceof Float) {
                    return a;
                } else if (a instanceof Double) {
                    return a;
                }
                return null;
            }

        List<Any> asList() for java  import "java.util.List" {
                Object a = $self;
                if (a instanceof List) {
                    @SuppressWarnings("unchecked")
                    List<Object> ret = (List<Object>)a;
                    return ret;
                } else {
                    return null;
                }
            }

        Map<Scalar,Any> asMap() for java import "java.util.Map" {
                Object a = $self;
                if (a instanceof Map) {
                    @SuppressWarnings("unchecked")
                    Map<Object,Object> ret = (Map<Object,Object>)a;
                    return ret;
                } else {
                    return null;
                }
            }



        int type() for go {
                a := $self;
                switch i := a.(type) {
                    case nil: return 0
                    case bool: return 1
                    case int: return 1
                    case string: return 1
                    case float32, float64: return 1
                    case []bool, []int, []string, []float32, []float64, []interface{},
                    *[]bool, *[]int, *[]string, *[]float32, *[]float64, *[]interface{}: {
                        return 2
                    }
                    case map[int]int, map[int]string, map[int]interface{},
                    map[string]int, map[string]string, map[string]interface{},
                    map[interface{}]interface{}, map[interface{}]int, map[interface{}]string : {
                        return 3
                    }
                    default: {
                        _ = i
                        // XXX: use reflection here to detect weirder map types
                        return -1
                    }
                    }
            }

        Scalar asScalar() for go {
                a := $self;
                switch a.(type) {
                    case bool: return a
                    case int: return a
                    case string: return a
                    case float32: return a
                    case float64: return a
                    default: return nil;
                    }
            }

        List<Any> asList() for go {
                a := $self;
                switch i := a.(type) {
                    case []bool: {
                            ret := make([]interface{},len(i),len(i))
                            for k,v := range(i) {
                                    ret[k] = v
                                }
                            return &ret
                    }
                    case []int: {
                            ret := make([]interface{},len(i),len(i))
                            for k,v := range(i) {
                                    ret[k] = v
                                }
                            return &ret
                    }
                    case []string: {
                            ret := make([]interface{},len(i),len(i))
                            for k,v := range(i) {
                                    ret[k] = v
                                }
                            return &ret
                    }
                    case []float32: {
                            ret := make([]interface{},len(i),len(i))
                            for k,v := range(i) {
                                    ret[k] = v
                                }
                            return &ret
                    }
                    case []float64: {
                            ret := make([]interface{},len(i),len(i))
                            for k,v := range(i) {
                                    ret[k] = v
                                }
                            return &ret
                    }
                    case *[]bool: {
                            ret := make([]interface{},len(*i),len(*i))
                            for k,v := range(*i) {
                                    ret[k] = v
                                }
                            return &ret
                    }
                    case *[]int: {
                            ret := make([]interface{},len(*i),len(*i))
                            for k,v := range(*i) {
                                    ret[k] = v
                                }
                            return &ret
                    }
                    case *[]string: {
                            ret := make([]interface{},len(*i),len(*i))
                            for k,v := range(*i) {
                                    ret[k] = v
                                }
                            return &ret
                    }
                    case *[]float32: {
                            ret := make([]interface{},len(*i),len(*i))
                            for k,v := range(*i) {
                                    ret[k] = v
                                }
                            return &ret
                    }
                    case *[]float64: {
                            ret := make([]interface{},len(*i),len(*i))
                            for k,v := range(*i) {
                                    ret[k] = v
                                }
                            return &ret
                    }
                    case []interface{}: return &i
                    case *[]interface{}: return i
                    default: return nil
                    }
            }

        Map<Scalar,Any> asMap() for go {
                a := $self
                switch i := a.(type) {
                    case map[int]int: {
                            ret := make(map[interface{}]interface{})
                            for k,v := range(i) {
                                    ret[k] = v
                                }
                            return ret
                    }
                    case map[int]string: {
                            ret := make(map[interface{}]interface{})
                            for k,v := range(i) {
                                    ret[k] = v
                                }
                            return ret
                    }
                    case map[interface{}]int: {
                            ret := make(map[interface{}]interface{})
                            for k,v := range(i) {
                                    ret[k] = v
                                }
                            return ret
                    }
                    case map[interface{}]string: {
                            ret := make(map[interface{}]interface{})
                            for k,v := range(i) {
                                    ret[k] = v
                                }
                            return ret
                    }
                    case map[int]interface{}: {
                        ret := make(map[interface{}]interface{})
                        for k,v := range(i) {
                                ret[k] = v
                            }
                        return ret
                    }
                    case map[string]int: {
                        ret := make(map[interface{}]interface{})
                        for k,v := range(i) {
                                ret[k] = v
                            }
                        return ret
                    }
                    case map[string]string: {
                        ret := make(map[interface{}]interface{})
                        for k,v := range(i) {
                                ret[k] = v
                            }
                        return ret
                    }
                    case map[string]interface{}: {
                        ret := make(map[interface{}]interface{})
                        for k,v := range(i) {
                                ret[k] = v
                            }
                        return ret
                    }
                    case map[interface{}]interface{}: return i;
                    }
                return nil;
            }


        int type() for python import "six" {
            a = $self
            if a is None:
                return 0
            elif isinstance(a, (list, tuple)):
                return 2
            elif isinstance(a, dict):
                return 3
            elif isinstance(a, six.text_type):
                return 1
            elif a is True or a is False:
                # order wrt int check is important. bool isinstance int
                return 1
            elif isinstance(a, six.integer_types):
                return 1
            elif isinstance(a, float):
                return 1
            else:
                return -1
            }

        Scalar asScalar() for python import "six" {
            a = $self
            if isinstance(a, (list, tuple, dict)):
                return None
            else:
                return a
            }

        List<Any> asList() for python import "six" {
            a = $self
            if isinstance(a, list):
                return a
            elif isinstance(a, tuple):
                return list(a)
            else:
                return None
            }

        Map<Scalar,Any> asMap() for python import "six" {
            a = $self
            if isinstance(a, dict):
                return a
            else:
                return None
            }


        int type() for ruby {
            a = $self
            if a.nil?
              return 0
            elsif a.is_a?(TrueClass) or a.is_a?(FalseClass)
              return 1
            elsif a.is_a?(Fixnum)
              return 1
            elsif a.is_a?(String)
              return 1
            elsif a.is_a?(Float)
              return 1
            elsif a.is_a?(Array)
              return 2
            elsif a.is_a?(Hash)
              return 3
            else
              return -1
            end
            }

        Scalar asScalar() for ruby {
            a = $self
            if a.is_a?(Array) or a.is_a?(Hash)
              return nil
            else
              return a
            end
            }

        List<Any> asList() for ruby {
            a = $self
            if a.is_a?(Array)
              return a
            else
              return nil
            end
            }

        Map<Scalar,Any> asMap() for ruby {
            a = $self
            if a.is_a?(Hash)
              return a
            else
              return nil
            end
            }


        int type() for javascript {
                let a = $self;
                let t = typeof(a);
                if (t === "object") {
                    if (a === null) {
                        return 0;
                    } else if (Array.isArray(a)) {
                        return 2;
                    } else if (a instanceof Map) {
                        return 3;
                    } else {
                        return -1;
                    }
                } else if (t === "string") {
                    return 1;
                } else if (t === "number") {
                    return 1;
                } else if (t === "boolean") {
                    return 1;
                } else {
                    return -1;
                }
            }

        Scalar asScalar() for javascript {
                let a = $self;
                if (Array.isArray(a) || typeof(a) === "object" || a instanceof Map) {
                    return null;
                } else {
                    return a;
                }
            }

        List<Any> asList() for javascript {
                let a = $self;
                if (Array.isArray(a)) {
                    return a;
                } else {
                    return null;
                }
            }

        Map<Scalar,Any> asMap() for javascript {
                let a = $self;
                if (typeof(a) === "object") {
                    if (a instanceof Map) {
                        return a;
                    } else if(a === null ) {
                        return null;
                    } else if (a.constructor === Object) {
                        ret = new Map();
                        Object.getOwnPropertyNames(a).forEach(function(k) {
                                ret[k] = a[k];
                            });
                        return ret;
                    } else {
                        return null;
                    }
                } else {
                    return null;
                }
            }

    }

    /**
     * Knowing how quark primtitive static dispatch works allows
     * creating a cross-target quark implementation of a primitive
     * method. Imagine it says Any::asBool
     */
    bool   Any_asBool(Any a)   { return a.asScalar().asBool(); }
    int    Any_asInt(Any a)    { return a.asScalar().asInt(); }
    String Any_asString(Any a) { return a.asScalar().asString(); }

    primitive Scalar {
        /*
         * Returns type of the value contained
         * 0 - null
         * 1 - bool
         * 2 - number
         * 3 - string
         */
        int type();

        /*
         * returns bool value based on the value contained
         * null - false
         * bool - it's value
         * int - false for 0, true for all other values
         * string - false for "", true for all other values
         * float - false for 0, true for all other values
         */
        bool asBool();

        /*
         * returns int value based on the value contained
         * null - 0
         * bool - 0 for false, 1 for true
         * int - it's value
         * string - 0
         * float - it's value as float.floor()
         */
        int asInt();

        /*
         * returns true if value can be losslesly converted to int, false otherwise
         * null - false
         * bool - true
         * int - true
         * string - false
         * float - true if value == value.floor()
         */
        bool isInt();

        /*
         * returns string value based on the value contained
         * null - empty string
         * bool - "false" for false, "true" for true
         * int - decimal representation of int value
         * string - it's value
         * float - decimal representation of float value
         */
        String asString();
 
        //float asFloat();                  // returns float iff type() returned 4
        //bool isFloat()
        bool asBool() for java  import "java.util.List" import "java.util.Map" {
                Object a = $self;
                if (a == null) {
                    return false;
                } else if (a instanceof Boolean) {
                    return (Boolean)a;
                } else if (a instanceof Integer) {
                    return ((Integer)a) != 0;
                } else if (a instanceof String) {
                    return !((String)a).isEmpty();
                } else if (a instanceof Float) {
                    return ((Float)a) != 0.0;
                } else if (a instanceof Double) {
                    return ((Double)a) != 0.0;
                } else if (a instanceof List) {
                    return false;
                } else if (a instanceof Map) {
                    return false;
                }
                return false;
            }

        int asInt() for java  import "java.util.List" import "java.util.Map" {
                Object a = $self;
                if (a == null) {
                    return 0;
                } else if (a instanceof Boolean) {
                    return (Boolean)a ? 1 : 0;
                } else if (a instanceof Integer) {
                    return ((Integer)a);
                } else if (a instanceof String) {
                    return 0;
                } else if (a instanceof Float) {
                    return ((Float)a).intValue();
                } else if (a instanceof Double) {
                    return ((Double)a).intValue();
                } else if (a instanceof List) {
                    return 0;
                } else if (a instanceof Map) {
                    return 0;
                }
                return 0;
            }

        String asString() for java import "java.util.List" import "java.util.Map" {
                Object a = $self;
                if (a == null) {
                    return "";
                } else if (a instanceof Boolean) {
                    return (Boolean)a ? "true" : "false";
                } else if (a instanceof Integer) {
                    return ((Integer)a).toString();
                } else if (a instanceof String) {
                    return (String)a;
                } else if (a instanceof Float) {
                    return ((Float)a).toString();
                } else if (a instanceof Double) {
                    return ((Double)a).toString();
                } else if (a instanceof List) {
                    return "";
                } else if (a instanceof Map) {
                    return "";
                }
                return "";
            }


        bool asBool() for go {
                a := $self;
                switch i := a.(type) {
                    case bool: return i;
                    case int: return i != 0;
                    case string: return len(i) > 0;
                    case float32: return i != 0.0;
                    case float64: return i != 0.0;
                    default: return false;
                    }
            }

        int asInt() for go {
                a := $self;
                switch i := a.(type) {
                    case nil: return 0;
                    case bool: {
                        if i {
                              return 1;
                        } else {
                              return 0;
                        }
                    }
                    case int: return i;
                    case string: return 0;
                    case float32: return int(i);
                    case float64: return int(i);
                    default: return 0;
                    }
            }

        String asString() for go import "fmt" {
                a := $self;
                switch i := a.(type) {
                    case nil: return "";
                    case bool: {
                         if i {
                                 return "true";
                         } else {
                             return "false";
                         }
                    }
                    case int: return fmt.Sprint(i);
                    case string: return i;
                    case float32: return fmt.Sprint(i);
                    case float64: return fmt.Sprint(i);
                    default: return "";
                    }
            }


        bool asBool() for python import "six" {
            a = $self
            if a is None:
                return False
            elif isinstance(a, six.text_type):
                return bool(a)
            elif a is True or a is False:
                # order wrt int check is important. bool isinstance int
                return a
            elif isinstance(a, six.integer_types):
                return bool(a)
            elif isinstance(a, float):
                return bool(a)
            else:
                return False
            }

        int asInt() for python import "six" {
            a = $self
            if a is None:
                return 0
            elif isinstance(a, six.text_type):
                return 0
            elif a is True or a is False:
                return int(a)
            elif isinstance(a, six.integer_types):
                return a
            elif isinstance(a, float):
                return int(a)
            else:
                return 0
            }

        String asString() for python import "six" {
            a = $self
            if a is None:
                return u""
            elif isinstance(a, six.text_type):
                return a
            elif a is True or a is False:
                return a and u"true" or u"false"
            elif isinstance(a, six.integer_types):
                return six.text_type(a)
            elif isinstance(a, float):
                return six.text_type(a)
            else:
                return u""
            }

        bool asBool() for ruby {
            a = $self
            if a.nil?
              return false
            elsif a.is_a?(TrueClass) or a.is_a?(FalseClass)
              return a
            elsif a.is_a?(Fixnum)
              return a != 0
            elsif a.is_a?(String)
              return not(a.empty?)
            elsif a.is_a?(Float)
              return a != 0.0
            else
              return false
            end
            }

        int asInt() for ruby {
            a = $self
            if a.nil?
              return 0
            elsif a.is_a?(TrueClass) or a.is_a?(FalseClass)
              if a
                return 1
              else
                return 0
              end
            elsif a.is_a?(Fixnum)
              return a
            elsif a.is_a?(String)
              return 0
            elsif a.is_a?(Float)
              return a.to_i
            else
              return 0
            end
            }

        String asString() for ruby {
            a = $self
            if a.nil?
              return ""
            elsif a.is_a?(TrueClass) or a.is_a?(FalseClass)
              if a
                return "true"
              else
                return "false"
              end
            elsif a.is_a?(Fixnum)
              return a.to_s
            elsif a.is_a?(String)
              return a
            elsif a.is_a?(Float)
              return a.to_s
            else
              return ""
            end
            }

        bool asBool() for javascript {
                let a = $self;
                let t = typeof(a);
                if (t === "object") {
                    return false;
                } else if (t === "string") {
                    return a.length > 0;
                } else if (t === "number") {
                    return a != 0;
                } else if (t === "boolean") {
                    return a;
                } else {
                    return false;
                }
            }

        int asInt() for javascript {
                let a = $self;
                let t = typeof(a);
                if (t === "object") {
                    return 0;
                } else if (t === "string") {
                    return 0;
                } else if (t === "number") {
                    if (Number.isInteger(a)) {
                        return a;
                    } else if ( a > 0 ) {
                        return Math.floor(a);
                    } else {
                        return -Math.floor(-a);
                    }
                } else if (t === "boolean") {
                    return a ? 1 : 0;
                } else {
                    return 0;
                }
            }

        String asString() for javascript {
                let a = $self;
                let t = typeof(a);
                if (t === "object") {
                    return "";
                } else if (t === "string") {
                    return a;
                } else if (t === "number") {
                    return a.toString();
                } else if (t === "boolean") {
                    return a ? "true" : "false";
                } else {
                    return "";
                }
            }
    }

    primitive String {
        String __add__(String other);
        bool __eq__(String other);
        int size();
        String substring(int start, int end);


        String __add__(String other) for java { return $self + $other; }
        bool __eq__(String other) for java { return $self.equals($other); }
        int size() for java { return $self.length(); }
        String substring(int start, int end) for java {
                int l = $self.length();
                return $self.substring($start, $end < l ? $end : l);
            }


        String __add__(String other) for go { return $self + $other }
        bool __eq__(String other) for go { return $self == $other }
        int size() for go import "unicode/utf8" { return utf8.RuneCountInString($self) }
        String substring(int start, int end) for go {
	s := 0
	e := len($self)
	for i, _ := range $self {
		if $start == 0 {
			s = i
		}
		if $end == 0 {
			e = i
		}
		$start -= 1
		$end -= 1
	}
	return $self[s:e]
            }

        String __add__(String other) for python { return $self + $other }
        bool __eq__(String other) for python { return $self == $other }
        int size() for python { return len($self) }
        String substring(int start, int end) for python { return $self[$start:$end] }

        String __add__(String other) for ruby { return $self + $other }
        bool __eq__(String other) for ruby { return $self == $other }
        int size() for ruby { return $self.size }
        String substring(int start, int end) for ruby {
                return $self.slice($start, $end - $start)
            }

        String __add__(String other) for javascript { return $self + $other }
        bool __eq__(String other) for javascript { return $self === $other }
        int size() for javascript { return $self.length }
        String substring(int start, int end) for javascript { return $self.substring($start, $end) }

        Any to_quark_Any();

    }

    Any String_to_quark_Any(String s) { return unsafe(s); }

    primitive Map<K,V>
    for java import "java.util.Map" {Map<$K_boxed,$V_boxed>}
    for go {map[$K]$V}
    {
        Map<K,V> __init__();
        void __set__(K key, V value);
        V __get__(K key);
        List<K> keys();
        V remove(K key);
        bool contains(K key);
        void update(Map<K,V> other);
        int size();
        void clear();


        Map<K,V> __init__() for java import "java.util.Map" import "java.util.HashMap" {
                return new HashMap<$K_boxed,$V_boxed>();
            }
        void __set__(K key, V value) for java import "java.util.Map" {
                $self.put($key, $value);
            }
        V __get__(K key) for java import "java.util.Map" {
                $V_boxed value = $self.get($key);
                if (value != null) {
                    return value;
                }
                return $V_nulled;
            }
        List<K> keys() for java import "java.util.Map" import "java.util.ArrayList" {
                return new ArrayList<$K_boxed>($self.keySet());
            }
        V remove(K key) for java import "java.util.Map" {
                $V_boxed value = $self.remove($key);
                if (value != null) {
                    return value;
                }
                return $V_nulled;
            }
        bool contains(K key) for java import "java.util.Map" {
                return $self.containsKey($key);
            }
        void update(Map<K,V> other) for java import "java.util.Map" {
                $self.putAll($other);
            }
        int size() for java import "java.util.Map" {
                return $self.size();
            }
        void clear() for java import "java.util.Map" {
                $self.clear();
            }

        Map<K,V> __init__() for go {
                return make(map[$K]$V);
            }
        void __set__(K key, V value) for go {
                $self[$key] = $value;
            }
        V __get__(K key) for go {
                return $self[$key];
            }
        List<K> keys() for go {
                var keys []$K;
                for k := range $self {
                        keys = append(keys, k);
                    }
                return &keys;
            }
        V remove(K key) for go {
                defer delete($self, $key);
                return $self[$key];
            }
        bool contains(K key) for go {
                _, ret := $self[$key];
                return ret;
            }
        void update(Map<K,V> other) for go {
                for k,v := range $other {
                        $self[k] = v;
                    }
            }
        int size() for go {
                return len($self);
            }
        void clear() for go {
                for k := range $self {
                        delete($self, k);
                    }
            }


        Map<K,V> __init__() for python {
                return dict()
            }
        void __set__(K key, V value) for python {
                $self[$key] = $value
            }
        V __get__(K key) for python {
                el = $self.get($key, None)
                if el is not None:
                    return el
                return $V_nulled
            }
        List<K> keys() for python {
                return list($self.keys())
            }
        V remove(K key) for python {
                el = $self.pop($key, None)
                if el is not None:
                    return el
                return $V_nulled
            }
        bool contains(K key) for python {
                return $key in $self
            }
        void update(Map<K,V> other) for python {
                $self.update($other)
            }
        int size() for python {
                return len($self)
            }
        void clear() for python {
                $self.clear()
            }

        Map<K,V> __init__() for ruby {
                map = {}
                map.default = $V_nulled
                map
            }
        void __set__(K key, V value) for ruby {
                $self[$key] = $value
                nil
            }
        V __get__(K key) for ruby {
                $self[$key]
            }
        List<K> keys() for ruby {
                $self.keys
            }
        V remove(K key) for ruby {
                el = $self.delete($key);
                if not el.nil?
                  return el
                end
                return $V_nulled
            }
        bool contains(K key) for ruby {
                $self.has_key?($key)
            }
        void update(Map<K,V> other) for ruby {
                $self.merge!($other)
            }
        int size() for ruby {
                $self.length
            }
        void clear() for ruby {
                $self.clear
            }


        Map<K,V> __init__() for javascript {
                return new Map();
            }
        void __set__(K key, V value) for javascript { $self.set($key, $value) }
        V __get__(K key) for javascript {
                let el = $self.get($key);
                if (el !== undefined && el !== null) {
                    return el;
                }
                return $V_nulled;
            }
        List<K> keys() for javascript {
                return Array.from($self.keys());
            }
        V remove(K key) for javascript {
                let el = $self.get($key);
                $self.delete($key);
                if (el !== undefined && el !== null) {
                    return el;
                }
                return $V_nulled;
            }
        bool contains(K key) for javascript {
                return $self.has($key);
            }
        void update(Map<K,V> other) for javascript {
                $other.forEach((v,k) => $self.set(k,v));
            }
        int size() for javascript {
                return $self.size;
            }
        void clear() for javascript {
                $self.clear();
            }


    }

    primitive List<T>
    for java import "java.util.List" {List<$T_boxed>}
    for go {*[]$T}
    {
        List<T> __init__();
        void __set__(int index, T value);
        T __get__(int index);
        int size();
        void append(T element);
        void extend(List<T> other);
        T remove(int index);
        //bool index(T element); // XXX: what does this do??? should it return int? should it be named contains?

        List<T> __init__() for java import "java.util.List" import "java.util.ArrayList" {
                return new ArrayList<$T_boxed>();
            }
        void __set__(int index, T value) for java import "java.util.List" {
                $self.set($index,$value);
            }
        T __get__(int index) for java import "java.util.List" {
                $T_boxed el = $self.get($index);
                if ( el == null ) {
                    return $T_nulled;
                } else {
                    return el;
                }
            }
        int size() for java import "java.util.List" import "java.util.ArrayList" {
                return $self.size();
            }
        void append(T element) for java import "java.util.List" {
                $self.add($element);
            }
        void extend(List<T> other) for java import "java.util.List" {
                $self.addAll($other);
            }
        T remove(int index) for java import "java.util.List" {
                $T_boxed el = $self.remove($index);
                if ( el != null ) {
                    return el;
                }
                return $T_nulled;
            }


        List<T> __init__() for go {
                var arr []$T = make([]$T, 0, 10);
                return &arr;
            }
        void __set__(int index, T value) for go {
                (*$self)[$index] = $value;
            }
        T __get__(int index) for go {
                return (*$self)[$index];
            }
        int size() for go {
                return len(*$self);
            }
        void append(T element) for go{
                *$self = append(*$self, $element);
            }
        void extend(List<T> other) for go {
                *$self = append(*$self, (*$other)...);
            }
        T remove(int index) for go {
            ret := (*$self)[$index];
            copy((*$self)[$index:], (*$self)[$index+1:]);
            *$self = (*$self)[:len(*$self)-1];
            return ret;
        }


        List<T> __init__() for python {
                return []
            }
        void __set__(int index, T value) for python {
                $self[$index] = $value
            }
        T __get__(int index) for python {
                return $self[$index]
            }
        int size() for python {
                return len($self)
            }
        void append(T element) for python {
                $self.append($element)
            }
        void extend(List<T> other) for python {
                $self.extend($other)
            }
        T remove(int index) for python {
                ret = $self[$index]
                $self[$index:] = $self[$index+1:]
                return ret
            }

        List<T> __init__() for ruby {
                []
            }
        void __set__(int index, T value) for ruby {
                $self[$index] = $value
            }
        T __get__(int index) for ruby {
                $self[$index]
            }
        int size() for ruby {
                $self.length
            }
        void append(T element) for ruby {
                $self.push($element)
            }
        void extend(List<T> other) for ruby {
                $self.push(*$other)
            }
        T remove(int index) for ruby {
                $self.delete_at($index)
            }


        List<T> __init__() for javascript {
                return [];
            }
        void __set__(int index, T value) for javascript {
                $self[$index] = $value;
            }
        T __get__(int index) for javascript {
                return $self[$index];
            }
        int size() for javascript {
                return $self.length;
            }
        void append(T element) for javascript {
                return $self.push($element);
            }
        void extend(List<T> other) for javascript {
                $other.forEach(x => $self.push(x));
            }
        T remove(int index) for javascript {
                return $self.splice($index, 1)[0]
            }
    }

    void assertEqual(void a, void b);
    void assertNotEqual(void a, void b);

    Any unsafe(void a);

    void print(void o);


    Any unsafe(void a) for java { return $a; }

    void print(void o) for java { System.out.println($o); }


    Any unsafe(void a) for go { return $a; }

    void print(void o) for go import "fmt" { fmt.Println($o); }


    Any unsafe(void a) for python { return $a }

    void print(void o) for python { print($o) }


    Any unsafe(void a) for ruby { return $a }

    void print(void o) for ruby { puts $o }


    Any unsafe(void a) for javascript { return $a }

    void print(void o) for javascript { console.log($o) }

}
