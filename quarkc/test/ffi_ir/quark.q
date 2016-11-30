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
                    return (List<Object>)a;
                } else {
                    return null;
                }
            }
        Map<Scalar,Any> asMap() for java import "java.util.Map" {
                Object a = $self;
                if (a instanceof Map) {
                    return (Map<Object,Object>)a;
                } else {
                    return null;
                }
            }

    }

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
    }

    primitive Map<K,V>
    for java import "java.util.Map" {Map<$K_boxed,$V_boxed>}
    {
        Map<K,V> __init__();
        void __set__(K key, V value);
        V __get__(K key);
        List<K> keys();
        V remove(K key);
        bool contains(K key);
        void update(Map<K,V> other);
        int size();

        Map<K,V> __init__() for java import "java.util.Map" import "java.util.HashMap" {
            return new HashMap<$K_boxed,$V_boxed>();
        }

        void __set__(K key, V value) for java {
            $self.put($key, $value);
        }

        V __get__(K key) for java {
            $V_boxed result = $self.get($key);
            if (result == null) {
                return $V_nulled;
            } else {
                return result;
            }
        }

        List<K> keys() for java import "java.util.List" import "java.util.ArrayList" {
            return new ArrayList<$K_boxed>($self.keySet());
        }

        int size() for java {
            return $self.size();
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
        //bool index(T element);

        List<T> __init__() for java import "java.util.List" import "java.util.ArrayList" {
                return new ArrayList<$T_boxed>();
            }
        void __set__(int index, T value) for java import "java.util.List" import "java.util.ArrayList" {
                $self.set($index,$value);
            }
        T __get__(int index) for java import "java.util.List" import "java.util.ArrayList" {
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
        void append(T element) for java import "java.util.List" import "java.util.ArrayList" {
                $self.add($element);
            }
        void extend(List<T> other) for java import "java.util.List" import "java.util.ArrayList" {
                $self.addAll($other);
            }
        T remove(int index) for java import "java.util.List" import "java.util.ArrayList" {
                $T_boxed el = $self.remove($index);
                if ( el != null ) {
                    return el;
                }
                return $T_nulled;
            }

    }

    void assertEqual(void a, void b);
    void assertNotEqual(void a, void b);

    Any unsafe(void a);

    void print(void o);

    Any unsafe(void a) for java { return $a; }

    void print(void o) for java { System.out.println($o); }

    // XXX: this is just so minimal_q.ir will compile, the body seems questionable
    bool object___ne__(void left, void right);
    bool object___ne__(void left, void right) for java { return $left == $right; }

}
