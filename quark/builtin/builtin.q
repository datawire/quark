use js ws 1.0;
include quark_runtime.js;
include quark_node_runtime.js;

use py ws4py 0.3.*;
include quark_runtime.py;
include quark_threaded_runtime.py;
include quark_ws4py_fixup.py;

use java com.fasterxml.jackson.jr jackson-jr-objects 2.5.3;
use java io.netty netty-all 4.0.32.Final;
use java junit junit 4.12;
include io/datawire/quark/runtime/AbstractDatawireRuntime.java;
include io/datawire/quark/runtime/AbstractHTTPHandler.java;
include io/datawire/quark/runtime/AbstractWSHandler.java;
include io/datawire/quark/runtime/Buffer.java;
include io/datawire/quark/runtime/BufferImpl.java;
include io/datawire/quark/runtime/Builtins.java;
include io/datawire/quark/runtime/ClientHTTPRequest.java;
include io/datawire/quark/runtime/Codec.java;
include io/datawire/quark/runtime/Condition.java;
include io/datawire/quark/runtime/HTTPHandler.java;
include io/datawire/quark/runtime/HTTPRequest.java;
include io/datawire/quark/runtime/HTTPResponse.java;
include io/datawire/quark/runtime/HTTPServlet.java;
include io/datawire/quark/runtime/JSONObject.java;
include io/datawire/quark/runtime/Lock.java;
include io/datawire/quark/runtime/Mutex.java;
include io/datawire/quark/runtime/QObject.java;
include io/datawire/quark/runtime/Runtime.java;
include io/datawire/quark/runtime/Servlet.java;
include io/datawire/quark/runtime/Task.java;
include io/datawire/quark/runtime/TLS.java;
include io/datawire/quark/runtime/TLSInitializer.java;
include io/datawire/quark/runtime/WebSocket.java;
include io/datawire/quark/runtime/WSHandler.java;
include io/datawire/quark/runtime/WSServlet.java;
include io/datawire/quark/netty/DatawireNettyHttpContainer.java;
include io/datawire/quark/netty/IncomingRequest.java;
include io/datawire/quark/netty/QuarkNettyClientWebsocket.java;
include io/datawire/quark/netty/QuarkNettyHttpHandler.java;
include io/datawire/quark/netty/QuarkNettyRuntime.java;
include io/datawire/quark/netty/QuarkNettyServerWebsocket.java;
include io/datawire/quark/netty/QuarkWebSocket.java;
include io/datawire/quark/netty/Response.java;

namespace builtin {
    @mapping($java{Object} $py{object} $js{Object})
    primitive Object {
        macro bool __eq__(Object other) $java{($self)==($other) || (($self) != null && ($self).equals($other))}
                                        $py{($self) == ($other)}
                                        $js{($self) === ($other)};
        macro bool __ne__(Object other) $java{!(($self)==($other) || (($self) != null && ($self).equals($other)))}
                                        $py{($self) != ($other)}
                                        $js{($self) !== ($other)};

        macro reflect.Class getClass() reflect.Class.get($java{io.datawire.quark.runtime.Builtins._getClass($self)}
                                                         $py{_getClass($self)}
                                                         $js{_qrt._getClass($self)});
        macro Object getField(String name) $java{((io.datawire.quark.runtime.QObject) ($self))._getField($name)}
                                           $py{($self)._getField($name)}
                                           $js{($self)._getField($name)};
        macro void setField(String name, Object value) $java{((io.datawire.quark.runtime.QObject) ($self))._setField($name, $value)}
                                                       $py{($self)._setField(($name), ($value))}
                                                       $js{($self)._setField(($name), ($value))};
    }

