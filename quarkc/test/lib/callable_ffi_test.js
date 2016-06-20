exports.check = function () {
    var callable = require("test_callable").test_callable
    return 6 == callable.smug(function (x) { return 2*x; }, 3)
}
