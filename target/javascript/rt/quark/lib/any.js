'use strict';

exports.Any_type = Any_type
function Any_type(a) {
    let t = typeof(a)
    if (t === "object") {
        if (a === null) {
            return 0
        } else if (Array.isArray(a)) {
            return 5
        } else {
            return 6
        }
    } else if (t === "string") {
        return 3
    } else if (t === "number") {
        if (Number.isInteger(a)) {
            return 2
        } else {
            return 4
        }
    } else if (t === "boolean") {
        return 1
    } else {
        return -1
    }
}

exports.Any_asBool = Any_asBool
function Any_asBool(a) {
    if (typeof(a) === "boolean") {
        return a
    } else {
        return false
    }
}

exports.Any_asInt = Any_asInt
function Any_asInt(a) {
    if (typeof(a) === "number" && Number.isInteger(a)) {
        return a
    } else {
        return 0
    }
}

exports.Any_asString = Any_asString
function Any_asString(a) {
    if (typeof(a) === "string") {
        return a
    } else {
        return ""
    }
}

exports.Any_asFloat = Any_asFloat
function Any_asFloat(a) {
    if (typeof(a) === "number") {
        return a
    } else {
        return 0 // XXX: trouble ....
    }
}

exports.Any_asList = Any_asList
function Any_asList(a) {
    if (Array.isArray(a)) {
        return a
    } else {
        return null
    }
}

exports.Any_asMap = Any_asMap
function Any_asMap(a) {
    if (type(a) === "object") {
        if (a instanceof Map) {
            return a
        } else if (a.constructor === Object) {
            ret = new Map();
            Object.getOwnPropertyNames(a).forEach(function(k) {
                ret[k] = a[k]
            })
            return ret
        } else {
            return null
        }
    } else {
        return null
    }
}
