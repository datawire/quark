var _qrt = require("quark_runtime.js");

// CLASS Test
/**
 * hey, here are some docs
 * here are some more docs
 * a bunch of docs in fact
 */
function Test() {
    this.__init_fields__();
}
exports.Test = Test;

function Test__init_fields__() {
    /**
     * field docs
     */
    this.name = null;
}
Test.prototype.__init_fields__ = Test__init_fields__;

/**
 * method docs
 */
function Test_test(param) {
    return 3;
}
Test.prototype.test = Test_test;