    @mapping($java{void})
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
        macro bool __le__(T other) ${($self) <= ($other)};
        macro bool __gt__(T other) ${($self) > ($other)};
        macro bool __ge__(T other) ${($self) >= ($other)};
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
        macro long __to_long() $java{new Long($self)}
                               $py{($self)}
                               $js{($self)};
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
        macro void sort() $java{java.util.Collections.sort($self)}
                          $py{($self).sort()}
                          $js{($self).sort()};
    }

    @mapping($java{java.util.HashMap} $py{_Map} $js{Map})
    primitive Map<K,V> {
        macro void __set__(K key, V value) $java{($self).put(($key), ($value))}
                                           $py{($self)[$key] = ($value)}
                                           $js{($self).set(($key), ($value))};
        macro V __get__(K key) $java{($self).get($key)}
                               $py{($self).get($key)}
                               $js{_qrt.map_get(($self), ($key))};
        macro bool contains(K key) $java{($self).containsKey($key)}
                                   $py{($key) in ($self)}
                                   $js{($self).has($key)};
        macro List<K> keys() $java{new java.util.ArrayList(($self).keySet())}
                             $py{_List(($self).keys())}
                             $js{Array.from(($self).keys())};
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
        int        size();
        String     getString();                // string accessor
        bool       isString();
        float      getNumber();                // number accessor
        bool       isNumber();
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

    macro void print(Object msg) $java{do{System.out.println($msg);System.out.flush();}while(false)}
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
        bool send(String message);
        bool sendBinary(Buffer bytes);
        bool close();
    }

    @mapping($java{io.datawire.quark.runtime.HTTPHandler})
    primitive HTTPHandler {
        void onHTTPInit(HTTPRequest request) {}
        void onHTTPResponse(HTTPRequest request, HTTPResponse response) {}
        void onHTTPError(HTTPRequest request, String message) {}
        void onHTTPFinal(HTTPRequest request) {}
    }

    @mapping($java{io.datawire.quark.runtime.HTTPRequest})
    primitive HTTPRequest {
        macro HTTPRequest(String url) $java{new io.datawire.quark.runtime.ClientHTTPRequest($url)} $py{_HTTPRequest($url)} $js{new _qrt.HTTPRequest($url)};
        String getUrl();
        void setMethod(String method);
        String getMethod();
        void setBody(String data);
        String getBody();
        void setHeader(String key, String value);
        String getHeader(String key);
        List<String> getHeaders();
    }

    @mapping($java{io.datawire.quark.runtime.HTTPResponse})
    primitive HTTPResponse {
        int getCode();
        void setCode(int code);
        String getBody();
        void setBody(String body);
        void setHeader(String key, String value);
        String getHeader(String key);
        List<String> getHeaders();
    }

    @mapping($java{io.datawire.quark.runtime.Task})
    primitive Task {
        void onExecute(Runtime runtime); // XXX: right now, context is not
                                         // restored for these. We should
                                         // offer a context-aware
                                         // scheduling API on top and have
                                         // this as internal thing
    }

    @mapping($java{io.datawire.quark.runtime.Runtime})
    primitive Runtime {
        macro Runtime() $java{io.datawire.quark.runtime.Runtime.Factory.create()}
                        $py{_RuntimeFactory.create()}
                        $js{_qrt.RuntimeFactory.create()};
        void open(String url, WSHandler handler);
        void request(HTTPRequest request, HTTPHandler handler);
        void schedule(Task handler, float delayInSeconds);
        Codec codec();
        void serveHTTP(String url, HTTPServlet servlet);
        void serveWS(String url, WSServlet servlet);
        void respond(HTTPRequest request, HTTPResponse response);

        @doc("Display the explanatory message and then terminate the program")
        void fail(String message);
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

    @doc("A service addresable with an url")
    @mapping($java{io.datawire.quark.runtime.Servlet})
    primitive Servlet {
        @doc("called after the servlet is successfully installed. The url will be the actual url used, important especially if ephemeral port was requested")
        void onServletInit(String url, Runtime runtime) {}
        @doc("called if the servlet could not be installed")
        void onServletError(String url, String error) {}
        @doc("called when the servlet is removed")
        void onServletEnd(String url) {}
    }

    @doc("Http servlet")
    @mapping($java{io.datawire.quark.runtime.HTTPServlet})
    primitive HTTPServlet extends Servlet {
        @doc("incoming request. respond with Runtime.respond(). After responding the objects may get recycled by the runtime")
        void onHTTPRequest(HTTPRequest request, HTTPResponse response) {}

        void serveHTTP(String url) { concurrent.Context.runtime().serveHTTP(url, self); }
    }

    @doc("Websocket servlet")
    @mapping($java{io.datawire.quark.runtime.WSServlet})
    primitive WSServlet extends Servlet {
        @doc("called for each new incoming WebSocket connection")
        WSHandler onWSConnect(HTTPRequest upgrade_request) { return null; }

        void serveWS(String url) { concurrent.Context.runtime().serveWS(url, self); }
    }

    @doc("Serializes object tree into JSON. skips over fields starting with underscore")
    JSONObject toJSON(Object obj, reflect.Class cls) {
        JSONObject result = new JSONObject();
        if (obj == null) {
            result.setNull();
            return result;
        }

        if (cls == null) {
            cls = obj.getClass();
        }

        int idx = 0;

        if (cls.name == "builtin.String") {
            result.setString(?obj);
            return result;
        }

        if (cls.name == "builtin.byte" ||
            cls.name == "builtin.short" ||
            cls.name == "builtin.int" ||
            cls.name == "builtin.long" ||
            cls.name == "builtin.float") {
            result.setNumber(obj);
            return result;
        }

        if (cls.name == "builtin.List") {
            result.setList();
            List<Object> list = ?obj;
            while (idx < list.size()) {
                result.setListItem(idx, toJSON(list[idx], null));
                idx = idx + 1;
            }
            return result;
        }

        if (cls.name == "builtin.Map") {
            result.setObject();
            Map<String,Object> map = ?obj;
            // XXX: need more JSON APIs to actually finish this
            return result;
        }

        result["$class"] = cls;
        List<reflect.Field> fields = cls.getFields();
        while (idx < fields.size()) {
            String fieldName = fields[idx].name;
            if (!fieldName.startsWith("_")) {
                result[fieldName] = toJSON(obj.getField(fieldName), fields[idx].getType());
            }
            idx = idx + 1;
        }
        return result;
    }

    @doc("deserialize json into provided result object. Skip over fields starting with underscore")
    Object fromJSON(Object result, JSONObject json) {
        if (json == null || json.isNull()) { return null; }
        int idx = 0;
        reflect.Class cls = result.getClass();
        if (cls.name == "builtin.List") {
            List<Object> list = ?result;
            while (idx < json.size()) {
                list.add(fromJSON(cls.parameters[0].construct([]), json.getListItem(idx)));
                idx = idx + 1;
            }
            return list;
        }

        List<reflect.Field> fields = cls.getFields();
        while (idx < fields.size()) {
            reflect.Field f = fields[idx];
            idx = idx + 1;
            if (f.name.startsWith("_")) {
                continue;
            }
            if (f.getType().name == "builtin.String") {
                String s = json[f.name];
                result.setField(f.name, s);
                continue;
            }
            if (f.getType().name == "builtin.float") {
                float flt = json[f.name];
                result.setField(f.name, flt);
                continue;
            }
            if (f.getType().name == "builtin.int") {
                if (!json[f.name].isNull()) {
                    int i = json[f.name];
                    result.setField(f.name, i);
                }
                continue;
            }
            if (f.getType().name == "builtin.bool") {
                if (!json[f.name].isNull()) {
                    bool b = json[f.name];
                    result.setField(f.name, b);
                }
                continue;
            }
            result.setField(f.name, fromJSON(f.getType().construct([]), json[f.name]));
        }
        return result;
    }

    class ResponseHolder extends HTTPHandler {
        HTTPResponse response;
        String failure = null;

        void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
            self.response = response;
        }

        void onHTTPError(HTTPRequest request, String message) {
            failure = message;
        }

    }

    interface Service {

        String getURL();
        long getTimeout();

        concurrent.Future rpc(String name, Object message, List<Object> options) {
            behaviors.RPC rpc = new behaviors.RPC(self, name, options); // this could be allocated once per delegate instantiation
            return rpc.call(message);
        }
    }



    class Client {

        String url;
        long timeout;

        Client(String url) {
            self.url = url;
            self.timeout = 0;
        }

        String getURL() { return self.url; }
        long getTimeout() { return self.timeout; }
        void setTimeout(long timeout) {
            self.timeout = timeout;
        }

    }

    class ServerResponder extends concurrent.FutureListener {
        HTTPRequest request;
        HTTPResponse response;
        ServerResponder(HTTPRequest request, HTTPResponse response) {
            self.request = request;
            self.response = response;
        }

        void onFuture(concurrent.Future result) {
            String error = result.getError();
            if (error != null) {
                response.setCode(404);
            } else {
                self.response.setBody(toJSON(result, null).toString());
                self.response.setCode(200);
            }
            concurrent.Context.runtime().respond(request, response);
        }
    }

    class Server<T> extends HTTPServlet {

        T impl;

        Server(T impl) {
            self.impl = impl;
        }

        void onHTTPRequest(HTTPRequest request, HTTPResponse response) {
            String body = request.getBody();
            JSONObject envelope = body.parseJSON();
            if (envelope["$method"] == envelope.undefined() ||
                envelope["rpc"] == envelope.undefined() ||
                envelope["rpc"]["$class"] == envelope["rpc"].undefined()) {
                response.setBody("Failed to understand request.\n\n" + body + "\n");
                response.setCode(400);
                concurrent.Context.runtime().respond(request, response);
            } else {
                String methodName = envelope["$method"];
                JSONObject json = envelope["rpc"];
                // XXX: contexty stuff
                reflect.Method method = self.getClass().getField("impl").getType().getMethod(methodName);
                reflect.Class argType = reflect.Class.get(method.parameters[0]);
                Object arg = argType.construct([]);
                Object argument = fromJSON(arg, json);
                concurrent.Future result = ?method.invoke(impl,[argument]);
                result.onFinished(new ServerResponder(request, response));
                // XXX: we should also start a timeout here if the impl does not .finish() the result
            }
        }

        void onServletError(String url, String message) {
            concurrent.Context.runtime().fail("RPC Server failed to register " + url + " due to: " + message);
        }

    }

