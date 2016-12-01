void testparse() {
    Any a = parse("{\"pi\": 3.14, \"list\": [1, 2, 3, 4]}");
    Map<Scalar,Any> m = a.asMap();
    assertEqual(2, m.size());
    Any v = m["pi"];
    assertEqual("3.14", v);
    List<Any> l = m["list"].asList();
    assertEqual(4, l.size());
}

Any parse(String json) {
    JSONBuilder builder = new JSONBuilder();
    int consumed = parse_value(json, builder, 0, json.size());
    if (consumed > 0) {
        return builder.current.array[0];
    } else {
        return null;
    }
}

interface JSONHandler {
    void enterObject();
    void leaveObject();

    void enterArray();
    void leaveArray();

    void visitString(String s);
    void visitInteger(String n);
    void visitFloat(String f);
    void visitBool(bool b);
    void visitNull();
}

class Frame {
    String state;
    String key;
    Map<String,Any> object;
    List<Any> array;
}

// XXX: we don't actually validate that JSONBuilder implements stuff
class JSONBuilder extends JSONHandler {

    List<Frame> stack;
    Frame current;

    JSONBuilder() {
        stack = [];
        current = new Frame();
        current.state = "array";
        current.array = [];
    }

    void add(Any any) {
        switch (current.state) {
        case "key":
            current.key = any.asString();
            current.state = "value";
        case "value":
            current.object[current.key] = any;
            current.state = "key";
        case "array":
            current.array.append(any);
        }
    }

    void enterObject() {
        stack.append(current);
        current = new Frame();
        current.state = "key";
        current.object = {};
    }

    void leaveObject() {
        Any object = unsafe(current.object);
        current = stack.remove(stack.size() - 1);
        add(object);
    }

    void enterArray() {
        stack.append(current);
        current = new Frame();
        current.state = "array";
        current.array = [];
    }

    void leaveArray() {
        Any array = unsafe(current.array);
        current = stack.remove(stack.size() - 1);
        add(array);
    }

    void visitString(String s) {
        add(unsafe(s));
    }

    void visitInteger(String n) {
        add(unsafe(n));
    }

    void visitFloat(String f) {
        add(unsafe(f));
    }

    void visitBool(bool b) {
        add(unsafe(b));
    }

    void visitNull() {
        add(unsafe(null));
    }

}

int parse_value(String json, JSONHandler handler, int offset, int limit) {
    int idx = offset + trim_whitespace(json, offset, limit);
    String c = json.substring(idx, idx + 1);

    int consumed = 0;
    switch (c) {
    case "{":
        consumed = parse_object(json, handler, idx, limit);
    case "[":
        consumed = parse_array(json, handler, idx, limit);
    case "\"":
        consumed = parse_string(json, handler, idx, limit);
    case "-", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
        consumed = parse_number(json, handler, idx, limit);
    case "t", "f", "n":
        consumed = parse_constant(json, handler, idx, limit);
    }

    if (consumed == 0) { return 0; }

    return idx + consumed - offset;
}

int trim_whitespace(String json, int offset, int limit) {
    int idx = offset;

    while (idx < limit) {
        switch (json.substring(idx, idx + 1)) {
        case " ", "\t", "\n", "\r": // whitespace
            idx = idx + 1;
            continue;
        }
        break;
    }

    return idx - offset;
}

int expect(String json, String value, int offset, int limit) {
    int idx = offset + trim_whitespace(json, offset, limit);

    int size = value.size();
    if (value == json.substring(idx, idx + size)) {
        return idx + size - offset;
    } else {
        return 0;
    }
}

int parse_object(String json, JSONHandler handler, int offset, int limit) {
    int idx = offset;
    int consumed = expect(json, "{", offset, limit);
    if (consumed == 0) { return 0; }
    idx = idx + consumed;

    handler.enterObject();

    consumed = expect(json, "}", idx, limit);
    if (consumed > 0) {
        idx = idx + consumed;
    } else {
        while (idx < limit) {
            consumed = parse_string(json, handler, idx, limit);
            if (consumed == 0) { return 0; }
            idx = idx + consumed;

            consumed = expect(json, ":", idx, limit);
            if (consumed == 0) { return 0; }
            idx = idx + consumed;

            consumed = parse_value(json, handler, idx, limit);
            if (consumed == 0) { return 0; }
            idx = idx + consumed;

            consumed = expect(json, ",", idx, limit);
            if (consumed > 0) {
                idx = idx + consumed;
                continue;
            }

            consumed = expect(json, "}", idx, limit);
            if (consumed > 0) {
                idx = idx + consumed;
                break;
            }

            return 0;
        }
    }

    handler.leaveObject();

    return idx - offset;
}

int parse_array(String json, JSONHandler handler, int offset, int limit) {
    int idx = offset;
    int consumed = expect(json, "[", offset, limit);
    if (consumed == 0) { return 0; }
    idx = idx + consumed;

    handler.enterArray();

    consumed = expect(json, "]", idx, limit);
    if (consumed > 0) {
        idx = idx + consumed;
    } else {
        while (idx < limit) {
            consumed = parse_value(json, handler, idx, limit);
            if (consumed == 0) { return 0; }
            idx = idx + consumed;

            consumed = expect(json, ",", idx, limit);
            if (consumed > 0) {
                idx = idx + consumed;
                continue;
            }

            consumed = expect(json, "]", idx, limit);
            if (consumed > 0) {
                idx = idx + consumed;
                break;
            }

            return 0;
        }
    }

    handler.leaveArray();

    return idx - offset;
}

int parse_string(String json, JSONHandler handler, int offset, int limit) {
    int idx = offset;
    int consumed = expect(json, "\"", offset, limit);
    if (consumed == 0) { return 0; }
    idx = idx + consumed;

    int start = idx;
    while (idx < limit) {
        String c = json.substring(idx, idx + 1);
        switch (c) {
        case "\"":
            // XXX: should decode properly
            handler.visitString(json.substring(start, idx));
            return idx + 1 - offset;
        }
        idx = idx + 1;
    }

    return 0;
}

int parse_number(String json, JSONHandler handler, int offset, int limit) {
    int idx = offset + trim_whitespace(json, offset, limit);

    int start = idx;
    bool dot = false;
    while (idx < limit) {
        String c = json.substring(idx, idx + 1);
        switch (c) {
        case "-", "e", "E", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            idx = idx + 1;
            continue;
        case ".":
            dot = true;
            idx = idx + 1;
            continue;
        case " ", "\t", "\n", "\r", ",", "]", "}": // whitespace
            String text = json.substring(start, idx);
            if (dot) {
                handler.visitFloat(text);
                return idx - offset;
            } else {
                handler.visitInteger(text);
                return idx - offset;
            }
        }
        break;
    }

    return 0;
}

int parse_constant(String json, JSONHandler handler, int offset, int limit) {
    int idx = offset + trim_whitespace(json, offset, limit);

    int start = idx;
    while (idx < limit) {
        String c = json.substring(idx, idx + 1);
        switch (c) {
        case "t", "r", "u", "e", "f", "a", "l", "s", "e", "n", "u", "l", "l":
            idx = idx + 1;
            continue;
        case " ", "\t", "\r", "\n", ",", "]", "}": // whitespace
            break;
        }
        return 0;
    }

    String parsed = json.substring(start, idx);

    switch (parsed) {
    case "true":
        handler.visitBool(true);
        return idx - offset;
    case "false":
        handler.visitBool(false);
        return idx - offset;
    case "null":
        handler.visitNull();
        return idx - offset;
    }

    return 0;
}
