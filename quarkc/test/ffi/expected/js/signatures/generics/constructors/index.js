var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("generics/constructors");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS Box

function Box(contents) {
    this.__init_fields__();
}
exports.Box = Box;

function Box__init_fields__() {
    this.contents = null;
}
Box.prototype.__init_fields__ = Box__init_fields__;
_qrt.lazyStatic(function(){Box.generics_constructors_Box_quark_Object__ref = null;});
function Box_get() {
    return _qrt.cast(null, function () { return T; });
}
Box.prototype.get = Box_get;

function Box__getClass() {
    return "generics.constructors.Box<quark.Object>";
}
Box.prototype._getClass = Box__getClass;

function Box__getField(name) {
    if (_qrt.equals((name), ("contents"))) {
        return (this).contents;
    }
    return null;
}
Box.prototype._getField = Box__getField;

function Box__setField(name, value) {
    if (_qrt.equals((name), ("contents"))) {
        (this).contents = _qrt.cast(value, function () { return T; });
    }
}
Box.prototype._setField = Box__setField;

var quark_ffi_signatures_md; _qrt.lazyImport('../../quark_ffi_signatures_md/index.js', function(){
    quark_ffi_signatures_md = require('../../quark_ffi_signatures_md/index.js');
    exports.quark_ffi_signatures_md = quark_ffi_signatures_md;
});



_qrt.pumpImports("generics/constructors");