package reflect {

    class Class {

        static Map<String,Class> classes = {};

        static Class VOID = new Class("builtin.void");
        static Class BOOL = new Class("builtin.bool");
        static Class INT = new Class("builtin.int");
        static Class LONG = new Class("builtin.long");
        static Class STRING = new Class("builtin.String");

        static Class get(String id) {
            return classes[id];
        }

        String id;
        String name;
        List<Class> parameters = [];
        List<Field> fields = [];
        List<Method> methods = [];

        Class(String id) {
            self.id = id;
            classes[id] = self;
            self.name = id;
        }

        String getId() {
            return id;
        }

        String getName() {
            return name;
        }

        List<Class> getParameters() {
            return parameters;
        }

        Object construct(List<Object> args) { return null; }

        List<Field> getFields() { return fields; }

        Field getField(String name) {
            int idx = 0;
            while (idx < fields.size()) {
                if (fields[idx].name == name) {
                    return fields[idx];
                }
                idx = idx + 1;
            }
            return null;
        }

        List<Method> getMethods() { return methods; }

        Method getMethod(String name) {
            int idx = 0;
            while (idx < methods.size()) {
                if (methods[idx].name == name) {
                    return methods[idx];
                }
                idx = idx + 1;
            }
            return null;
        }


        macro JSONObject toJSON() new JSONObject().setString(self.id);
        macro JSONObject __to_JSONObject() self.toJSON();

    }

    class Field {
        String type;
        String name;

        Field(String type, String name) {
            self.type = type;
            self.name = name;
        }

        Class getType() {
            return Class.get(type);
        }

        String getName() {
            return name;
        }
    }

    class Method {
        String type;
        String name;
        List<String> parameters;

        Method(String type, String name, List<String> parameters) {
            self.type = type;
            self.name = name;
            self.parameters = parameters;
        }

        Class getType() {
            return Class.get(type);
        }

        String getName() {
            return name;
        }

        List<Class> getParameters() {
            List<Class> result = [];
            int idx = 0;
            while (idx < parameters.size()) {
                result.add(Class.get(parameters[idx]));
                idx = idx + 1;
            }
            return result;
        }

        Object invoke(Object object, List<Object> args);
    }

}

