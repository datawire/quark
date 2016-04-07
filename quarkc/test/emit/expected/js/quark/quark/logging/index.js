var _qrt = require("quark/quark_runtime.js");
var quark = require('../../quark/index.js');
exports.quark = quark;
var quark_md = require('../../quark_md/index.js');
exports.quark_md = quark_md;



// CLASS Appender
/**
 * Destination for logging, just a marker interface for now
 */
function Appender() {
    this.__init_fields__();
}
exports.Appender = Appender;

function Appender__init_fields__() {}
Appender.prototype.__init_fields__ = Appender__init_fields__;
Appender.quark_logging_Appender_ref = quark_md.Root.quark_logging_Appender_md;

// CLASS Config
/**
 * Logging configurator
 */
function Config() {
    this.__init_fields__();
}
exports.Config = Config;

function Config__init_fields__() {}
Config.prototype.__init_fields__ = Config__init_fields__;
Config.quark_logging_Config_ref = quark_md.Root.quark_logging_Config_md;
/**
 * Set the destination for logging, default stderr()
 */
function Config_setAppender(appender) { /* interface */ }
Config.prototype.setAppender = Config_setAppender;

/**
 * set the logging level [trace|debug|info|warn|error], default 'info'
 */
function Config_setLevel(level) { /* interface */ }
Config.prototype.setLevel = Config_setLevel;

/**
 * Configure the logging
 */
function Config_configure() { /* interface */ }
Config.prototype.configure = Config_configure;
