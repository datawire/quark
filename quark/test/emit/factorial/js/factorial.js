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

function factorial(n) {
    if ((n) === (0)) {
        return 1;
    } else {
        return (n) * (factorial((n) - (1)));
    }
}
exports.factorial = factorial;

function main() {
    console.log(_Q_toString(factorial(1)));
    console.log(_Q_toString(factorial(2)));
    console.log(_Q_toString(factorial(3)));
    console.log(_Q_toString(factorial(4)));
    console.log(_Q_toString(factorial(5)));
    console.log(_Q_toString(factorial(6)));
    console.log(_Q_toString(factorial(7)));
    console.log(_Q_toString(factorial(8)));
    console.log(_Q_toString(factorial(9)));
    console.log(_Q_toString(factorial(10)));
}
exports.main = main;

main();
