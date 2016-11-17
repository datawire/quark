'use strict';

exports.bool___and__ = bool___and__
function bool___and__(a, b) { return a && b }

exports.bool___or__ = bool___or__
function bool___or__(a, b) { return a || b }

exports.bool___not__ = bool___not__
function bool___not__(n) { return !n }

exports.bool___eq__ = bool___eq__
function bool___eq__(a, b) { return a === b }

exports.bool_asAny = function(a) { return a }
