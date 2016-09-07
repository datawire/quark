quark *;
include io/datawire/quark/runtime/QObject.java;
include io/datawire/quark/runtime/Buffer.java;
include io/datawire/quark/runtime/BufferImpl.java;
include io/datawire/quark/runtime/Codec.java;
include io/datawire/quark/runtime/StringUtils.java;

namespace quark {
    @mapping($java{Object} $py{object} $js{Object} $rb{::DatawireQuarkCore::QuarkObject})
    primitive Object {
        macro bool __eq__(Object other) $java{($self)==($other) || ((Object)($self) != null && ((Object) ($self)).equals($other))}
                                        $py{($self) == ($other)}
                                        $rb{($self) == ($other)}
                                        $js{_qrt.equals(($self), ($other))};
        macro bool __ne__(Object other) $java{!(($self)==($other) || ((Object)($self) != null && ((Object) ($self)).equals($other)))}
                                        $py{($self) != ($other)}
                                        $rb{($self) != ($other)}
                                        $js{($self) !== ($other)};

        macro reflect.Class getClass() reflect.Class.get($java{io.datawire.quark.runtime.Builtins._getClass($self)}
                                                         $py{_getClass($self)}
                                                         $rb{::DatawireQuarkCore._getClass($self)}
                                                         $js{_qrt._getClass($self)});
        macro Object getField(String name) $java{((io.datawire.quark.runtime.QObject) ($self))._getField($name)}
                                           $py{($self)._getField($name)}
                                           $rb{($self)._getField($name)}
                                           $js{($self)._getField($name)};
        macro void setField(String name, Object value) $java{((io.datawire.quark.runtime.QObject) ($self))._setField($name, $value)}
                                                       $py{($self)._setField(($name), ($value))}
                                                       $rb{($self)._setField(($name), ($value))}
                                                       $js{($self)._setField(($name), ($value))};
        macro String toString() $java{("" + ($self))}
                                $py{_toString($self)}
                                $rb{($self).to_s}
                                $js{_qrt.toString($self)};
    }

    @mapping($java{void})
    primitive void {}

    // Ruby doesn't have a Boolean type, only TrueClass and FalseClass
    @mapping($java{Boolean} $py{bool} $js{Boolean} $rb{::Object})
    primitive bool {
        macro bool __not__() $java{!($self)} $py{not ($self)} $rb{!($self)} $js{!($self)};
        macro bool __and__(bool other) $java{($self) && ($other)}
                                       $py{($self) and ($other)}
                                       $rb{($self) && ($other)}
                                       $js{($self) && ($other)};
        macro bool __or__(bool other) $java{($self) || ($other)}
                                      $py{($self) or ($other)}
                                      $rb{($self) || ($other)}
                                      $js{($self) || ($other)};
        macro String toString() $java{($self).toString()} $py{_toString($self).lower()} $rb{($self).to_s} $js{($self).toString()};
        macro JSONObject toJSON() new JSONObject().setBool(self);
        macro JSONObject __to_JSONObject() self.toJSON();
    }

    primitive numeric<T> {
        macro T __neg__() ${-($self)};
        macro T __add__(T other) ${($self) + ($other)};
        macro T __sub__(T other) ${($self) - ($other)};
        macro T __mul__(T other) ${($self) * ($other)};
        macro T __div__(T other) ${($self) / ($other)};
        macro bool __lt__(T other) ${($self) < ($other)};
        macro bool __le__(T other) ${($self) <= ($other)};
        macro bool __gt__(T other) ${($self) > ($other)};
        macro bool __ge__(T other) ${($self) >= ($other)};
    }

