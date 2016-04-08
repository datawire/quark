var _qrt = require("quark/quark_runtime.js");
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark_md = require('../../quark_md/index.js');
exports.quark_md = quark_md;



// CLASS TestInitializer
function TestInitializer() {
    this.__init_fields__();
}
exports.TestInitializer = TestInitializer;

function TestInitializer__init_fields__() {}
TestInitializer.prototype.__init_fields__ = TestInitializer__init_fields__;
TestInitializer.quark_test_TestInitializer_ref = quark_md.Root.quark_test_TestInitializer_md;
function TestInitializer_getValue() {
    return null;
}
TestInitializer.prototype.getValue = TestInitializer_getValue;

function TestInitializer__getClass() {
    return "quark.test.TestInitializer";
}
TestInitializer.prototype._getClass = TestInitializer__getClass;

function TestInitializer__getField(name) {
    return null;
}
TestInitializer.prototype._getField = TestInitializer__getField;

function TestInitializer__setField(name, value) {}
TestInitializer.prototype._setField = TestInitializer__setField;

function red(str) {
    return (("\u001b[31;1m") + (str)) + ("\u001b[0m");
}
exports.red = red;

function green(str) {
    return (("\u001b[32;1m") + (str)) + ("\u001b[0m");
}
exports.green = green;

function bold(str) {
    return (("\u001b[1m") + (str)) + ("\u001b[0m");
}
exports.bold = bold;

// CLASS Test

function Test(name) {
    this.__init_fields__();
    (this).name = name;
}
exports.Test = Test;

function Test__init_fields__() {
    this.name = null;
    this.checks = 0;
    this.failures = [];
}
Test.prototype.__init_fields__ = Test__init_fields__;
Test.ctx = new _qrt.TLS(new TestInitializer());
Test.quark_test_Test_ref = quark_md.Root.quark_test_Test_md;
function Test_current() {
    return (Test.ctx).getValue();
}
Test.current = Test_current;

function Test_match(filters) {
    if ((require('lodash').isEqual((filters), (null))) || (require('lodash').isEqual(((filters).length), (0)))) {
        return true;
    }
    var idx = 0;
    while ((idx) < ((filters).length)) {
        var filter = (filters)[idx];
        if (((this.name).indexOf(filter)) >= (0)) {
            return true;
        }
        idx = (idx) + (1);
    }
    return false;
}
Test.prototype.match = Test_match;

function Test_start() {
    (Test.ctx).setValue(this);
}
Test.prototype.start = Test_start;

function Test_stop() {
    var result = (((((this.name) + (" [")) + (_qrt.toString(this.checks))) + (" checks, ")) + (_qrt.toString((this.failures).length))) + (" failures]");
    if (((this.failures).length) > (0)) {
        _qrt.print(red(result));
    } else {
        _qrt.print(bold(result));
    }
    var idx = 0;
    while ((idx) < ((this.failures).length)) {
        _qrt.print(red(("  ") + ((this.failures)[idx])));
        idx = (idx) + (1);
    }
    (Test.ctx).setValue(null);
}
Test.prototype.stop = Test_stop;

function Test_check(value, message) {
    this.checks = (this.checks) + (1);
    if (!(value)) {
        (this.failures).push(message);
    }
    return value;
}
Test.prototype.check = Test_check;

function Test_fail(message) {
    this.check(false, message);
}
Test.prototype.fail = Test_fail;

function Test_run() {}
Test.prototype.run = Test_run;

function Test__getClass() {
    return "quark.test.Test";
}
Test.prototype._getClass = Test__getClass;

function Test__getField(name) {
    if (require('lodash').isEqual((name), ("ctx"))) {
        return Test.ctx;
    }
    if (require('lodash').isEqual((name), ("name"))) {
        return (this).name;
    }
    if (require('lodash').isEqual((name), ("checks"))) {
        return (this).checks;
    }
    if (require('lodash').isEqual((name), ("failures"))) {
        return (this).failures;
    }
    return null;
}
Test.prototype._getField = Test__getField;

