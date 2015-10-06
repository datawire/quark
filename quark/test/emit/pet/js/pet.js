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
