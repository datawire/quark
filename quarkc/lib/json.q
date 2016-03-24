include io/datawire/quark/runtime/JSONObject.java;

namespace quark {


    @mapping($java{io.datawire.quark.runtime.JSONObject}
             $py{_JSONObject}
             $rb{::DatawireQuarkCore::JSONObject}
             $js{_qrt.JSONObject})
    primitive JSONObject {

        macro JSONObject() $java{new io.datawire.quark.runtime.JSONObject()}
                           $py{_JSONObject()}
                           $rb{::DatawireQuarkCore::JSONObject.new}
                           $js{new _qrt.JSONObject()};

        macro String __to_String() self.getString();
        macro float __to_float() self.getNumber();
        macro int __to_int() $java{((int) Math.round(($self).getNumber()))}
                             $py{int(round(($self).getNumber()))}
                             $rb{($self).getNumber.round}
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
        List<String> keys();                   // object keys or null if type is not 'object'
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

        if (cls.name == "quark.String") {
            result.setString(?obj);
            return result;
        }

        if (cls.name == "quark.byte" ||
            cls.name == "quark.short" ||
            cls.name == "quark.int" ||
            cls.name == "quark.long" ||
            cls.name == "quark.float") {
            result.setNumber(obj);
            return result;
        }

        if (cls.name == "quark.List") {
            result.setList();
            List<Object> list = ?obj;
            while (idx < list.size()) {
                result.setListItem(idx, toJSON(list[idx], null));
                idx = idx + 1;
            }
            return result;
        }

        if (cls.name == "quark.Map") {
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
    Object fromJSON(reflect.Class cls, Object result, JSONObject json) {
        if (json == null || json.isNull()) { return null; }
        int idx = 0;

        if (result == null) {
            if (cls.name == "quark.String") {
                String s = json;
                return s;
            }
            if (cls.name == "quark.float") {
                float flt = json;
                return flt;
            }
            if (cls.name == "quark.int") {
                int i = json;
                return i;
            }
            if (cls.name == "quark.bool") {
                bool b = json;
                return b;
            }
            result = cls.construct([]);
        }

        if (cls.name == "quark.List") {
            List<Object> list = ?result;
            while (idx < json.size()) {
                list.add(fromJSON(cls.getParameters()[0], null, json.getListItem(idx)));
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
            if (!json[f.name].isNull()) {
                result.setField(f.name, fromJSON(f.getType(), null, json[f.name]));
            }
        }
        return result;
    }

}
