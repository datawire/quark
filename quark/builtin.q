primitive Object {
    macro int __eq__(Object other) $java{($self).equals($other)}
                                   $py{($self) == ($other)}
                                   $js{($self) === ($other)};
    macro int __ne__(Object other) $java{!(($self).equals($other))}
                                   $py{($self) != ($other)}
                                   $js{($self) !== ($other)};
}

primitive void {}

primitive number {
    macro number __neg__() ${-($self)};
    macro number __add__(number other) ${($self) + ($other)};
    macro number __sub__(number other) ${($self) - ($other)};
    macro number __mul__(number other) ${($self) * ($other)};
    macro number __div__(number other) ${($self) / ($other)};
    macro number __lt__(number other) ${($self) < ($other)};
    macro number __gt__(number other) ${($self) > ($other)};
}

primitive int extends number {
    macro int __neg__() ${-($self)};
    macro int __div__(int other) $java{~((~($self)) / ($other))}
                                 $py{($self) / ($other)}
                                 $js{Math.floor(($self) / ($other))};
    macro int __mod__(int other) $java{Math.floorMod(($self), ($other))}
                                 $py{($self) % ($other)}
                                 $js{_qrt.modulo(($self), ($other))};
    macro String toString() $java{Integer.toString($self)}
                            $py{str($self)}
                            $js{_qrt.toString($self)};
    macro JSONObject toJSON() ${new JSONObject().setNumber($self)};
}

primitive long extends number {
    macro JSONObject toJSON() ${new JSONObject().setNumber($self)};
}

primitive float extends number {
    macro float __div__(float other) $java{($self) / ($other)}
                                     $py{float($self) / float($other)}
                                     $js{($self) / ($other)};
    macro String toString() $java{Double.toString($self)}
                            $py{str($self)}
                            $js{_qrt.toString($self)};
    macro JSONObject toJSON() ${new JSONObject().setNumber($self)};
}

primitive String {
    macro String __add__(String other) ${($self) + ($other)};
    macro JSONObject toJSON() ${new JSONObject().setString($self)};
    macro JSONObject parseJSON() $java{io.datawire.quark_runtime.jsonFromString($self)}
                                 $py{_json_from_string($self)}
                                 $js{_qrt.json_from_string($self)};
}

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
}

primitive JSONObject {
    JSONObject() {}                          // return new empty object of type null

    // accessors

    String     getType();                  // object/list/string/number/true/false/null
    JSONObject getObjectItem(String key);  // object accessor, may return undefined()
    macro JSONObject __get__(String key)   ${($self).getObjectItem($key)};
    JSONObject getListItem(int index);     // list accessor, may return undefined()
    String     getString();                // string accessor
    float      getNumber();                // number accessor
    int        getBool();                  // true/false accessor
    int        isNull();                   // null accessor
    JSONObject undefined();                // undefined object returend by object and list accessors

    // V2:
    // List<String> keys();                   // object keys or null if type is not 'object'
    // List<Pair<String,JSONObject>> items(); // object items or null if type is not 'object'
    // List<JSONObject> values();             // list values or null if type is not 'list'

    String     toString();              // serialize to json

    // returning self
    JSONObject setString(String value);      // set current object type to 'string' and set it's value
    JSONObject setNumber(float value);       // set current object type to 'number' and set it's value
    JSONObject setBool(int value);           // set current object type to 'true' or 'false'
    JSONObject setNull();                    // set current object type to 'null'

    JSONObject setObject();                  // set current object type to 'object', (for empty objects)
    JSONObject setList();                    // set current object type to 'list', 

    JSONObject setObjectItem(String key, JSONObject value); // set current object type to 'object' and set the key to value
    JSONObject setListItem(int index, JSONObject value);    // set current object type to 'list' and extend the list to index-1 with nulls and add value

    macro void __set__(String key, JSONObject value) ${ ($self).setObjectItem(($key), ($value))};
    // TODO a while bunch of __set__ overloads

    // V2:
    // JSONObject mergeMap(Map<String,Object> map); // set current object type to 'object' and merge in all map pairs
    // JSONObject mergeObject(JSONObject other);    // set current object type to 'object' and merge in all other.items()
    // JSONObject extendList(List<Object> list);    // set current object type to 'list' and extend with all list values
    // JSONObject extendObject(JSONObject other);   // set current object type to 'list' and extend with other.values()
}

macro void print(String msg) $java{System.out.println($msg)}
                             $py{_println($msg)}
                             $js{_qrt.print($msg)};

macro long now() $java{System.currentTimeMillis()}
                 $py{long(time.time()*1000)}
                 $js{Date.now()};

macro void sleep(float seconds) $java{io.datawire.quark_runtime.sleep($seconds)}
                                $py{time.sleep($seconds)}
                                $js{_qrt.sleep($seconds)};

macro String url_get(String url) $java{io.datawire.quark_runtime.url_get($url)}
                                 $py{_url_get($url)}
                                 $js{_qrt.url_get($url)};

macro int parseInt(String st) $java{Integer.parseInt($st)}
                              $py{int($st)}
                              $js{parseInt($st)};
