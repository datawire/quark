var _qrt = require("datawire-quark-core");
var pets = require('./pets');
exports.pets = pets;



function main() {
    var evil = new pets.Cat();
    var good = new pets.Dog();
    (evil).greet();
    (good).greet();
}
exports.main = main;

main();
