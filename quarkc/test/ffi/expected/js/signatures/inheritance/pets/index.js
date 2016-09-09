var _qrt = require("quark/quark_runtime.js");
_qrt.plugImports("inheritance/pets");
var quark = require('quark').quark;
exports.quark = quark;



// CLASS Pet
function Pet() {
    this.__init_fields__();
}
exports.Pet = Pet;

function Pet__init_fields__() {}
Pet.prototype.__init_fields__ = Pet__init_fields__;
_qrt.lazyStatic(function(){Pet.inheritance_pets_Pet_ref = null;});
function Pet_greet() { throw TypeError, '`Pet.greet` is an abstract method'; }
Pet.prototype.greet = Pet_greet;

function Pet__getClass() {
    return "inheritance.pets.Pet";
}
Pet.prototype._getClass = Pet__getClass;

function Pet__getField(name) {
    return null;
}
Pet.prototype._getField = Pet__getField;

function Pet__setField(name, value) {}
Pet.prototype._setField = Pet__setField;

// CLASS Cat

function Cat() {
    Cat.super_.call(this);
}
exports.Cat = Cat;
_qrt.util.inherits(Cat, Pet);

function Cat__init_fields__() {
    Pet.prototype.__init_fields__.call(this);
}
Cat.prototype.__init_fields__ = Cat__init_fields__;
_qrt.lazyStatic(function(){Cat.inheritance_pets_Cat_ref = null;});
function Cat_greet() {
    _qrt.print("meow!");
}
Cat.prototype.greet = Cat_greet;

function Cat__getClass() {
    return "inheritance.pets.Cat";
}
Cat.prototype._getClass = Cat__getClass;

function Cat__getField(name) {
    return null;
}
Cat.prototype._getField = Cat__getField;

function Cat__setField(name, value) {}
Cat.prototype._setField = Cat__setField;

// CLASS Dog

function Dog() {
    Dog.super_.call(this);
}
exports.Dog = Dog;
_qrt.util.inherits(Dog, Pet);

function Dog__init_fields__() {
    Pet.prototype.__init_fields__.call(this);
}
Dog.prototype.__init_fields__ = Dog__init_fields__;
_qrt.lazyStatic(function(){Dog.inheritance_pets_Dog_ref = null;});
function Dog_greet() {
    _qrt.print("woof!");
}
Dog.prototype.greet = Dog_greet;

function Dog__getClass() {
    return "inheritance.pets.Dog";
}
Dog.prototype._getClass = Dog__getClass;

function Dog__getField(name) {
    return null;
}
Dog.prototype._getField = Dog__getField;

function Dog__setField(name, value) {}
Dog.prototype._setField = Dog__setField;

var quark_ffi_signatures_md; _qrt.lazyImport('../../quark_ffi_signatures_md/index.js', function(){
    quark_ffi_signatures_md = require('../../quark_ffi_signatures_md/index.js');
    exports.quark_ffi_signatures_md = quark_ffi_signatures_md;
});



_qrt.pumpImports("inheritance/pets");
