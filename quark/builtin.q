@mapping($java{Object} $py{object} $js{Object})
primitive Object {
    macro bool __eq__(Object other) $java{($self)==($other) || (($self) != null && ($self).equals($other))}
                                    $py{($self) == ($other)}
                                    $js{($self) === ($other)};
    macro bool __ne__(Object other) $java{!(($self)==($other) || (($self) != null && ($self).equals($other)))}
                                    $py{($self) != ($other)}
                                    $js{($self) !== ($other)};
}

primitive void {}

@mapping($java{Boolean} $py{bool} $js{Boolean})
primitive bool {
    macro bool __not__() $java{!($self)} $py{not ($self)} $js{!($self)};
    macro bool __and__(bool other) $java{($self) && ($other)}
                                   $py{($self) and ($other)}
                                   $js{($self) && ($other)};
    macro bool __or__(bool other) $java{($self) || ($other)}
                                  $py{($self) or ($other)}
                                  $js{($self) || ($other)};
    macro String toString() $java{($self).toString()} $py{str($self).lower()} $js{($self).toString()};
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
    macro bool __gt__(T other) ${($self) > ($other)};
}

primitive integral<T> extends numeric<T> {
    macro T __div__(T other) $java{~((~($self)) / ($other))}
                             $py{($self) / ($other)}
                             $js{Math.floor(($self) / ($other))};
    macro T __mod__(T other) $java{Math.floorMod(($self), ($other))}
                             $py{($self) % ($other)}
                             $js{_qrt.modulo(($self), ($other))};
    macro float toFloat() $java{Double.valueOf($self)} $py{float($self)} $js{($self)};
    macro JSONObject toJSON() new JSONObject().setNumber(self);
    macro JSONObject __to_JSONObject() self.toJSON();
}

@mapping($java{Byte} $py{int} $js{Number})
primitive byte extends integral<byte> {
    macro String toString() $java{Byte.toString($self)}
                            $py{str($self)}
                            $js{_qrt.toString($self)};
}


@mapping($java{Short} $py{int} $js{Number})
primitive short extends integral<short> {
    macro String toString() $java{Short.toString($self)}
                            $py{str($self)}
                            $js{_qrt.toString($self)};
}


@mapping($java{Integer} $py{int} $js{Number})
primitive int extends integral<int> {
    macro String toString() $java{Integer.toString($self)}
                            $py{str($self)}
                            $js{_qrt.toString($self)};
    macro byte __to_byte() self;
    macro short __to_short() self;
    macro long __to_long() self;
}

@mapping($java{Long} $py{long} $js{Number})
primitive long extends integral<long> {
    macro String toString() $java{Long.toString($self)}
                            $py{str($self)}
                            $js{_qrt.toString($self)};
}

@mapping($java{Double}$py{float}$js{Number})
primitive float extends numeric<float> {
    macro float __div__(float other) $java{($self) / ($other)}
                                     $py{float($self) / float($other)}
                                     $js{($self) / ($other)};
    macro long round() $java{Math.round($self)}
                       $py{long(round($self))}
                       $javascript{Math.round($self)};
    macro String toString() $java{Double.toString($self)}
                            $py{repr($self)}
                            $js{_qrt.toString($self)};
    macro JSONObject toJSON() new JSONObject().setNumber(self);
    macro JSONObject __to_JSONObject() self.toJSON();
}

