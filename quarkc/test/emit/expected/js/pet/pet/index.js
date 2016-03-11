var _qrt = require("builtin/quark_runtime.js");
var pets = require('../pets/index.js');
exports.pets = pets;



function main() {
    var evil = new pets.Cat();
    var good = new pets.Dog();
    (evil).greet();
    (good).greet();
}
exports.main = main;