    primitive integral<T> extends numeric<T> {
        macro T __div__(T other) $java{~((~($self)) / ($other))}
                                 $py{($self) // ($other)}
                                 $rb{($self) / ($other)}
                                 $js{Math.floor(($self) / ($other))};
        macro T __mod__(T other) $java{io.datawire.quark.runtime.Builtins.modulo(($self), ($other))}
                                 $py{($self) % ($other)}
                                 $rb{($self) % ($other)}
                                 $js{_qrt.modulo(($self), ($other))};
        macro float toFloat() $java{Double.valueOf($self)} $py{float($self)} $rb{($self).to_f} $js{($self)};
        macro JSONObject toJSON() new JSONObject().setNumber(self);
        macro JSONObject __to_JSONObject() self.toJSON();

        macro T __bitwise_or__(T other) ${(($self) | ($other))};
        macro T __bitwise_xor__(T other) ${(($self) ^ ($other))};
        macro T __bitwise_and__(T other) ${(($self) & ($other))};
        macro T __bitwise_not__() ${(~($self))};
    }

    @mapping($java{Byte} $py{int} $js{Number} $rb{::Integer})
    primitive byte extends integral<byte> {
        macro byte() $java{new Byte()}
                     $py{int()}
                     $rb{0}
                     $js{Number()};

        macro String toString() $java{Byte.toString($self)}
                                $py{_toString($self)}
                                $rb{($self).to_s}
                                $js{_qrt.toString($self)};
        macro short __to_short() self;
        macro int __to_int() self;
        macro long __to_long() self;
    }


    @mapping($java{Short} $py{int} $js{Number} $rb{::Integer})
    primitive short extends integral<short> {
        macro short() $java{new Short()}
                      $py{int()}
                      $rb{0}
                      $js{Number()};

        macro String toString() $java{Short.toString($self)}
                                $py{_toString($self)}
                                $rb{($self).to_s}
                                $js{_qrt.toString($self)};
        macro byte __to_byte() self;
        macro int __to_int() self;
    }


    @mapping($java{Integer} $py{int} $js{Number} $rb{::Integer})
    primitive int extends integral<int> {
        macro int() $java{new Integer()}
                    $py{int()}
                    $rb{0}
                    $js{Number()};

        macro String toString() $java{Integer.toString($self)}
                                $py{_toString($self)}
                                $rb{($self).to_s}
                                $js{_qrt.toString($self)};
        macro byte __to_byte() $java{(byte)((Integer) ($self)).intValue()}
                               $py{($self)}
                               $rb{($self)}
                               $js{($self)};
        macro short __to_short() $java{(short) ((Integer) ($self)).intValue()}
                                 $py{($self)}
                                 $rb{($self)}
                                 $js{($self)};
        macro long __to_long() $java{new Long($self)}
                               $py{($self)}
                               $rb{($self)}
                               $js{($self)};
    }

    @mapping($java{Long} $py{int} $js{Number} $rb{::Integer})
    primitive long extends integral<long> {
        macro long() $java{new Long()}
                     $py{int()}
                     $rb{0}
                     $js{Number()};

        macro String toString() $java{Long.toString($self)}
                                $py{_toString($self)}
                                $rb{($self).to_s}
                                $js{_qrt.toString($self)};
        @deprecated("Long used in integer context will silently truncate the result. Please use truncateToInt() or reverse the operands.")
        macro int __to_int() $java{(int) ((Long) ($self)).intValue()}
                             $py{($self)}
                             $rb{($self)}
                             $js{($self)};
        macro int truncateToInt() $java{(int) ((Long) ($self)).intValue()}
                             $py{($self)}
                             $rb{($self)}
                             $js{($self)};
    }

    @mapping($java{Double} $py{float} $js{Number} $rb{::Float})
    primitive float extends numeric<float> {
        macro float __div__(float other) $java{($self) / ($other)}
                                         $py{float($self) / float($other)}
                                         $rb{($self) / ($other)}
                                         $js{($self) / ($other)};
        macro long round() $java{Math.round($self)}
                           $py{int(round($self))}
                           $rb{($self).round()}
                           $js{Math.round($self)};
        macro String toString() $java{Double.toString($self)}
                                $py{repr($self)}
                                $rb{($self).to_s}
                                $js{_qrt.toString($self)};
        macro JSONObject toJSON() new JSONObject().setNumber(self);
        macro JSONObject __to_JSONObject() self.toJSON();
    }


    interface Maybe<T> {
        T getValue();
        bool hasValue();
    }

    class ParsedNumber<T> extends Maybe<T> {
        static int MINUS = "-".ordAt(0);
        static int PLUS = "+".ordAt(0);
        static int ZERO = "0".ordAt(0);
        static int NINE = "9".ordAt(0);
        T _value;
        bool _hasValue = false;
        T getValue() { return self._value; }
        bool hasValue() { return self._hasValue; }
        long _parseLong(String num) {
            int i = 0;
            long val = 0;
            bool neg = false;
            if (i == num.size()) {
                return 0;
            }
            int first = num.ordAt(0);
            if (first == MINUS || first == PLUS) {
                neg = first == MINUS;
                i = i + 1;
            }
            if (i == num.size() ) {
                return 0;
            }
            while (i < num.size()) {
                int d = num.ordAt(i);
                if (d < ZERO || d > NINE) {
                    break;
                } else {
                    val = 10L * val + (d - ZERO);
                }
                i = i + 1;
            }
            self._hasValue = (i == num.size());
            if (neg) {
                return -val;
            } else {
                return val;
            }
        }
    }

    class ParsedInt extends ParsedNumber<int> {
         // XXX: -2147483648 produces -(2147483648) which is not valid java
        int MIN = -2147483647-1;
        int MAX = 2147483647;
        ParsedInt(String num) {
            long temp  = self._parseLong(num);
            if ( temp < self.MIN || temp > self.MAX ) {
                self._hasValue = false;
                if (temp < 0) {
                    self._value = self.MIN;
                } else {
                    self._value = self.MAX;
                }
            } else {
                self._value = temp.truncateToInt();
            }
        }
        macro int __to_int()  self.getValue();
    }

    class ParsedLong extends ParsedNumber<long> {
        ParsedLong(String num) {
            self._value = self._parseLong(num);
        }
        macro long __to_long()  self.getValue();
    }

    @mapping($java{String} $py{unicode} $js{String} $rb{::String})
    primitive String {
        macro String __add__(String other) ${($self) + ($other)};
        macro String __mul__(int count)    $java{new String(new char[Math.max(0, ($count))]).replace("\0", ($self))}
                                           $py{($self) * ($count)}
                                           $rb{($self) * [0, ($count)].max}
                                           $js{($self).repeat(Math.max(0, ($count)))};
        macro bool __lt__(String other)    $java{io.datawire.quark.runtime.StringUtils.lt(($self),($other))}
                                           $py{($self) < ($other)}
                                           $rb{($self) < ($other)}
                                           $js{($self) < ($other)};
        macro bool __le__(String other)    $java{io.datawire.quark.runtime.StringUtils.le(($self),($other))}
                                           $py{($self) <= ($other)}
                                           $rb{($self) <= ($other)}
                                           $js{($self) <= ($other)};
        macro bool __gt__(String other)    $java{io.datawire.quark.runtime.StringUtils.gt(($self),($other))}
                                           $py{($self) > ($other)}
                                           $rb{($self) > ($other)}
                                           $js{($self) > ($other)};
        macro bool __ge__(String other)    $java{io.datawire.quark.runtime.StringUtils.ge(($self),($other))}
                                           $py{($self) >= ($other)}
                                           $rb{($self) >= ($other)}
                                           $js{($self) >= ($other)};

        macro int size()                   $java{($self).length()}
                                           $py{len($self)}
                                           $rb{($self).size}
                                           $js{($self).length};
        macro String strip()               $java{($self).trim()}
                                           $py{($self).strip()}
                                           $rb{($self).strip}
                                           $js{($self).trim()};
        macro int ordAt(int index)         $java{($self).codePointAt($index)}
                                           $py{ord(unicode($self)[$index])}
                                           $rb{($self)[$index].ord}
                                           $js{($self).charCodeAt($index)};
        macro bool startsWith(String other) $java{Boolean.valueOf(($self).startsWith($other))}
                                           $py{($self).startswith($other)}
                                           $rb{($self).start_with?($other)}
                                           $js{(($self).indexOf($other)===0)};
        macro bool endsWith(String other)   $java{Boolean.valueOf(($self).endsWith($other))}
                                           $py{($self).endswith($other)}
                                           $rb{($self).end_with?($other)}
                                           $js{(($self).indexOf(($other), ($self).length - ($other).length) !== -1)};
        macro int find(String other)       $java{($self).indexOf($other)}
                                           $py{($self).find($other)}
                                           $rb{(($self).index($other) or -1)}
                                           $js{($self).indexOf($other)};
        macro String substring(int start, int end) $java{($self).substring(($start), ($end))}
                                                   $py{($self)[($start):($end)]}
                                                   $rb{($self)[($start)...($end)]}
                                                   $js{($self).substring(($start), ($end))};
        macro String replace(String from, String to) $java{($self).replaceFirst(java.util.regex.Pattern.quote($from), ($to))}
                                                     $py{($self).replace(($from), ($to), 1)}
                                                     $rb{($self).sub(($from), ($to))}
                                                     $js{($self).replace(($from), ($to))};
        macro List<String> split(String sep) $java{new java.util.ArrayList<String>(java.util.Arrays.asList(($self).split(java.util.regex.Pattern.quote($sep), -1)))}
                                             $py{($self).split($sep)}
                                             $rb{::DatawireQuarkCore.split($self, $sep)}
                                             $js{($self).split($sep)};
        macro String join(List<String> parts) $java{io.datawire.quark.runtime.Builtins.join(($self), ($parts))}
                                              $py{($self).join($parts)}
                                              $rb{($parts).join($self)}
                                              $js{($parts).join($self)};
        macro String toUpper() $java{($self).toUpperCase()}
                               $py{($self).upper()}
                               $rb{($self).upcase}
                               $js{($self).toUpperCase()};
        macro String toLower() $java{($self).toLowerCase()}
                               $py{($self).lower()}
                               $rb{($self).downcase}
                               $js{($self).toLowerCase()};
        macro JSONObject toJSON() new JSONObject().setString(self);
        macro JSONObject __to_JSONObject() self.toJSON();
        macro JSONObject parseJSON() $java{io.datawire.quark.runtime.JSONObject.parse($self)}
                                     $py{_JSONObject.parse($self)}
                                     $rb{::DatawireQuarkCore::JSONObject.parse($self)}
                                     $js{_qrt.json_from_string($self)};
        @doc("""Parse the string as a base-10 integer. leading and trailing whitespace
                is ignored.""")
        macro ParsedInt parseInt() new ParsedInt(self.strip());
        @doc("""Parse the string as a base-10 long. leading and trailing whitespace
                is ignored.

                Note: javascript does not support the full range of long""")
        macro ParsedLong parseLong() new ParsedLong(self.strip());

    }

    @doc("A stateless buffer of bytes. Default byte order is network byte order.")
    @mapping($java{io.datawire.quark.runtime.Buffer})
    primitive Buffer {
        @doc("capacity of the buffer")
        int capacity();

        @doc("read a byte at the specified index")
        byte getByte(int index);
        @doc("write a byte at the specified index")
        void putByte(int index, byte value);

        @doc("read a short at the specified index")
        short getShort(int index);
        @doc("write a short at the specified index")
        void putShort(int index, short value);

        @doc("read an int at the specified index")
        int getInt(int index);
        @doc("write an int at the specified index")
        void putInt(int index, int value);

        @doc("read a long at the specified index")
        long getLong(int index);
        @doc("write a long at the specified index")
        void putLong(int index, long value);

        @doc("read a float at the specified index")
        float getFloat(int index);
        @doc("write a float at the specified index")
        void putFloat(int index, float value);

        @doc("decode length bytes as a UTF8 string at the specified index")
        String getStringUTF8(int index, int length);
        @doc("write a string encoded in UTF8 at the specified index and return encoded length")
        int putStringUTF8(int index, String value);

        @doc("get a view of the range")
        Buffer getSlice(int index, int length);
        @doc("copy length bytes from the source buffer starting at offset to the specified index")
        void putSlice(int index, Buffer source, int offset, int length);

        @doc("get a littleEndian view of the same buffer")
        Buffer littleEndian();

        @doc("true if the buffer decodes in network byte order")
        bool isNetworkByteOrder();

    }

    @doc("Various String and Buffer conversion routines")
    @mapping($java{io.datawire.quark.runtime.Codec})
    primitive Codec {
        @doc("Create an empty buffer with the specified capacity")
        Buffer buffer(int capacity);

        @doc("Encode the specified slice of the buffer and insert a space every 2^spaceScale bytes")
        String toHexdump(Buffer buffer, int offeset, int length, int spaceScale);

        @doc("decode the hexdump ignoring leading 0x and any intervening spaces")
        Buffer fromHexdump(String hex);

        @doc("Encode the specified slice of the buffer as Base64")
        String toBase64(Buffer buffer, int offset, int length);

        @doc("decode the Base64 enccoded string")
        Buffer fromBase64(String base64);
    }

    class ListUtil<T> {
        List<T> slice(List<T> qlist, int start, int stop) {
            List<T> result = [];

            if (start >= qlist.size()) {
                start = qlist.size();
            } else {
                start = start % qlist.size();
            }

            if (stop >= qlist.size()) {
                stop = qlist.size();
            } else {
                stop = stop % qlist.size();
            }

            int idx = start;
            while (idx < stop) {
                result.add(qlist[idx]);
                idx = idx + 1;
            }

            return result;
        }
    }

    @mapping($java{java.util.ArrayList} $py{_List} $js{Array} $rb{::DatawireQuarkCore::List})
    primitive List<T> {
        macro void add(T element) $java{($self).add($element)}
                                  $py{($self).append($element)}
                                  $rb{($self) << ($element)}
                                  $js{($self).push($element)};
        macro void insert(int index, T element) $java{($self).add(($index), ($element))}
                                                $py{($self).insert(($index), ($element))}
                                                $rb{($self).insert(($index), ($element))}
                                                $js{($self).splice(($index), 0, ($element))};
        macro T __get__(int index) $java{($self).get($index)}
                                   $py{($self)[$index]}
                                   $rb{($self)[$index]}
                                   $js{($self)[$index]};
        macro void __set__(int index, T value) $java{($self).set(($index), ($value))}
                                               $py{($self)[$index] = ($value)}
                                               $rb{($self)[$index] = ($value)}
                                               $js{($self)[$index] = ($value)};
        @doc("Mutates the list, removing the element at the specified position.")
        @doc("Shifts any subsequent elements to the left (subtracts one from their indices).")
        @doc("Returns the element that was removed.")
        macro T remove(int index) $java{($self).remove((int)($index))}
                                  $py{($self).pop($index)}
                                  $rb{($self).delete_at($index)}
                                  $js{_qrt.list_remove(($self), ($index))};
        macro List<T> slice(int start, int stop) new ListUtil<T>().slice(self, start, stop);
        macro int size() $java{($self).size()}
                         $py{len($self)}
                         $rb{($self).size}
                         $js{($self).length};
        macro void sort() $java{java.util.Collections.sort($self, io.datawire.quark.runtime.Builtins.COMPARATOR)}
                          $py{($self).sort()}
                          $rb{($self).sort!}
                          $js{($self).sort()};
        macro JSONObject toJSON() quark.toJSON(self, self.getClass());
        macro JSONObject __to_JSONObject() self.toJSON();
    }

    @mapping($java{java.util.HashMap} $py{_Map} $js{Map} $rb{::Hash})
    primitive Map<K,V> {
        macro void __set__(K key, V value) $java{($self).put(($key), ($value))}
                                           $py{($self)[$key] = ($value)}
                                           $rb{($self)[$key] = ($value)}
                                           $js{($self).set(($key), ($value))};
        macro V __get__(K key) $java{($self).get($key)}
                               $py{($self).get($key)}
                               $rb{($self)[$key]}
                               $js{_qrt.map_get(($self), ($key))};
        @doc("Mutates the map, removing the specified key.")
        @doc("Returns the previous value associated with key, or null.")
        macro V remove(K key) $java{($self).remove($key)}
                              $py{_map_remove(($self), ($key))}
                              $rb{($self).delete($key)}
                              $js{_qrt.map_remove(($self), ($key))};
        macro bool contains(K key) $java{($self).containsKey($key)}
                                   $py{($key) in ($self)}
                                   $rb{($self).key?($key)}
                                   $js{($self).has($key)};
        macro List<K> keys() $java{new java.util.ArrayList(($self).keySet())}
                             $py{_List(list(($self).keys()))}
                             $rb{::DatawireQuarkCore::List.new(($self).keys)}
                             $js{Array.from(($self).keys())};
        macro void update(Map<K,V> other) $java{($self).putAll($other)}
                                          $py{($self).update($other)}
                                          $rb{($self).merge!($other)}
                                          $js{($other).forEach(function (v, k) { ($self).set(k, v); })};
        macro String urlencode() $java{io.datawire.quark.runtime.Builtins.urlencode($self)}
                                 $py{_urlencode($self)}
                                 $rb{::DatawireQuarkCore.urlencode($self)}
                                 $js{_qrt.urlencode($self)};
        macro JSONObject toJSON() quark.toJSON(self, self.getClass());
        macro JSONObject __to_JSONObject() self.toJSON();
    }

    interface UnaryCallable {
        // Quark subclasses should override this:
        Object call(Object arg);

        // To call a UnaryCallable call this, *not* call(), so that e.g. passed
        // in functions from native language work too.
        macro Object __call__(Object arg) $py{($self)($arg) if callable($self) else ($self).call($arg)}
        $js{_qrt.sanitize_undefined((($self) instanceof Function) ? ($self).call(($self), $arg) : ($self).call.call(($self), $arg))}
                                          $rb{($self).call($arg)}
                                          $java{($self).call($arg)};
    }

    @doc("Allow native code to call UnaryCallables.")
    Object callUnaryCallable(UnaryCallable callee, Object arg) {
        return callee.__call__(arg);
    }

namespace error {
    class Error {
        String message;
        Error(String message) {
            self.message = message;
        }
        String getMessage() {
            return message;
        }
        String toString() {
            return "Error("+self.message+")";
        }
    }
}
}
