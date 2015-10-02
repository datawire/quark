var _Q_util = require("util");
function _Q_toString(value) {
    if (value === null) {
        return "null";
    }
    if (Array.isArray(value)) {
        return "[" + value.map(_Q_toString).join(", ") + "]";
    }
    return value.toString();
}

//

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
    this.__init_fields__();
}
exports.Cat = Cat;
_Q_util.inherits(Cat, Pet);

function Cat__init_fields__() {
    Pet.prototype.__init_fields__.call(this);
}
Cat.prototype.__init_fields__ = Cat__init_fields__;

function Cat_greet() {
    console.log(_Q_toString("meow!"));
}
Cat.prototype.greet = Cat_greet;

// CLASS Dog
function Dog() {
    this.__init_fields__();
}
exports.Dog = Dog;
_Q_util.inherits(Dog, Pet);

function Dog__init_fields__() {
    Pet.prototype.__init_fields__.call(this);
}
Dog.prototype.__init_fields__ = Dog__init_fields__;

function Dog_greet() {
    console.log(_Q_toString("woof!"));
}
Dog.prototype.greet = Dog_greet;