@mapping($java{String} $py{str} $js{String})
primitive String {
    macro String __add__(String other) ${($self) + ($other)};
    macro int size()                   $java{($self).length()}
                                       $py{len($self)}
                                       $js{($self).length};
    macro bool startsWith(String other) $java{Boolean.valueOf(($self).startsWith($other))}
                                       $py{($self).startswith($other)}
                                       $js{(($self).indexOf($other)===0)};
    macro bool endsWith(String other)   $java{Boolean.valueOf(($self).endsWith($other))}
                                       $py{($self).endswith($other)}
                                       $js{(($self).indexOf(($other), ($self).length - ($other).length) !== -1)};
    macro int find(String other)       $java{($self).indexOf($other)}
                                       $py{($self).find($other)}
                                       $js{($self).indexOf($other)};
    macro String substring(int start, int end) $java{($self).substring(($start), ($end))}
                                               $py{($self)[($start):($end)]}
                                               $js{($self).substring(($start), ($end))};
    macro String replace(String from, String to) $java{($self).replaceFirst(java.util.regex.Pattern.quote($from), ($to))}
                                                 $py{($self).replace(($from), ($to), 1)}
                                                 $js{($self).replace(($from), ($to))};
    macro List<String> split(String sep) $java{new java.util.ArrayList<String>(java.util.Arrays.asList(($self).split(java.util.regex.Pattern.quote($sep), -1)))}
                                         $py{($self).split($sep)}
                                         $js{($self).split($sep)};
    macro String join(List<String> parts) $java{io.datawire.quark.runtime.Builtins.join(($self), ($parts))}
                                          $py{($self).join($parts)}
                                          $js{($parts).join($self)};
    macro JSONObject toJSON() new JSONObject().setString(self);
    macro JSONObject __to_JSONObject() self.toJSON();
    macro JSONObject parseJSON() $java{io.datawire.quark.runtime.JSONObject.parse($self)}
                                 $py{_JSONObject.parse($self)}
                                 $js{_qrt.json_from_string($self)};
}

@mapping($java{java.util.ArrayList} $py{_List} $js{Array})
primitive List<T> {
    macro void add(T element) $java{($self).add($element)}
                              $py{($self).append($element)}
                              $js{($self).push($element)};
    macro T __get__(int index) $java{($self).get($index)}
                               $py{($self)[$index]}
                               $js{($self)[$index]};
    macro void __set__(int index, T value) $java{($self).set(($index), ($value))}
                                           $py{($self)[$index] = ($value)}
                                           $js{($self)[$index] = ($value)};
    macro int size() $java{($self).size()}
                     $py{len($self)}
                     $js{($self).length};
}

@mapping($java{java.util.HashMap} $py{_Map} $js{Map})
primitive Map<K,V> {
    macro void __set__(K key, V value) $java{($self).put(($key), ($value))}
                                       $py{($self)[$key] = ($value)}
                                       $js{($self).set(($key), ($value))};
    macro V __get__(K key) $java{($self).get($key)}
                           $py{($self).get($key)}
                           $js{_qrt.map_get(($self), ($key))};
    macro int contains(K key) $java{($self).containsKey($key)}
                              $py{($key) in ($self)}
                              $js{($self).has($key)};
    macro void update(Map<K,V> other) $java{($self).putAll($other)}
                                      $py{($self).update($other)}
                                      $js{($other).forEach(function (v, k) { ($self).set(k, v); })};
    macro String urlencode() $java{io.datawire.quark.runtime.Builtins.urlencode($self)}
                             $py{_urlencode($self)}
                             $js{_qrt.urlencode($self)};
}

@mapping($java{io.datawire.quark.runtime.JSONObject} $py{_JSONObject} $js{_qrt.JSONObject})
primitive JSONObject {

    macro JSONObject() $java{new io.datawire.quark.runtime.JSONObject()}
                       $py{_JSONObject()}
                       $js{new _qrt.JSONObject()};

    macro String __to_String() self.getString();
    macro float __to_float() self.getNumber();
    macro int __to_int() $java{((int) Math.round(($self).getNumber()))}
                         $py{int(round(($self).getNumber()))}
                         $js{Math.round(($self).getNumber())};
    macro long __to_long() self.getNumber().round();
    macro bool __to_bool() self.getBool();

    // accessors

    String     getType();                  // object/list/string/number/boolean/null
    JSONObject getObjectItem(String key);  // object accessor, may return undefined()
    macro JSONObject __get__(String key)   ${($self).getObjectItem($key)};
    JSONObject getListItem(int index);     // list accessor, may return undefined()
    String     getString();                // string accessor
    float      getNumber();                // number accessor
    bool       getBool();                  // true/false accessor
    bool       isNull();                   // null accessor
    bool       isDefined();
    bool       isUndefined();
    JSONObject undefined();                // undefined object returend by object and list accessors

    // V2:
    // List<String> keys();                   // object keys or null if type is not 'object'
    // List<Pair<String,JSONObject>> items(); // object items or null if type is not 'object'
    // List<JSONObject> values();             // list values or null if type is not 'list'

    String     toString();              // serialize to json

    // returning self
    JSONObject setString(String value);      // set current object type to 'string' and set it's value
    JSONObject setNumber(Object value);       // set current object type to 'number' and set it's value
    JSONObject setBool(bool value);           // set current object type to 'true' or 'false'
    JSONObject setNull();                    // set current object type to 'null'

    JSONObject setObject();                  // set current object type to 'object', (for empty objects)
    JSONObject setList();                    // set current object type to 'list', (for empty lists)

    JSONObject setObjectItem(String key, JSONObject value); // set current object type to 'object' and set the key to value
    JSONObject setListItem(int index, JSONObject value);    // set current object type to 'list' and extend the list to index-1 with nulls and add value

    macro void __set__(String key, JSONObject value) ${($self).setObjectItem(($key), ($value))};
    // TODO a while bunch of __set__ overloads

    // V2:
    // JSONObject mergeMap(Map<String,Object> map); // set current object type to 'object' and merge in all map pairs
    // JSONObject mergeObject(JSONObject other);    // set current object type to 'object' and merge in all other.items()
    // JSONObject extendList(List<Object> list);    // set current object type to 'list' and extend with all list values
    // JSONObject extendObject(JSONObject other);   // set current object type to 'list' and extend with other.values()
}

