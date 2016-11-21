'use strict';

exports.unsafe = function(x) { return x }

exports.Any_type = Any_type
function Any_type(a) {
    let t = typeof(a)
    if (t === "object") {
        if (a === null) {
            return 0
        } else if (Array.isArray(a)) {
            return 2
        } else if (a instanceof Map) {
            return 3
        } else {
            return -1
        }
    } else if (t === "string") {
        return 1
    } else if (t === "number") {
        return 1
    } else if (t === "boolean") {
        return 1
    } else {
        return -1
    }
}

exports.Any_asBool = Any_asBool
function Any_asBool(a) {
    let t = typeof(a)
    if (t === "object") {
        return false
    } else if (t === "string") {
        return a.length > 0
    } else if (t === "number") {
        return a != 0
    } else if (t === "boolean") {
        return a
    } else {
        return false
    }
}

exports.Any_asInt = Any_asInt
function Any_asInt(a) {
    let t = typeof(a)
    if (t === "object") {
        return 0
    } else if (t === "string") {
        return 0
    } else if (t === "number") {
        if (Number.isInteger(a)) {
            return a
        } else if ( a > 0 ) {
            return Math.floor(a)
        } else {
            return -Math.floor(-a)
        }
    } else if (t === "boolean") {
        return a ? 1 : 0
    } else {
        return 0
    }
}

exports.Any_asString = Any_asString
function Any_asString(a) {
    let t = typeof(a)
    if (t === "object") {
        return ""
    } else if (t === "string") {
        return a
    } else if (t === "number") {
        return a.toString()
    } else if (t === "boolean") {
        return a ? "true" : "false"
    } else {
        return ""
    }
}

exports.Any_asFloat = Any_asFloat
function Any_asFloat(a) {
    let t = typeof(a)
    if (t === "object") {
        return 0
    } else if (t === "string") {
        return 0
    } else if (t === "number") {
        return a
    } else if (t === "boolean") {
        return a ? 1 : 0
    } else {
        return 0
    }
}

exports.Any_asScalar = Any_asScalar
function Any_asScalar(a) {
    if (Array.isArray(a) || typeof(a) === "object" || a instanceof Map) {
        return null
    } else {
        return a
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
    if (typeof(a) === "object") {
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
