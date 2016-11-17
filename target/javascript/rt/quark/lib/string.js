'use strict';

exports.String___add__ = String___add__
function String___add__(a, b) { return a + b }

exports.String___eq__ = String___eq__
function String___eq__(a, b) { return a === b }

exports.String_size = String_size
function String_size(a) { return a.length }

exports.String_substring = String_substring
function String_substring(a,s,e) { return a.substring(s,e) }

exports.String_asAny = function(a) { return a }
