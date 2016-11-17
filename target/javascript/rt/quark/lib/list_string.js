'use strict';

function check_null(v) {
    if (v === undefined || v === null) {
        return 0
    } else {
        return v
    }
}
exports.List_String___init__ = function() { return [] }
exports.List_String___set__ = function(l,k,v) { l[k] = v }
exports.List_String___get__ = function(l,k) { return check_null(l[k]) }
exports.List_String_size = function(l) { return l.length }
exports.List_String_append = function(l, v) { l.push(v) }
exports.List_String_extend = function(l, r) { r.forEach(x => l.push(x)) }
exports.List_String_remove = function(l, k) { return l.splice(k,1)[0] }

exports.List_String_asAny = function(l) { return l }
