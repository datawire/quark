'use strict';

function check_null(v) {
    if (v === undefined || v === null) {
        return 0
    } else {
        return v
    }
}
exports.List_int___init__ = function() { return [] }
exports.List_int___set__ = function(l,k,v) { l[k] = v }
exports.List_int___get__ = function(l,k) { return check_null(l[k]) }
exports.List_int___len__ = function(l) { return l.length }
exports.List_int_append = function(l, v) { l.push(v) }
exports.List_int_extend = function(l, r) { r.forEach(x => l.push(x)) }
