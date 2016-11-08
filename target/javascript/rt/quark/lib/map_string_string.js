'use strict';

function check_null(v) {
    if (v === undefined || v === null) {
        return ""
    } else {
        return v
    }
}
exports.Map_String_String___init__ = function() { return new Map() }
exports.Map_String_String___set__ = function(m,k,v) { m.set(k,v) }
exports.Map_String_String___get__ = function(m,k) { return check_null(m.get(k)) }
exports.Map_String_String_size = function(m) { return m.size }
exports.Map_String_String_keys = function(m) { return Array.from(m.keys()) }
