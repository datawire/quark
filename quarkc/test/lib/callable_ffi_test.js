exports.check = function () {
    var callable = require(".").callable_test;
    if (6 !== callable.smug(function (x) { return 2*x; }, 3)) {
        return false;
    }
    // undefined is converted into null:
    return null === callable.smug(function (x) { return undefined; }, null);
};
