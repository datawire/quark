'use strict';

function check_null(v) {
    if (v === undefined || v === null) {
        return 0
    } else {
        return v
    }
}
exports.Map_String_int___init__ = function() { return new Map() }
exports.Map_String_int___set__ = function(m,k,v) { m.set(k,v) }
exports.Map_String_int___get__ = function(m,k) { return check_null(m.get(k)) }
exports.Map_String_int_size = function(m) { return m.size }
exports.Map_String_int_keys = function(m) { return Array.from(m.keys()) }
