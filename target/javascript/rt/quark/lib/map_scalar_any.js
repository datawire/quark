'use strict';

function check_null(v) {
    if (v === undefined || v === null) {
        return ""
    } else {
        return v
    }
}
exports.Map_Scalar_Any___init__ = function() { return new Map() }
exports.Map_Scalar_Any___set__ = function(m,k,v) { m.set(k,v) }
exports.Map_Scalar_Any___get__ = function(m,k) { return check_null(m.get(k)) }
exports.Map_Scalar_Any_size = function(m) { return m.size }
exports.Map_Scalar_Any_keys = function(m) { return Array.from(m.keys()) }
