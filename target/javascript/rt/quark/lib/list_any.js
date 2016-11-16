'use strict';

function check_null(v) {
    if (v === undefined || v === null) {
        return null
    } else {
        return v
    }
}
exports.List_any___init__ = function() { return [] }
exports.List_any___set__ = function(l,k,v) { l[k] = v }
exports.List_any___get__ = function(l,k) { return check_null(l[k]) }
exports.List_any_size = function(l) { return l.length }
exports.List_any_append = function(l, v) { l.push(v) }
exports.List_any_extend = function(l, r) { r.forEach(x => l.push(x)) }
exports.List_any_remove = function(l, k) { return l.splice(k,1)[0] }
