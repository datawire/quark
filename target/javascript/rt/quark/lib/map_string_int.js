'use strict';

function check_null(v) {
    if (v === undefined || v === null) {
        return 0
    } else {
        return v
    }
}
exports.map_string_int___init__ = function() { return new Map() }
exports.map_string_int___set__ = function(m,k,v) { m.set(k,v) }
exports.map_string_int___get__ = function(m,k) { return check_null(m.get(k)) }
exports.map_string_int___len__ = function(m) { return m.size }
