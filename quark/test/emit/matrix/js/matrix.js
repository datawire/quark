var _qrt = require("datawire-quark-core");

// CLASS Matrix

function Matrix(width, height) {
    this.__init_fields__();
    (this).width = width;
    (this).height = height;
    this.columns = [];
    while (((this.columns).length) < (width)) {
        var column = [];
        while (((column).length) < (height)) {
            (column).push(null);
        }
        (this.columns).push(column);
    }
}
exports.Matrix = Matrix;

function Matrix__init_fields__() {
    this.width = null;
    this.height = null;
    this.columns = null;
}
Matrix.prototype.__init_fields__ = Matrix__init_fields__;

function Matrix___get__(i, j) {
    return ((this.columns)[i])[j];
}
Matrix.prototype.__get__ = Matrix___get__;

function Matrix___set__(i, j, value) {
    ((this.columns)[i])[j] = (value);
}
Matrix.prototype.__set__ = Matrix___set__;

function main() {
    var matrix = new Matrix(3, 3);
    (matrix).__set__(2, 2, 123);
    _qrt.print((matrix).__get__(2, 2));
}
exports.main = main;

main();
