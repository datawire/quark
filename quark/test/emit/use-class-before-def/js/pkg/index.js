var _qrt = require("quark_runtime.js");

// CLASS Bar
function Bar() {
    this.__init_fields__();
}
exports.Bar = Bar;

function Bar__init_fields__() {}
Bar.prototype.__init_fields__ = Bar__init_fields__;

function Bar_go() {
    var foo = new Foo();
    (foo).name = "bob";
    _qrt.print((foo).name);
}
Bar.prototype.go = Bar_go;

// CLASS Foo
function Foo() {
    this.__init_fields__();
}
exports.Foo = Foo;

function Foo__init_fields__() {
    this.name = null;
}
Foo.prototype.__init_fields__ = Foo__init_fields__;
