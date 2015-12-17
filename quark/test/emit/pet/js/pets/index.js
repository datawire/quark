var _qrt = require("datawire-quark-core");


// CLASS Pet
function Pet() {
    this.__init_fields__();
}
exports.Pet = Pet;

function Pet__init_fields__() {}
Pet.prototype.__init_fields__ = Pet__init_fields__;

function Pet_greet() { /* abstract */ }
Pet.prototype.greet = Pet_greet;

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

function Cat_greet() {
    _qrt.print("meow!");
}
Cat.prototype.greet = Cat_greet;

function Cat__getClass() {
    return "pets.Cat";
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

function Dog_greet() {
    _qrt.print("woof!");
}
Dog.prototype.greet = Dog_greet;

function Dog__getClass() {
    return "pets.Dog";
}
Dog.prototype._getClass = Dog__getClass;

function Dog__getField(name) {
    return null;
}
Dog.prototype._getField = Dog__getField;

function Dog__setField(name, value) {}
Dog.prototype._setField = Dog__setField;