package behaviors {

    // an instance of this could be the target of the @delegate annotation.
    class RPC {
        Service service;
        reflect.Class returned;
        long timeout;
        String name;

        RPC(Service service, String name, List<Object> options) {
            long timeout = service.getTimeout();
            if (options.size() > 0) {
                Map<String,Object> map = ?options[0];
                int override = ?map["timeout"];
                if (override != null) {
                    timeout = override;
                }
            }
            self.returned = service.getClass().getMethod(name).getType();
            self.timeout = timeout;
            self.name = name;
            self.service = service;
        }

        concurrent.Future call(Object message) {
            HTTPRequest request = new HTTPRequest(self.service.getURL());
            // XXX: assume message is not a Future, or at least not a pending one
            JSONObject json = toJSON(message, null);
            JSONObject envelope = new JSONObject();
            envelope["$method"] = self.name;
            envelope["$context"] = "TBD"; // XXX: serialize intersting bits of the context (define interesting while there)
            envelope["rpc"] = json;
            request.setBody(envelope.toString());
            request.setMethod("POST");


            RPCRequest rpc = new RPCRequest(message, self);

            concurrent.Future result = rpc.call(request);
            concurrent.FutureWait.waitFor(result, 1000);
            // XXX: sync users still need to check result.getError()...
            return result;
        }

    }

    class RPCRequest extends HTTPHandler,  concurrent.TimeoutListener {
        RPC rpc;
        concurrent.Future retval;
        Object message;
        concurrent.Timeout timeout;
        RPCRequest(Object message, RPC rpc) {
            self.retval = ?rpc.returned.construct([]); // capture current context;
            self.message = message;
            self.timeout = new concurrent.Timeout(rpc.timeout);
            self.rpc = rpc;
        }

        concurrent.Future call(HTTPRequest request) {
            self.timeout.start(self);
            concurrent.Context.runtime().request(request, self);
            return self.retval;

        }

        void onHTTPResponse(HTTPRequest rq, HTTPResponse response) {
            self.timeout.cancel(); // technically not strictly necessary as future fires only once

            if (response.getCode() != 200) {
                self.retval.finish("RPC " + self.rpc.name + "(...) failed: Server returned error " + response.getCode().toString());
                return;
            }

            String body = response.getBody();
            JSONObject obj = body.parseJSON();
            String classname = obj["$class"];
            if (classname == null) {
                self.retval.finish("RPC " + self.rpc.name + "(...) failed: Server returned unrecognizable content");
                return;
            } else {
                fromJSON(self.retval, obj);
                self.retval.finish(null);
            }
        }

        void onTimeout(concurrent.Timeout timeout) {
            self.retval.finish("request timed out");
        }
    }

}

