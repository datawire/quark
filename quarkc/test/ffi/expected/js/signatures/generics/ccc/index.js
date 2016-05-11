var _qrt = require("quark/quark_runtime.js");
var quark = require('quark').quark;
exports.quark = quark;
var quark_ffi_signatures_md = require('../../quark_ffi_signatures_md/index.js');
exports.quark_ffi_signatures_md = quark_ffi_signatures_md;



// CLASS TLSContextInitializer
function TLSContextInitializer() {
    this.__init_fields__();
}
exports.TLSContextInitializer = TLSContextInitializer;

function TLSContextInitializer__init_fields__() {}
TLSContextInitializer.prototype.__init_fields__ = TLSContextInitializer__init_fields__;
TLSContextInitializer.generics_ccc_TLSContextInitializer_ref = quark_ffi_signatures_md.Root.generics_ccc_TLSContextInitializer_md;
function TLSContextInitializer_getValue() {
    return null;
}
TLSContextInitializer.prototype.getValue = TLSContextInitializer_getValue;

function TLSContextInitializer__getClass() {
    return "generics.ccc.TLSContextInitializer";
}
TLSContextInitializer.prototype._getClass = TLSContextInitializer__getClass;

function TLSContextInitializer__getField(name) {
    return null;
}
TLSContextInitializer.prototype._getField = TLSContextInitializer__getField;

function TLSContextInitializer__setField(name, value) {}
TLSContextInitializer.prototype._setField = TLSContextInitializer__setField;

// CLASS Context

function Context(parent) {
    this.__init_fields__();
}
exports.Context = Context;

function Context__init_fields__() {
    this.parent = null;
}
Context.prototype.__init_fields__ = Context__init_fields__;
Context._global = null;
Context._current = null;
Context.generics_ccc_Context_ref = quark_ffi_signatures_md.Root.generics_ccc_Context_md;
Context.generics_ccc_TLS_generics_ccc_Context__ref = quark_ffi_signatures_md.Root.generics_ccc_TLS_generics_ccc_Context__md;
function Context_current() {
    return null;
}
Context.current = Context_current;

function Context_global() {
    return null;
}
Context.global = Context_global;

function Context__getClass() {
    return "generics.ccc.Context";
}
Context.prototype._getClass = Context__getClass;

function Context__getField(name) {
    if (_qrt.equals((name), ("_global"))) {
        return Context._global;
    }
    if (_qrt.equals((name), ("_current"))) {
        return Context._current;
    }
    if (_qrt.equals((name), ("parent"))) {
        return (this).parent;
    }
    return null;
}
Context.prototype._getField = Context__getField;

function Context__setField(name, value) {
    if (_qrt.equals((name), ("_global"))) {
        Context._global = value;
    }
    if (_qrt.equals((name), ("_current"))) {
        Context._current = value;
    }
    if (_qrt.equals((name), ("parent"))) {
        (this).parent = value;
    }
}
Context.prototype._setField = Context__setField;

// CLASS TLSInitializer
function TLSInitializer() {
    this.__init_fields__();
}
exports.TLSInitializer = TLSInitializer;

function TLSInitializer__init_fields__() {}
TLSInitializer.prototype.__init_fields__ = TLSInitializer__init_fields__;
TLSInitializer.generics_ccc_TLSInitializer_quark_Object__ref = quark_ffi_signatures_md.Root.generics_ccc_TLSInitializer_quark_Object__md;
function TLSInitializer_getValue() { /* interface */ }
TLSInitializer.prototype.getValue = TLSInitializer_getValue;

// CLASS TLS

function TLS(initializer) {
    this.__init_fields__();
}
exports.TLS = TLS;

function TLS__init_fields__() {
    this._value = null;
}
TLS.prototype.__init_fields__ = TLS__init_fields__;

function TLS_getValue() {
    return null;
}
TLS.prototype.getValue = TLS_getValue;

function TLS__getClass() {
    return "generics.ccc.TLS<quark.Object>";
}
TLS.prototype._getClass = TLS__getClass;

function TLS__getField(name) {
    if (_qrt.equals((name), ("_value"))) {
        return (this)._value;
    }
    return null;
}
TLS.prototype._getField = TLS__getField;

function TLS__setField(name, value) {
    if (_qrt.equals((name), ("_value"))) {
        (this)._value = value;
    }
}
TLS.prototype._setField = TLS__setField;
