var _qrt = require("quark/quark_runtime.js");
var pets = require('../pets/index.js');
exports.pets = pets;


exports.call_main = function () { main(process.argv.slice(1)); }
function main(args) {
    var evil = new pets.Cat();
    var good = new pets.Dog();
    (evil).greet();
    (good).greet();
}
exports.main = main;
