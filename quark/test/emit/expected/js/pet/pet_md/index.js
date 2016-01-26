var _qrt = require("datawire-quark-core");
var builtin = require('builtin').builtin;
exports.builtin = builtin;



// CLASS pets_Cat_greet_Method

function pets_Cat_greet_Method() {
    pets_Cat_greet_Method.super_.call(this, "builtin.void", "greet", []);
}
exports.pets_Cat_greet_Method = pets_Cat_greet_Method;
_qrt.util.inherits(pets_Cat_greet_Method, builtin.reflect.Method);

function pets_Cat_greet_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
pets_Cat_greet_Method.prototype.__init_fields__ = pets_Cat_greet_Method__init_fields__;

function pets_Cat_greet_Method_invoke(object, args) {
    var obj = object;
    (obj).greet();
    return null;
}
pets_Cat_greet_Method.prototype.invoke = pets_Cat_greet_Method_invoke;

function pets_Cat_greet_Method__getClass() {
    return null;
}
pets_Cat_greet_Method.prototype._getClass = pets_Cat_greet_Method__getClass;

function pets_Cat_greet_Method__getField(name) {
    return null;
}
pets_Cat_greet_Method.prototype._getField = pets_Cat_greet_Method__getField;

function pets_Cat_greet_Method__setField(name, value) {}
pets_Cat_greet_Method.prototype._setField = pets_Cat_greet_Method__setField;

// CLASS pets_Cat

function pets_Cat() {
    pets_Cat.super_.call(this, "pets.Cat");
    (this).name = "Cat";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pets_Cat_greet_Method()];
}
exports.pets_Cat = pets_Cat;
_qrt.util.inherits(pets_Cat, builtin.reflect.Class);

function pets_Cat__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
pets_Cat.prototype.__init_fields__ = pets_Cat__init_fields__;
pets_Cat.singleton = new pets_Cat();
function pets_Cat_construct(args) {
    return new pets.Cat();
}
pets_Cat.prototype.construct = pets_Cat_construct;

function pets_Cat__getClass() {
    return null;
}
pets_Cat.prototype._getClass = pets_Cat__getClass;

function pets_Cat__getField(name) {
    return null;
}
pets_Cat.prototype._getField = pets_Cat__getField;

function pets_Cat__setField(name, value) {}
pets_Cat.prototype._setField = pets_Cat__setField;


// CLASS pets_Dog_greet_Method

function pets_Dog_greet_Method() {
    pets_Dog_greet_Method.super_.call(this, "builtin.void", "greet", []);
}
exports.pets_Dog_greet_Method = pets_Dog_greet_Method;
_qrt.util.inherits(pets_Dog_greet_Method, builtin.reflect.Method);

function pets_Dog_greet_Method__init_fields__() {
    builtin.reflect.Method.prototype.__init_fields__.call(this);
}
pets_Dog_greet_Method.prototype.__init_fields__ = pets_Dog_greet_Method__init_fields__;

function pets_Dog_greet_Method_invoke(object, args) {
    var obj = object;
    (obj).greet();
    return null;
}
pets_Dog_greet_Method.prototype.invoke = pets_Dog_greet_Method_invoke;

function pets_Dog_greet_Method__getClass() {
    return null;
}
pets_Dog_greet_Method.prototype._getClass = pets_Dog_greet_Method__getClass;

function pets_Dog_greet_Method__getField(name) {
    return null;
}
pets_Dog_greet_Method.prototype._getField = pets_Dog_greet_Method__getField;

function pets_Dog_greet_Method__setField(name, value) {}
pets_Dog_greet_Method.prototype._setField = pets_Dog_greet_Method__setField;

// CLASS pets_Dog

function pets_Dog() {
    pets_Dog.super_.call(this, "pets.Dog");
    (this).name = "Dog";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new pets_Dog_greet_Method()];
}
exports.pets_Dog = pets_Dog;
_qrt.util.inherits(pets_Dog, builtin.reflect.Class);

function pets_Dog__init_fields__() {
    builtin.reflect.Class.prototype.__init_fields__.call(this);
}
pets_Dog.prototype.__init_fields__ = pets_Dog__init_fields__;
pets_Dog.singleton = new pets_Dog();
function pets_Dog_construct(args) {
    return new pets.Dog();
}
pets_Dog.prototype.construct = pets_Dog_construct;

function pets_Dog__getClass() {
    return null;
}
pets_Dog.prototype._getClass = pets_Dog__getClass;

function pets_Dog__getField(name) {
    return null;
}
pets_Dog.prototype._getField = pets_Dog__getField;

function pets_Dog__setField(name, value) {}
pets_Dog.prototype._setField = pets_Dog__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.pets_Cat_md = pets_Cat.singleton;
Root.pets_Dog_md = pets_Dog.singleton;
function Root__getClass() {
    return null;
}
Root.prototype._getClass = Root__getClass;

function Root__getField(name) {
    return null;
}
Root.prototype._getField = Root__getField;

function Root__setField(name, value) {}
Root.prototype._setField = Root__setField;

var pets = require('../pets');
exports.pets = pets;