function Test__setField(name, value) {
    if (require('lodash').isEqual((name), ("ctx"))) {
        Test.ctx = value;
    }
    if (require('lodash').isEqual((name), ("name"))) {
        (this).name = value;
    }
    if (require('lodash').isEqual((name), ("checks"))) {
        (this).checks = value;
    }
    if (require('lodash').isEqual((name), ("failures"))) {
        (this).failures = value;
    }
}
Test.prototype._setField = Test__setField;

// CLASS MethodTest

function MethodTest(klass, method) {
    MethodTest.super_.call(this, (((klass).getName()) + (".")) + ((method).getName()));
    (this).klass = klass;
    (this).method = method;
}
exports.MethodTest = MethodTest;
_qrt.util.inherits(MethodTest, Test);

function MethodTest__init_fields__() {
    Test.prototype.__init_fields__.call(this);
    this.klass = null;
    this.method = null;
}
MethodTest.prototype.__init_fields__ = MethodTest__init_fields__;
MethodTest.quark_test_MethodTest_ref = quark_md.Root.quark_test_MethodTest_md;
function MethodTest_run() {
    var setup = (this.klass).getMethod("setup");
    var teardown = (this.klass).getMethod("teardown");
    var test = (this.klass).construct([]);
    if ((setup) !== (null)) {
        (setup).invoke(test, []);
    }
    (this.method).invoke(test, []);
    if ((teardown) !== (null)) {
        (teardown).invoke(test, []);
    }
}
MethodTest.prototype.run = MethodTest_run;

function MethodTest__getClass() {
    return "quark.test.MethodTest";
}
MethodTest.prototype._getClass = MethodTest__getClass;

function MethodTest__getField(name) {
    if (require('lodash').isEqual((name), ("ctx"))) {
        return Test.ctx;
    }
    if (require('lodash').isEqual((name), ("name"))) {
        return (this).name;
    }
    if (require('lodash').isEqual((name), ("checks"))) {
        return (this).checks;
    }
    if (require('lodash').isEqual((name), ("failures"))) {
        return (this).failures;
    }
    if (require('lodash').isEqual((name), ("klass"))) {
        return (this).klass;
    }
    if (require('lodash').isEqual((name), ("method"))) {
        return (this).method;
    }
    return null;
}
MethodTest.prototype._getField = MethodTest__getField;

function MethodTest__setField(name, value) {
    if (require('lodash').isEqual((name), ("ctx"))) {
        Test.ctx = value;
    }
    if (require('lodash').isEqual((name), ("name"))) {
        (this).name = value;
    }
    if (require('lodash').isEqual((name), ("checks"))) {
        (this).checks = value;
    }
    if (require('lodash').isEqual((name), ("failures"))) {
        (this).failures = value;
    }
    if (require('lodash').isEqual((name), ("klass"))) {
        (this).klass = value;
    }
    if (require('lodash').isEqual((name), ("method"))) {
        (this).method = value;
    }
}
MethodTest.prototype._setField = MethodTest__setField;

function check(value, message) {
    return (Test.current()).check(value, message);
}
exports.check = check;

function checkEqual(expected, actual) {
    return (Test.current()).check(require('lodash').isEqual((expected), (actual)), ((("expected ") + (("" + (expected)))) + (" got ")) + (("" + (actual))));
}
exports.checkEqual = checkEqual;

function fail(message) {
    (Test.current()).check(false, message);
}
exports.fail = fail;

// CLASS Harness

function Harness(pkg) {
    this.__init_fields__();
    (this).pkg = pkg;
}
exports.Harness = Harness;

