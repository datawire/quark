'use strict';

function check_null(v) {
    if (v === undefined || v === null) {
        return null
    } else {
        return v
    }
}
exports.List_Any___init__ = function() { return [] }
exports.List_Any___set__ = function(l,k,v) { l[k] = v }
exports.List_Any___get__ = function(l,k) { return check_null(l[k]) }
exports.List_Any_size = function(l) { return l.length }
exports.List_Any_append = function(l, v) { l.push(v) }
exports.List_Any_extend = function(l, r) { r.forEach(x => l.push(x)) }
exports.List_Any_remove = function(l, k) { return l.splice(k,1)[0] }