macro void print(Object msg) $java{System.out.println($msg)}
                             $py{_println($msg)}
                             $js{_qrt.print($msg)};

macro long now() $java{System.currentTimeMillis()}
                 $py{long(time.time()*1000)}
                 $js{Date.now()};

macro void sleep(float seconds) $java{io.datawire.quark.runtime.Builtins.sleep($seconds)}
                                $py{time.sleep($seconds)}
                                $js{_qrt.sleep($seconds)};

macro String url_get(String url) $java{io.datawire.quark.runtime.Builtins.url_get($url)}
                                 $py{_url_get($url)}
                                 $js{_qrt.url_get($url)};

macro int parseInt(String st) $java{Integer.parseInt($st)}
                              $py{int($st)}
                              $js{parseInt($st)};

macro Codec defaultCodec() $java{io.datawire.quark.runtime.Builtins.defaultCodec()}
                           $py{_default_codec()}
                           $js{_qrt.defaultCodec()};

@mapping($java{io.datawire.quark.runtime.WSHandler})
primitive WSHandler {
    void onWSInit(WebSocket socket) {}
    void onWSConnected(WebSocket socket) {}
    void onWSMessage(WebSocket socket, String message) {}
    void onWSBinary(WebSocket socket, Buffer message) {}
    void onWSClosed(WebSocket socket) {}
    void onWSError(WebSocket socket) {}
    void onWSFinal(WebSocket socket) {}
}

@mapping($java{io.datawire.quark.runtime.WebSocket})
primitive WebSocket {
    void send(String message);
    void sendBinary(Buffer bytes);
}

@mapping($java{io.datawire.quark.runtime.HTTPHandler})
primitive HTTPHandler {
    void onHTTPInit(HTTPRequest request) {}
    void onHTTPResponse(HTTPRequest request, HTTPResponse response) {}
    void onHTTPError(HTTPRequest request) {}
    void onHTTPFinal(HTTPRequest request) {}
}

@mapping($java{io.datawire.quark.runtime.HTTPRequest})
primitive HTTPRequest {
    macro HTTPRequest(String url) $java{new io.datawire.quark.runtime.HTTPRequest($url)} $py{_HTTPRequest($url)} $js{new _qrt.HTTPRequest($url)};
    void setMethod(String method);
    void setBody(String data);
    void setHeader(String key, String value);
}

@mapping($java{io.datawire.quark.runtime.HTTPResponse})
primitive HTTPResponse {
    int getCode();
    String getBody();
}

@mapping($java{io.datawire.quark.runtime.Task})
primitive Task {
    void onExecute(Runtime runtime);
}

@mapping($java{io.datawire.quark.runtime.Runtime})
primitive Runtime {
    void acquire();
    void release();
    void wait(float timeoutInSeconds);
    void open(String url, WSHandler handler);
    void request(HTTPRequest request, HTTPHandler handler);
    void schedule(Task handler, float delayInSeconds);
    Codec codec();
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