package concurrent {

    @doc("The contract between event implementations and Collector")
    interface Event {
        EventContext getContext();
        void fireEvent();
    }

    @doc("event handler for a future completion")
    interface FutureListener {
        void onFuture(Future future) {}
    }

    @doc("internal class that binds a listener to a future")
    class FutureCompletion extends Event {
        Future future;
        FutureListener listener;
        FutureCompletion(Future future, FutureListener listener) {
            self.future = future;
            self.listener = listener;
        }
        EventContext getContext() {
            return self.future;
        }
        void fireEvent() {
            self.listener.onFuture(self.future);
        }
    }

    @doc("Captures the current context, base class for all event source implementations")
    class EventContext {
        Context _context;
        EventContext() {
            self._context = Context.current();
        }
        Context getContext() { return self._context; }
    }

    @doc("The base class for value objects")
    class Future extends EventContext {
        bool _finished;
        String _error;
        List<FutureCompletion> _callbacks;
        Lock _lock;
        Future() {
            self._finished = false;
            self._callbacks = null;
            self._lock = new Lock();
        }
        void onFinished(FutureListener callback) {
            self._lock.acquire(); // XXX: block-scoped locks, pleeze
            if (self._finished) {
                self._context.collector.put(new FutureCompletion(self, callback));
            } else {
                if (self._callbacks == null) {
                    self._callbacks = [];
                }
                self._callbacks.add(new FutureCompletion(self, callback));
            }
            self._lock.release();
        }
        void finish(String error) {
            List<FutureCompletion> callbacks = null;
            self._lock.acquire();
            if (!self._finished) {
                self._finished = true;
                self._error = error;
                callbacks = self._callbacks; // transfer to local
                self._callbacks = null;
            }
            self._lock.release();
            if (callbacks != null) {
                int i = 0;
                while (i < callbacks.size()) {
                    self._context.collector.put(callbacks[i]);
                    i = i + 1;
                }
            }
        }
        bool isFinished() {
            self._lock.acquire();
            bool finished = self._finished;
            self._lock.release();
            return finished;
        }

        String getError() {
            self._lock.acquire();
            String error = self._error;
            self._lock.release();
            return error;
        }
    }

    @doc("Synchronization point for a Future.)")
    class FutureWait extends FutureListener {
        Condition _lock;
        Future _future;
        FutureWait() {
            self._lock = new Condition();
            self._future = null;
        }
        // TODO: make sure not to call from a runtime thread (implies
        // anywhere in Node
        void wait(Future future, long timeout) {
            if (future.isFinished()) {
                return;
            }
            self._future = future;
            self._future.onFinished(self);
            long deadline = now() + timeout;
            while(!self._future.isFinished()) {
                long remaining = deadline - now();
                if (timeout != 0) {
                    if (remaining <= 0) {
                        break;
                    }
                } else {
                    remaining = 3141;
                }
                self._lock.acquire();
                self._lock.waitWakeup(remaining);
                self._lock.release();
            }
            self._future = null;
        }
        void onFuture(Future future) {
            self._lock.acquire();
            self._lock.wakeup();
            self._lock.release();
        }

        static Future waitFor(Future future, long timeout) {
            // XXX: probably check if current thread is allowed to
            // wait -- which should never be true for quark threads
            // and configurable for user threads, probably through a
            // context, or through a dedicated TLS
            if (false) {
                // TODO: it should be possible to reuse a FutureWait and have one per thread
                FutureWait w = new FutureWait();
                w.wait(future, timeout);
                if (!future.isFinished()) {
                    // XXX: sync contract is broken if there was timeout. fail the future?
                }
            }
            return future;
        }
    }

    @doc("A simple FIFO")
    class Queue<T> {
        List<T> items;
        int head;
        int tail;
        Queue() {
            self.items = new List<T>();
            self.head = 0;
            self.tail = 0;
        }
        void put(T item) {
            if (self.tail < self.items.size()) {
                self.items[self.tail] = item;
            } else {
                self.items.add(item);
            }
            self.tail = self.tail + 1;
        }

        T get() {
            T item = null;
            if (self.head < self.tail) {
                item = self.items[self.head];
                self.head = self.head + 1;
            } else {
                if (self.head > 0) {
                    self.head = 0;
                    self.tail = 0;
                }
            }
            return item;
        }
        int size() {
            return self.tail - self.head;
        }
    }

    @doc("Fire events one by one with no locks held")
    class CollectorExecutor extends Task {
        Queue<Event> events;
        Collector collector;
        CollectorExecutor(Collector collector) {
            self.events = new Queue<Event>();
            self.collector = collector;
        }
        void _start() {
            // internal method, always called under a collector lock
            self.events = self.collector._swap(self.events);
            if (self.events.size() > 0) {
                concurrent.Context.runtime().schedule(self, 0.0);
            }
        }
        void onExecute(Runtime runtime) {
            Event next = self.events.get();
            Context old = Context.current();
            while(next != null) {
                Context.swap(next.getContext().getContext());
                next.fireEvent();
                next = self.events.get();
            }
            Context.swap(old);
            self.collector._poll(); // rearm for events that accumulated in the meantime
        }
    }

    @doc("An active queue of events. Each event will fire sequentially, one by one. Multiple instances of Collector are not serialized with eachother and may run in parallel.")
    class Collector {
        Lock lock;
        Queue<Event> pending;
        CollectorExecutor executor;
        bool idle;
        Collector() {
            self.lock = new Lock();
            self.pending = new Queue<Event>();
            self.executor = new CollectorExecutor(self);
            self.idle = true;
        }
        void put(Event event) {
            self.lock.acquire();
            self.pending.put(event);
            if (self.idle) {
                self.executor._start();
            }
            self.lock.release();
        }
        Queue<Event> _swap(Queue<Event> drained) {
            // internal method, always called under a lock
            Queue<Event> pending = self.pending;
            self.idle = pending.size() == 0;
            self.pending = drained;
            return pending;
        }
        void _poll() {
            // internal method
            self.lock.acquire();
            self.executor._start();
            self.lock.release();
        }
    }

    @doc("Timeout expiry handler")
    interface TimeoutListener {
        void onTimeout(Timeout timeout);
    }

    @doc("Timeout expiry event")
    class TimeoutExpiry extends Event {
       Timeout timeout;
       TimeoutListener listener;
       TimeoutExpiry(Timeout timeout, TimeoutListener listener) {
           self.timeout = timeout;
           self.listener = listener;
       }
       EventContext getContext() {
           return self.timeout;
       }
       void fireEvent() {
           self.listener.onTimeout(self.timeout);
       }
    }

    @doc("Timeout")
    class Timeout extends EventContext, Task {
        long timeout;
        Lock lock;
        TimeoutListener listener;
        Timeout(long timeout) {
            self.timeout = timeout;
            self.listener = null;
            self.lock = new Lock();
        }
        void start(TimeoutListener listener) {
            self.listener = listener;
            float delay = 0.001 * self.timeout.toFloat();
            concurrent.Context.runtime().schedule(self, delay);
        }
        void cancel() {
            self.lock.acquire();
            self.listener = null;
            self.lock.release();
        }

        void onExecute(Runtime runtime) {
            self.lock.acquire();
            if (self.listener != null) {
                self._context.collector.put(new TimeoutExpiry(self, self.listener));
                self.listener = null;
            }
            self.lock.release();
        }
    }

    @doc("internal")
    class TLSContextInitializer extends TLSInitializer<Context> {
        Context getValue() {
            return new Context(Context.global());
        }
    }

    @doc("The logical stack for async stuff.")
    class Context {
        static Context _global = new Context(null);
        static TLS<Context> _current = new TLS<Context>(new TLSContextInitializer());
        static Context current() {
            return _current.getValue();
        }
        static Context global() {
            return _global;
        }

        static Runtime runtime() {
            return current()._runtime;
        }

        static void swap(Context c) {
            _current.setValue(c);
        }

        // XXX: push / pop ?  seems like it would be best if
        // push/pop were balanced automatically -- they only need to
        // be balanced at the point of push, async method will be
        // switch-to the right leaf by the collector

        // nested Context leave cleanup to GC -- we do not track events associated with a context

        // XXX: user data storage: a map?
        //  - keyed by Object?
        //  - by string?
        //  - by class?
        //  - hidden by flyweight accessor / annotations (key object offering typesafe get/set methods)
        //  - magically mapped to static-like properties? "<magic> String foo;" carries enough information

        Context(Context parent) {
            self._parent = parent;
            if (parent == null) {
                // global context
                self._runtime = new Runtime();
                self.collector = new Collector();
            } else {
                self._runtime = parent._runtime;
                self.collector = parent.collector;
            }
        }

        // XXX: should these be also stored using the same mechanism as user data?
        Context _parent;
        Runtime _runtime;
        Collector collector;
    }

    @mapping($java{io.datawire.quark.runtime.TLSInitializer} $py{_TLSInitializer} $js{_qrt.TLSInitializer})
    primitive TLSInitializer<T> {
        T getValue();
    }

    @mapping($java{io.datawire.quark.runtime.TLS} $py{_TLS} $js{_qrt.TLS})
    primitive TLS<Context> {
        // FIXME: work around the compiler bug by renaming the template parameter to the only user
        macro TLS(TLSInitializer<Context> initializer) $java{new io.datawire.quark.runtime.TLS($initializer)}
                                                       $py{_TLS($initializer)}
                                                       $js{new _qrt.TLS($initializer)};
        Context getValue();
        void setValue(Context c);
    }

    @mapping($java{io.datawire.quark.runtime.Mutex} $py{_Mutex} $js{_qrt.Mutex})
    primitive Mutex {
        void acquire();
        void release();
    }

    @mapping($java{io.datawire.quark.runtime.Lock} $py{_Lock} $js{_qrt.Lock})
    primitive Lock extends Mutex {
    }

    @mapping($java{io.datawire.quark.runtime.Condition} $py{_Condition} $js{_qrt.Condition})
    primitive Condition extends Mutex {
        void waitWakeup(long timeout) {}
        void wakeup() {}
    }
}
}
