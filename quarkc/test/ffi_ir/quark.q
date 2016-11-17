namespace quark {

    primitive void {}

    primitive bool {
        bool __eq__(bool b);
        bool __not__();
        bool __or__(bool b);
        bool __and__(bool b);
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
    }

    primitive Map<K,V> {
        void __set__(K key, V value);
        V __get__(K key);
        List<K> keys();
        V remove(K key);
        bool contains(K key);
        void update(Map<K,V> other);
        int size();
    }

    primitive List<T> {
        void __set__(int index, T value);
        T __get__(int index);
        int size();
        void append(T element);
        void extend(List<T> other);
        T remove(int index);
        bool index(T element);
    }

    void assertEqual(void a, void b);

    Any unsafe(void a);
}
