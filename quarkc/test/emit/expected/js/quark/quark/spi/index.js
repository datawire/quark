var _qrt = require("quark/quark_runtime.js");
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark_md = require('../../quark_md/index.js');
exports.quark_md = quark_md;
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark = require('../../quark/index.js');
exports.quark = quark;



// CLASS RuntimeSpi
function RuntimeSpi() {
    this.__init_fields__();
}
exports.RuntimeSpi = RuntimeSpi;

function RuntimeSpi__init_fields__() {}
RuntimeSpi.prototype.__init_fields__ = RuntimeSpi__init_fields__;
RuntimeSpi.quark_spi_RuntimeSpi_ref = quark_md.Root.quark_spi_RuntimeSpi_md;

// CLASS RuntimeFactory
function RuntimeFactory() {
    this.__init_fields__();
}
exports.RuntimeFactory = RuntimeFactory;

function RuntimeFactory__init_fields__() {}
RuntimeFactory.prototype.__init_fields__ = RuntimeFactory__init_fields__;
RuntimeFactory.factory = new RuntimeFactory();
RuntimeFactory.enable_tracing = true;
RuntimeFactory.quark_spi_RuntimeFactory_ref = quark_md.Root.quark_spi_RuntimeFactory_md;
function RuntimeFactory_makeRuntime() {
    var spi = _qrt.RuntimeFactory.create();
    var api = null;
    if (RuntimeFactory.enable_tracing) {
        api = new quark.spi_api_tracing.RuntimeProxy(spi);
    } else {
        api = new quark.spi_api.RuntimeProxy(spi);
    }
    return api;
}
RuntimeFactory.prototype.makeRuntime = RuntimeFactory_makeRuntime;

function RuntimeFactory__getClass() {
    return "quark.spi.RuntimeFactory";
}
RuntimeFactory.prototype._getClass = RuntimeFactory__getClass;

function RuntimeFactory__getField(name) {
    if (_qrt.equals((name), ("factory"))) {
        return RuntimeFactory.factory;
    }
    if (_qrt.equals((name), ("enable_tracing"))) {
        return RuntimeFactory.enable_tracing;
    }
    return null;
}
RuntimeFactory.prototype._getField = RuntimeFactory__getField;

function RuntimeFactory__setField(name, value) {
    if (_qrt.equals((name), ("factory"))) {
        RuntimeFactory.factory = value;
    }
    if (_qrt.equals((name), ("enable_tracing"))) {
        RuntimeFactory.enable_tracing = value;
    }
}
RuntimeFactory.prototype._setField = RuntimeFactory__setField;