function Harness__init_fields__() {
    this.pkg = null;
    this.tests = [];
    this.filtered = 0;
}
Harness.prototype.__init_fields__ = Harness__init_fields__;
Harness.quark_List_quark_test_Test__ref = quark_md.Root.quark_List_quark_test_Test__md;
Harness.quark_test_Harness_ref = quark_md.Root.quark_test_Harness_md;
function Harness_collect(filters) {
    var names = Array.from((quark.reflect.Class.classes).keys());
    (names).sort();
    var idx = 0;
    var pfx = (this.pkg) + (".");
    while ((idx) < ((names).length)) {
        var name = (names)[idx];
        if ((((name).indexOf(pfx)===0)) && (((name).indexOf(("Test"), (name).length - ("Test").length) !== -1))) {
            var klass = quark.reflect.Class.get(name);
            var methods = (klass).getMethods();
            var jdx = 0;
            while ((jdx) < ((methods).length)) {
                var meth = (methods)[jdx];
                var mname = (meth).getName();
                if (((mname).indexOf("test")===0)) {
                    var test = new MethodTest(klass, meth);
                    if ((test).match(filters)) {
                        (this.tests).push(test);
                    } else {
                        this.filtered = (this.filtered) + (1);
                    }
                }
                jdx = (jdx) + (1);
            }
        }
        idx = (idx) + (1);
    }
}
Harness.prototype.collect = Harness_collect;

function Harness_list() {
    var idx = 0;
    while ((idx) < ((this.tests).length)) {
        var test = (this.tests)[idx];
        _qrt.print((test).name);
        idx = (idx) + (1);
    }
}
Harness.prototype.list = Harness_list;

function Harness_run() {
    _qrt.print(bold("=============================== starting tests ==============================="));
    var idx = 0;
    var failures = 0;
    while ((idx) < ((this.tests).length)) {
        var test = (this.tests)[idx];
        (test).start();
        (test).run();
        (test).stop();
        if ((((test).failures).length) > (0)) {
            failures = (failures) + (1);
        }
        idx = (idx) + (1);
    }
    var passed = ((this.tests).length) - (failures);
    _qrt.print(bold("=============================== stopping tests ==============================="));
    var result = ((((((("Total: ") + (_qrt.toString(((this.tests).length) + (this.filtered)))) + (", Filtered: ")) + (_qrt.toString(this.filtered))) + (", Passed: ")) + (_qrt.toString(passed))) + (", Failed: ")) + (_qrt.toString(failures));
    if ((failures) > (0)) {
        _qrt.print(red(result));
    } else {
        _qrt.print(green(result));
    }
}
Harness.prototype.run = Harness_run;

function Harness__getClass() {
    return "quark.test.Harness";
}
Harness.prototype._getClass = Harness__getClass;

function Harness__getField(name) {
    if (require('lodash').isEqual((name), ("pkg"))) {
        return (this).pkg;
    }
    if (require('lodash').isEqual((name), ("tests"))) {
        return (this).tests;
    }
    if (require('lodash').isEqual((name), ("filtered"))) {
        return (this).filtered;
    }
    return null;
}
Harness.prototype._getField = Harness__getField;

function Harness__setField(name, value) {
    if (require('lodash').isEqual((name), ("pkg"))) {
        (this).pkg = value;
    }
    if (require('lodash').isEqual((name), ("tests"))) {
        (this).tests = value;
    }
    if (require('lodash').isEqual((name), ("filtered"))) {
        (this).filtered = value;
    }
}
Harness.prototype._setField = Harness__setField;

function run(args) {
    var pkg = (args)[0];
    var filters = [];
    var list = false;
    var idx = 1;
    while ((idx) < ((args).length)) {
        var arg = (args)[idx];
        if (require('lodash').isEqual((arg), ("-l"))) {
            list = true;
        } else {
            (filters).push(arg);
        }
        idx = (idx) + (1);
    }
    var h = new Harness(pkg);
    (h).collect(filters);
    if (list) {
        (h).list();
    } else {
        _qrt.print(bold(("Running: ") + ((args).join(" "))));
        (h).run();
    }
}
exports.run = run;
