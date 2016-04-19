var _qrt = require("quark/quark_runtime.js");
var quark = require('../quark/index.js');
exports.quark = quark;



// CLASS quark_Task

function quark_Task() {
    quark_Task.super_.call(this, "quark.Task");
    (this).name = "quark.Task";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_Task = quark_Task;
_qrt.util.inherits(quark_Task, quark.reflect.Class);

function quark_Task__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Task.prototype.__init_fields__ = quark_Task__init_fields__;
quark_Task.singleton = new quark_Task();
function quark_Task_construct(args) {
    return null;
}
quark_Task.prototype.construct = quark_Task_construct;

function quark_Task__getClass() {
    return null;
}
quark_Task.prototype._getClass = quark_Task__getClass;

function quark_Task__getField(name) {
    return null;
}
quark_Task.prototype._getField = quark_Task__getField;

function quark_Task__setField(name, value) {}
quark_Task.prototype._setField = quark_Task__setField;


// CLASS quark_Runtime

function quark_Runtime() {
    quark_Runtime.super_.call(this, "quark.Runtime");
    (this).name = "quark.Runtime";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_Runtime = quark_Runtime;
_qrt.util.inherits(quark_Runtime, quark.reflect.Class);

function quark_Runtime__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Runtime.prototype.__init_fields__ = quark_Runtime__init_fields__;
quark_Runtime.singleton = new quark_Runtime();
function quark_Runtime_construct(args) {
    return null;
}
quark_Runtime.prototype.construct = quark_Runtime_construct;

function quark_Runtime__getClass() {
    return null;
}
quark_Runtime.prototype._getClass = quark_Runtime__getClass;

function quark_Runtime__getField(name) {
    return null;
}
quark_Runtime.prototype._getField = quark_Runtime__getField;

function quark_Runtime__setField(name, value) {}
quark_Runtime.prototype._setField = quark_Runtime__setField;


// CLASS quark_ListUtil_quark_Object_

function quark_ListUtil_quark_Object_() {
    quark_ListUtil_quark_Object_.super_.call(this, "quark.ListUtil<quark.Object>");
    (this).name = "quark.ListUtil";
    (this).parameters = ["quark.Object"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_ListUtil_quark_Object_ = quark_ListUtil_quark_Object_;
_qrt.util.inherits(quark_ListUtil_quark_Object_, quark.reflect.Class);

function quark_ListUtil_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_ListUtil_quark_Object_.prototype.__init_fields__ = quark_ListUtil_quark_Object___init_fields__;
quark_ListUtil_quark_Object_.singleton = new quark_ListUtil_quark_Object_();
function quark_ListUtil_quark_Object__construct(args) {
    return new quark.ListUtil();
}
quark_ListUtil_quark_Object_.prototype.construct = quark_ListUtil_quark_Object__construct;

function quark_ListUtil_quark_Object___getClass() {
    return null;
}
quark_ListUtil_quark_Object_.prototype._getClass = quark_ListUtil_quark_Object___getClass;

function quark_ListUtil_quark_Object___getField(name) {
    return null;
}
quark_ListUtil_quark_Object_.prototype._getField = quark_ListUtil_quark_Object___getField;

function quark_ListUtil_quark_Object___setField(name, value) {}
quark_ListUtil_quark_Object_.prototype._setField = quark_ListUtil_quark_Object___setField;


// CLASS quark_List_quark_String_

function quark_List_quark_String_() {
    quark_List_quark_String_.super_.call(this, "quark.List<quark.String>");
    (this).name = "quark.List";
    (this).parameters = ["quark.String"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_String_ = quark_List_quark_String_;
_qrt.util.inherits(quark_List_quark_String_, quark.reflect.Class);

function quark_List_quark_String___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_String_.prototype.__init_fields__ = quark_List_quark_String___init_fields__;
quark_List_quark_String_.singleton = new quark_List_quark_String_();
function quark_List_quark_String__construct(args) {
    return new Array();
}
quark_List_quark_String_.prototype.construct = quark_List_quark_String__construct;

function quark_List_quark_String___getClass() {
    return null;
}
quark_List_quark_String_.prototype._getClass = quark_List_quark_String___getClass;

function quark_List_quark_String___getField(name) {
    return null;
}
quark_List_quark_String_.prototype._getField = quark_List_quark_String___getField;

function quark_List_quark_String___setField(name, value) {}
quark_List_quark_String_.prototype._setField = quark_List_quark_String___setField;


// CLASS quark_List_quark_Object_

function quark_List_quark_Object_() {
    quark_List_quark_Object_.super_.call(this, "quark.List<quark.Object>");
    (this).name = "quark.List";
    (this).parameters = ["quark.Object"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_Object_ = quark_List_quark_Object_;
_qrt.util.inherits(quark_List_quark_Object_, quark.reflect.Class);

function quark_List_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_Object_.prototype.__init_fields__ = quark_List_quark_Object___init_fields__;
quark_List_quark_Object_.singleton = new quark_List_quark_Object_();
function quark_List_quark_Object__construct(args) {
    return new Array();
}
quark_List_quark_Object_.prototype.construct = quark_List_quark_Object__construct;

function quark_List_quark_Object___getClass() {
    return null;
}
quark_List_quark_Object_.prototype._getClass = quark_List_quark_Object___getClass;

function quark_List_quark_Object___getField(name) {
    return null;
}
quark_List_quark_Object_.prototype._getField = quark_List_quark_Object___getField;

function quark_List_quark_Object___setField(name, value) {}
quark_List_quark_Object_.prototype._setField = quark_List_quark_Object___setField;


// CLASS quark_List_quark_reflect_Field_

function quark_List_quark_reflect_Field_() {
    quark_List_quark_reflect_Field_.super_.call(this, "quark.List<quark.reflect.Field>");
    (this).name = "quark.List";
    (this).parameters = ["quark.reflect.Field"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_reflect_Field_ = quark_List_quark_reflect_Field_;
_qrt.util.inherits(quark_List_quark_reflect_Field_, quark.reflect.Class);

function quark_List_quark_reflect_Field___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_reflect_Field_.prototype.__init_fields__ = quark_List_quark_reflect_Field___init_fields__;
quark_List_quark_reflect_Field_.singleton = new quark_List_quark_reflect_Field_();
function quark_List_quark_reflect_Field__construct(args) {
    return new Array();
}
quark_List_quark_reflect_Field_.prototype.construct = quark_List_quark_reflect_Field__construct;

function quark_List_quark_reflect_Field___getClass() {
    return null;
}
quark_List_quark_reflect_Field_.prototype._getClass = quark_List_quark_reflect_Field___getClass;

function quark_List_quark_reflect_Field___getField(name) {
    return null;
}
quark_List_quark_reflect_Field_.prototype._getField = quark_List_quark_reflect_Field___getField;

function quark_List_quark_reflect_Field___setField(name, value) {}
quark_List_quark_reflect_Field_.prototype._setField = quark_List_quark_reflect_Field___setField;


// CLASS quark_List_quark_reflect_Method_

function quark_List_quark_reflect_Method_() {
    quark_List_quark_reflect_Method_.super_.call(this, "quark.List<quark.reflect.Method>");
    (this).name = "quark.List";
    (this).parameters = ["quark.reflect.Method"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_reflect_Method_ = quark_List_quark_reflect_Method_;
_qrt.util.inherits(quark_List_quark_reflect_Method_, quark.reflect.Class);

function quark_List_quark_reflect_Method___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_reflect_Method_.prototype.__init_fields__ = quark_List_quark_reflect_Method___init_fields__;
quark_List_quark_reflect_Method_.singleton = new quark_List_quark_reflect_Method_();
function quark_List_quark_reflect_Method__construct(args) {
    return new Array();
}
quark_List_quark_reflect_Method_.prototype.construct = quark_List_quark_reflect_Method__construct;

function quark_List_quark_reflect_Method___getClass() {
    return null;
}
quark_List_quark_reflect_Method_.prototype._getClass = quark_List_quark_reflect_Method___getClass;

function quark_List_quark_reflect_Method___getField(name) {
    return null;
}
quark_List_quark_reflect_Method_.prototype._getField = quark_List_quark_reflect_Method___getField;

function quark_List_quark_reflect_Method___setField(name, value) {}
quark_List_quark_reflect_Method_.prototype._setField = quark_List_quark_reflect_Method___setField;


// CLASS quark_List_quark_reflect_Class_

function quark_List_quark_reflect_Class_() {
    quark_List_quark_reflect_Class_.super_.call(this, "quark.List<quark.reflect.Class>");
    (this).name = "quark.List";
    (this).parameters = ["quark.reflect.Class"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_reflect_Class_ = quark_List_quark_reflect_Class_;
_qrt.util.inherits(quark_List_quark_reflect_Class_, quark.reflect.Class);

function quark_List_quark_reflect_Class___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_reflect_Class_.prototype.__init_fields__ = quark_List_quark_reflect_Class___init_fields__;
quark_List_quark_reflect_Class_.singleton = new quark_List_quark_reflect_Class_();
function quark_List_quark_reflect_Class__construct(args) {
    return new Array();
}
quark_List_quark_reflect_Class_.prototype.construct = quark_List_quark_reflect_Class__construct;

function quark_List_quark_reflect_Class___getClass() {
    return null;
}
quark_List_quark_reflect_Class_.prototype._getClass = quark_List_quark_reflect_Class___getClass;

function quark_List_quark_reflect_Class___getField(name) {
    return null;
}
quark_List_quark_reflect_Class_.prototype._getField = quark_List_quark_reflect_Class___getField;

function quark_List_quark_reflect_Class___setField(name, value) {}
quark_List_quark_reflect_Class_.prototype._setField = quark_List_quark_reflect_Class___setField;


// CLASS quark_List_quark_concurrent_FutureCompletion_

function quark_List_quark_concurrent_FutureCompletion_() {
    quark_List_quark_concurrent_FutureCompletion_.super_.call(this, "quark.List<quark.concurrent.FutureCompletion>");
    (this).name = "quark.List";
    (this).parameters = ["quark.concurrent.FutureCompletion"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_concurrent_FutureCompletion_ = quark_List_quark_concurrent_FutureCompletion_;
_qrt.util.inherits(quark_List_quark_concurrent_FutureCompletion_, quark.reflect.Class);

function quark_List_quark_concurrent_FutureCompletion___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_concurrent_FutureCompletion_.prototype.__init_fields__ = quark_List_quark_concurrent_FutureCompletion___init_fields__;
quark_List_quark_concurrent_FutureCompletion_.singleton = new quark_List_quark_concurrent_FutureCompletion_();
function quark_List_quark_concurrent_FutureCompletion__construct(args) {
    return new Array();
}
quark_List_quark_concurrent_FutureCompletion_.prototype.construct = quark_List_quark_concurrent_FutureCompletion__construct;

function quark_List_quark_concurrent_FutureCompletion___getClass() {
    return null;
}
quark_List_quark_concurrent_FutureCompletion_.prototype._getClass = quark_List_quark_concurrent_FutureCompletion___getClass;

function quark_List_quark_concurrent_FutureCompletion___getField(name) {
    return null;
}
quark_List_quark_concurrent_FutureCompletion_.prototype._getField = quark_List_quark_concurrent_FutureCompletion___getField;

function quark_List_quark_concurrent_FutureCompletion___setField(name, value) {}
quark_List_quark_concurrent_FutureCompletion_.prototype._setField = quark_List_quark_concurrent_FutureCompletion___setField;


// CLASS quark_List_quark_test_Test_

function quark_List_quark_test_Test_() {
    quark_List_quark_test_Test_.super_.call(this, "quark.List<quark.test.Test>");
    (this).name = "quark.List";
    (this).parameters = ["quark.test.Test"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_List_quark_test_Test_ = quark_List_quark_test_Test_;
_qrt.util.inherits(quark_List_quark_test_Test_, quark.reflect.Class);

function quark_List_quark_test_Test___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_List_quark_test_Test_.prototype.__init_fields__ = quark_List_quark_test_Test___init_fields__;
quark_List_quark_test_Test_.singleton = new quark_List_quark_test_Test_();
function quark_List_quark_test_Test__construct(args) {
    return new Array();
}
quark_List_quark_test_Test_.prototype.construct = quark_List_quark_test_Test__construct;

function quark_List_quark_test_Test___getClass() {
    return null;
}
quark_List_quark_test_Test_.prototype._getClass = quark_List_quark_test_Test___getClass;

function quark_List_quark_test_Test___getField(name) {
    return null;
}
quark_List_quark_test_Test_.prototype._getField = quark_List_quark_test_Test___getField;

function quark_List_quark_test_Test___setField(name, value) {}
quark_List_quark_test_Test_.prototype._setField = quark_List_quark_test_Test___setField;


// CLASS quark_Map_quark_Object_quark_Object_

function quark_Map_quark_Object_quark_Object_() {
    quark_Map_quark_Object_quark_Object_.super_.call(this, "quark.Map<quark.Object,quark.Object>");
    (this).name = "quark.Map";
    (this).parameters = ["quark.Object", "quark.Object"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_Map_quark_Object_quark_Object_ = quark_Map_quark_Object_quark_Object_;
_qrt.util.inherits(quark_Map_quark_Object_quark_Object_, quark.reflect.Class);

function quark_Map_quark_Object_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Map_quark_Object_quark_Object_.prototype.__init_fields__ = quark_Map_quark_Object_quark_Object___init_fields__;
quark_Map_quark_Object_quark_Object_.singleton = new quark_Map_quark_Object_quark_Object_();
function quark_Map_quark_Object_quark_Object__construct(args) {
    return new Map();
}
quark_Map_quark_Object_quark_Object_.prototype.construct = quark_Map_quark_Object_quark_Object__construct;

function quark_Map_quark_Object_quark_Object___getClass() {
    return null;
}
quark_Map_quark_Object_quark_Object_.prototype._getClass = quark_Map_quark_Object_quark_Object___getClass;

function quark_Map_quark_Object_quark_Object___getField(name) {
    return null;
}
quark_Map_quark_Object_quark_Object_.prototype._getField = quark_Map_quark_Object_quark_Object___getField;

function quark_Map_quark_Object_quark_Object___setField(name, value) {}
quark_Map_quark_Object_quark_Object_.prototype._setField = quark_Map_quark_Object_quark_Object___setField;


// CLASS quark_Map_quark_String_quark_reflect_Class_

function quark_Map_quark_String_quark_reflect_Class_() {
    quark_Map_quark_String_quark_reflect_Class_.super_.call(this, "quark.Map<quark.String,quark.reflect.Class>");
    (this).name = "quark.Map";
    (this).parameters = ["quark.String", "quark.reflect.Class"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_Map_quark_String_quark_reflect_Class_ = quark_Map_quark_String_quark_reflect_Class_;
_qrt.util.inherits(quark_Map_quark_String_quark_reflect_Class_, quark.reflect.Class);

function quark_Map_quark_String_quark_reflect_Class___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Map_quark_String_quark_reflect_Class_.prototype.__init_fields__ = quark_Map_quark_String_quark_reflect_Class___init_fields__;
quark_Map_quark_String_quark_reflect_Class_.singleton = new quark_Map_quark_String_quark_reflect_Class_();
function quark_Map_quark_String_quark_reflect_Class__construct(args) {
    return new Map();
}
quark_Map_quark_String_quark_reflect_Class_.prototype.construct = quark_Map_quark_String_quark_reflect_Class__construct;

function quark_Map_quark_String_quark_reflect_Class___getClass() {
    return null;
}
quark_Map_quark_String_quark_reflect_Class_.prototype._getClass = quark_Map_quark_String_quark_reflect_Class___getClass;

function quark_Map_quark_String_quark_reflect_Class___getField(name) {
    return null;
}
quark_Map_quark_String_quark_reflect_Class_.prototype._getField = quark_Map_quark_String_quark_reflect_Class___getField;

function quark_Map_quark_String_quark_reflect_Class___setField(name, value) {}
quark_Map_quark_String_quark_reflect_Class_.prototype._setField = quark_Map_quark_String_quark_reflect_Class___setField;


// CLASS quark_Map_quark_String_quark_Object_

function quark_Map_quark_String_quark_Object_() {
    quark_Map_quark_String_quark_Object_.super_.call(this, "quark.Map<quark.String,quark.Object>");
    (this).name = "quark.Map";
    (this).parameters = ["quark.String", "quark.Object"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_Map_quark_String_quark_Object_ = quark_Map_quark_String_quark_Object_;
_qrt.util.inherits(quark_Map_quark_String_quark_Object_, quark.reflect.Class);

function quark_Map_quark_String_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Map_quark_String_quark_Object_.prototype.__init_fields__ = quark_Map_quark_String_quark_Object___init_fields__;
quark_Map_quark_String_quark_Object_.singleton = new quark_Map_quark_String_quark_Object_();
function quark_Map_quark_String_quark_Object__construct(args) {
    return new Map();
}
quark_Map_quark_String_quark_Object_.prototype.construct = quark_Map_quark_String_quark_Object__construct;

function quark_Map_quark_String_quark_Object___getClass() {
    return null;
}
quark_Map_quark_String_quark_Object_.prototype._getClass = quark_Map_quark_String_quark_Object___getClass;

function quark_Map_quark_String_quark_Object___getField(name) {
    return null;
}
quark_Map_quark_String_quark_Object_.prototype._getField = quark_Map_quark_String_quark_Object___getField;

function quark_Map_quark_String_quark_Object___setField(name, value) {}
quark_Map_quark_String_quark_Object_.prototype._setField = quark_Map_quark_String_quark_Object___setField;


// CLASS quark_Map_quark_String_quark_ServiceInstance_

function quark_Map_quark_String_quark_ServiceInstance_() {
    quark_Map_quark_String_quark_ServiceInstance_.super_.call(this, "quark.Map<quark.String,quark.ServiceInstance>");
    (this).name = "quark.Map";
    (this).parameters = ["quark.String", "quark.ServiceInstance"];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_Map_quark_String_quark_ServiceInstance_ = quark_Map_quark_String_quark_ServiceInstance_;
_qrt.util.inherits(quark_Map_quark_String_quark_ServiceInstance_, quark.reflect.Class);

function quark_Map_quark_String_quark_ServiceInstance___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Map_quark_String_quark_ServiceInstance_.prototype.__init_fields__ = quark_Map_quark_String_quark_ServiceInstance___init_fields__;
quark_Map_quark_String_quark_ServiceInstance_.singleton = new quark_Map_quark_String_quark_ServiceInstance_();
function quark_Map_quark_String_quark_ServiceInstance__construct(args) {
    return new Map();
}
quark_Map_quark_String_quark_ServiceInstance_.prototype.construct = quark_Map_quark_String_quark_ServiceInstance__construct;

function quark_Map_quark_String_quark_ServiceInstance___getClass() {
    return null;
}
quark_Map_quark_String_quark_ServiceInstance_.prototype._getClass = quark_Map_quark_String_quark_ServiceInstance___getClass;

function quark_Map_quark_String_quark_ServiceInstance___getField(name) {
    return null;
}
quark_Map_quark_String_quark_ServiceInstance_.prototype._getField = quark_Map_quark_String_quark_ServiceInstance___getField;

function quark_Map_quark_String_quark_ServiceInstance___setField(name, value) {}
quark_Map_quark_String_quark_ServiceInstance_.prototype._setField = quark_Map_quark_String_quark_ServiceInstance___setField;


// CLASS quark_logging_Appender

function quark_logging_Appender() {
    quark_logging_Appender.super_.call(this, "quark.logging.Appender");
    (this).name = "quark.logging.Appender";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_logging_Appender = quark_logging_Appender;
_qrt.util.inherits(quark_logging_Appender, quark.reflect.Class);

function quark_logging_Appender__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_logging_Appender.prototype.__init_fields__ = quark_logging_Appender__init_fields__;
quark_logging_Appender.singleton = new quark_logging_Appender();
function quark_logging_Appender_construct(args) {
    return null;
}
quark_logging_Appender.prototype.construct = quark_logging_Appender_construct;

function quark_logging_Appender__getClass() {
    return null;
}
quark_logging_Appender.prototype._getClass = quark_logging_Appender__getClass;

function quark_logging_Appender__getField(name) {
    return null;
}
quark_logging_Appender.prototype._getField = quark_logging_Appender__getField;

function quark_logging_Appender__setField(name, value) {}
quark_logging_Appender.prototype._setField = quark_logging_Appender__setField;


// CLASS quark_logging_Config_setAppender_Method

function quark_logging_Config_setAppender_Method() {
    quark_logging_Config_setAppender_Method.super_.call(this, "quark.logging.Config", "setAppender", ["quark.logging.Appender"]);
}
exports.quark_logging_Config_setAppender_Method = quark_logging_Config_setAppender_Method;
_qrt.util.inherits(quark_logging_Config_setAppender_Method, quark.reflect.Method);

function quark_logging_Config_setAppender_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_logging_Config_setAppender_Method.prototype.__init_fields__ = quark_logging_Config_setAppender_Method__init_fields__;

function quark_logging_Config_setAppender_Method_invoke(object, args) {
    var obj = object;
    return (obj).setAppender((args)[0]);
}
quark_logging_Config_setAppender_Method.prototype.invoke = quark_logging_Config_setAppender_Method_invoke;

function quark_logging_Config_setAppender_Method__getClass() {
    return null;
}
quark_logging_Config_setAppender_Method.prototype._getClass = quark_logging_Config_setAppender_Method__getClass;

function quark_logging_Config_setAppender_Method__getField(name) {
    return null;
}
quark_logging_Config_setAppender_Method.prototype._getField = quark_logging_Config_setAppender_Method__getField;

function quark_logging_Config_setAppender_Method__setField(name, value) {}
quark_logging_Config_setAppender_Method.prototype._setField = quark_logging_Config_setAppender_Method__setField;

// CLASS quark_logging_Config_setLevel_Method

function quark_logging_Config_setLevel_Method() {
    quark_logging_Config_setLevel_Method.super_.call(this, "quark.logging.Config", "setLevel", ["quark.String"]);
}
exports.quark_logging_Config_setLevel_Method = quark_logging_Config_setLevel_Method;
_qrt.util.inherits(quark_logging_Config_setLevel_Method, quark.reflect.Method);

function quark_logging_Config_setLevel_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_logging_Config_setLevel_Method.prototype.__init_fields__ = quark_logging_Config_setLevel_Method__init_fields__;

function quark_logging_Config_setLevel_Method_invoke(object, args) {
    var obj = object;
    return (obj).setLevel((args)[0]);
}
quark_logging_Config_setLevel_Method.prototype.invoke = quark_logging_Config_setLevel_Method_invoke;

function quark_logging_Config_setLevel_Method__getClass() {
    return null;
}
quark_logging_Config_setLevel_Method.prototype._getClass = quark_logging_Config_setLevel_Method__getClass;

function quark_logging_Config_setLevel_Method__getField(name) {
    return null;
}
quark_logging_Config_setLevel_Method.prototype._getField = quark_logging_Config_setLevel_Method__getField;

function quark_logging_Config_setLevel_Method__setField(name, value) {}
quark_logging_Config_setLevel_Method.prototype._setField = quark_logging_Config_setLevel_Method__setField;

// CLASS quark_logging_Config_configure_Method

function quark_logging_Config_configure_Method() {
    quark_logging_Config_configure_Method.super_.call(this, "quark.void", "configure", []);
}
exports.quark_logging_Config_configure_Method = quark_logging_Config_configure_Method;
_qrt.util.inherits(quark_logging_Config_configure_Method, quark.reflect.Method);

function quark_logging_Config_configure_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_logging_Config_configure_Method.prototype.__init_fields__ = quark_logging_Config_configure_Method__init_fields__;

function quark_logging_Config_configure_Method_invoke(object, args) {
    var obj = object;
    (obj).configure();
    return null;
}
quark_logging_Config_configure_Method.prototype.invoke = quark_logging_Config_configure_Method_invoke;

function quark_logging_Config_configure_Method__getClass() {
    return null;
}
quark_logging_Config_configure_Method.prototype._getClass = quark_logging_Config_configure_Method__getClass;

function quark_logging_Config_configure_Method__getField(name) {
    return null;
}
quark_logging_Config_configure_Method.prototype._getField = quark_logging_Config_configure_Method__getField;

function quark_logging_Config_configure_Method__setField(name, value) {}
quark_logging_Config_configure_Method.prototype._setField = quark_logging_Config_configure_Method__setField;

// CLASS quark_logging_Config

function quark_logging_Config() {
    quark_logging_Config.super_.call(this, "quark.logging.Config");
    (this).name = "quark.logging.Config";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new quark_logging_Config_setAppender_Method(), new quark_logging_Config_setLevel_Method(), new quark_logging_Config_configure_Method()];
}
exports.quark_logging_Config = quark_logging_Config;
_qrt.util.inherits(quark_logging_Config, quark.reflect.Class);

function quark_logging_Config__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_logging_Config.prototype.__init_fields__ = quark_logging_Config__init_fields__;
quark_logging_Config.singleton = new quark_logging_Config();
function quark_logging_Config_construct(args) {
    return null;
}
quark_logging_Config.prototype.construct = quark_logging_Config_construct;

function quark_logging_Config__getClass() {
    return null;
}
quark_logging_Config.prototype._getClass = quark_logging_Config__getClass;

function quark_logging_Config__getField(name) {
    return null;
}
quark_logging_Config.prototype._getField = quark_logging_Config__getField;

function quark_logging_Config__setField(name, value) {}
quark_logging_Config.prototype._setField = quark_logging_Config__setField;


// CLASS quark_reflect_Class

function quark_reflect_Class() {
    quark_reflect_Class.super_.call(this, "quark.reflect.Class");
    (this).name = "quark.reflect.Class";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.Map<quark.String,quark.reflect.Class>", "classes"), new quark.reflect.Field("quark.reflect.Class", "VOID"), new quark.reflect.Field("quark.reflect.Class", "BOOL"), new quark.reflect.Field("quark.reflect.Class", "INT"), new quark.reflect.Field("quark.reflect.Class", "LONG"), new quark.reflect.Field("quark.reflect.Class", "FLOAT"), new quark.reflect.Field("quark.reflect.Class", "STRING"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.String", "name"), new quark.reflect.Field("quark.List<quark.String>", "parameters"), new quark.reflect.Field("quark.List<quark.reflect.Field>", "fields"), new quark.reflect.Field("quark.List<quark.reflect.Method>", "methods")];
    (this).methods = [];
}
exports.quark_reflect_Class = quark_reflect_Class;
_qrt.util.inherits(quark_reflect_Class, quark.reflect.Class);

function quark_reflect_Class__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_reflect_Class.prototype.__init_fields__ = quark_reflect_Class__init_fields__;
quark_reflect_Class.singleton = new quark_reflect_Class();
function quark_reflect_Class_construct(args) {
    return new quark.reflect.Class((args)[0]);
}
quark_reflect_Class.prototype.construct = quark_reflect_Class_construct;

function quark_reflect_Class__getClass() {
    return null;
}
quark_reflect_Class.prototype._getClass = quark_reflect_Class__getClass;

function quark_reflect_Class__getField(name) {
    return null;
}
quark_reflect_Class.prototype._getField = quark_reflect_Class__getField;

function quark_reflect_Class__setField(name, value) {}
quark_reflect_Class.prototype._setField = quark_reflect_Class__setField;


// CLASS quark_reflect_Field

function quark_reflect_Field() {
    quark_reflect_Field.super_.call(this, "quark.reflect.Field");
    (this).name = "quark.reflect.Field";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "type"), new quark.reflect.Field("quark.String", "name")];
    (this).methods = [];
}
exports.quark_reflect_Field = quark_reflect_Field;
_qrt.util.inherits(quark_reflect_Field, quark.reflect.Class);

function quark_reflect_Field__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_reflect_Field.prototype.__init_fields__ = quark_reflect_Field__init_fields__;
quark_reflect_Field.singleton = new quark_reflect_Field();
function quark_reflect_Field_construct(args) {
    return new quark.reflect.Field((args)[0], (args)[1]);
}
quark_reflect_Field.prototype.construct = quark_reflect_Field_construct;

function quark_reflect_Field__getClass() {
    return null;
}
quark_reflect_Field.prototype._getClass = quark_reflect_Field__getClass;

function quark_reflect_Field__getField(name) {
    return null;
}
quark_reflect_Field.prototype._getField = quark_reflect_Field__getField;

function quark_reflect_Field__setField(name, value) {}
quark_reflect_Field.prototype._setField = quark_reflect_Field__setField;


// CLASS quark_Servlet

function quark_Servlet() {
    quark_Servlet.super_.call(this, "quark.Servlet");
    (this).name = "quark.Servlet";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_Servlet = quark_Servlet;
_qrt.util.inherits(quark_Servlet, quark.reflect.Class);

function quark_Servlet__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Servlet.prototype.__init_fields__ = quark_Servlet__init_fields__;
quark_Servlet.singleton = new quark_Servlet();
function quark_Servlet_construct(args) {
    return null;
}
quark_Servlet.prototype.construct = quark_Servlet_construct;

function quark_Servlet__getClass() {
    return null;
}
quark_Servlet.prototype._getClass = quark_Servlet__getClass;

function quark_Servlet__getField(name) {
    return null;
}
quark_Servlet.prototype._getField = quark_Servlet__getField;

function quark_Servlet__setField(name, value) {}
quark_Servlet.prototype._setField = quark_Servlet__setField;


// CLASS quark_Resolver

function quark_Resolver() {
    quark_Resolver.super_.call(this, "quark.Resolver");
    (this).name = "quark.Resolver";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_Resolver = quark_Resolver;
_qrt.util.inherits(quark_Resolver, quark.reflect.Class);

function quark_Resolver__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Resolver.prototype.__init_fields__ = quark_Resolver__init_fields__;
quark_Resolver.singleton = new quark_Resolver();
function quark_Resolver_construct(args) {
    return null;
}
quark_Resolver.prototype.construct = quark_Resolver_construct;

function quark_Resolver__getClass() {
    return null;
}
quark_Resolver.prototype._getClass = quark_Resolver__getClass;

function quark_Resolver__getField(name) {
    return null;
}
quark_Resolver.prototype._getField = quark_Resolver__getField;

function quark_Resolver__setField(name, value) {}
quark_Resolver.prototype._setField = quark_Resolver__setField;


// CLASS quark_ResponseHolder

function quark_ResponseHolder() {
    quark_ResponseHolder.super_.call(this, "quark.ResponseHolder");
    (this).name = "quark.ResponseHolder";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.HTTPResponse", "response"), new quark.reflect.Field("quark.String", "failure")];
    (this).methods = [];
}
exports.quark_ResponseHolder = quark_ResponseHolder;
_qrt.util.inherits(quark_ResponseHolder, quark.reflect.Class);

function quark_ResponseHolder__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_ResponseHolder.prototype.__init_fields__ = quark_ResponseHolder__init_fields__;
quark_ResponseHolder.singleton = new quark_ResponseHolder();
function quark_ResponseHolder_construct(args) {
    return new quark.ResponseHolder();
}
quark_ResponseHolder.prototype.construct = quark_ResponseHolder_construct;

function quark_ResponseHolder__getClass() {
    return null;
}
quark_ResponseHolder.prototype._getClass = quark_ResponseHolder__getClass;

function quark_ResponseHolder__getField(name) {
    return null;
}
quark_ResponseHolder.prototype._getField = quark_ResponseHolder__getField;

function quark_ResponseHolder__setField(name, value) {}
quark_ResponseHolder.prototype._setField = quark_ResponseHolder__setField;


// CLASS quark_Service

function quark_Service() {
    quark_Service.super_.call(this, "quark.Service");
    (this).name = "quark.Service";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_Service = quark_Service;
_qrt.util.inherits(quark_Service, quark.reflect.Class);

function quark_Service__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Service.prototype.__init_fields__ = quark_Service__init_fields__;
quark_Service.singleton = new quark_Service();
function quark_Service_construct(args) {
    return null;
}
quark_Service.prototype.construct = quark_Service_construct;

function quark_Service__getClass() {
    return null;
}
quark_Service.prototype._getClass = quark_Service__getClass;

function quark_Service__getField(name) {
    return null;
}
quark_Service.prototype._getField = quark_Service__getField;

function quark_Service__setField(name, value) {}
quark_Service.prototype._setField = quark_Service__setField;


// CLASS quark_BaseService

function quark_BaseService() {
    quark_BaseService.super_.call(this, "quark.BaseService");
    (this).name = "quark.BaseService";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_BaseService = quark_BaseService;
_qrt.util.inherits(quark_BaseService, quark.reflect.Class);

function quark_BaseService__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_BaseService.prototype.__init_fields__ = quark_BaseService__init_fields__;
quark_BaseService.singleton = new quark_BaseService();
function quark_BaseService_construct(args) {
    return new quark.BaseService();
}
quark_BaseService.prototype.construct = quark_BaseService_construct;

function quark_BaseService__getClass() {
    return null;
}
quark_BaseService.prototype._getClass = quark_BaseService__getClass;

function quark_BaseService__getField(name) {
    return null;
}
quark_BaseService.prototype._getField = quark_BaseService__getField;

function quark_BaseService__setField(name, value) {}
quark_BaseService.prototype._setField = quark_BaseService__setField;


// CLASS quark_ServiceInstance

function quark_ServiceInstance() {
    quark_ServiceInstance.super_.call(this, "quark.ServiceInstance");
    (this).name = "quark.ServiceInstance";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "serviceName"), new quark.reflect.Field("quark.String", "url"), new quark.reflect.Field("quark.behaviors.CircuitBreaker", "breaker")];
    (this).methods = [];
}
exports.quark_ServiceInstance = quark_ServiceInstance;
_qrt.util.inherits(quark_ServiceInstance, quark.reflect.Class);

function quark_ServiceInstance__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_ServiceInstance.prototype.__init_fields__ = quark_ServiceInstance__init_fields__;
quark_ServiceInstance.singleton = new quark_ServiceInstance();
function quark_ServiceInstance_construct(args) {
    return new quark.ServiceInstance((args)[0], (args)[1], (args)[2], (args)[3]);
}
quark_ServiceInstance.prototype.construct = quark_ServiceInstance_construct;

function quark_ServiceInstance__getClass() {
    return null;
}
quark_ServiceInstance.prototype._getClass = quark_ServiceInstance__getClass;

function quark_ServiceInstance__getField(name) {
    return null;
}
quark_ServiceInstance.prototype._getField = quark_ServiceInstance__getField;

function quark_ServiceInstance__setField(name, value) {}
quark_ServiceInstance.prototype._setField = quark_ServiceInstance__setField;


// CLASS quark_DegenerateResolver

function quark_DegenerateResolver() {
    quark_DegenerateResolver.super_.call(this, "quark.DegenerateResolver");
    (this).name = "quark.DegenerateResolver";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_DegenerateResolver = quark_DegenerateResolver;
_qrt.util.inherits(quark_DegenerateResolver, quark.reflect.Class);

function quark_DegenerateResolver__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_DegenerateResolver.prototype.__init_fields__ = quark_DegenerateResolver__init_fields__;
quark_DegenerateResolver.singleton = new quark_DegenerateResolver();
function quark_DegenerateResolver_construct(args) {
    return new quark.DegenerateResolver();
}
quark_DegenerateResolver.prototype.construct = quark_DegenerateResolver_construct;

function quark_DegenerateResolver__getClass() {
    return null;
}
quark_DegenerateResolver.prototype._getClass = quark_DegenerateResolver__getClass;

function quark_DegenerateResolver__getField(name) {
    return null;
}
quark_DegenerateResolver.prototype._getField = quark_DegenerateResolver__getField;

function quark_DegenerateResolver__setField(name, value) {}
quark_DegenerateResolver.prototype._setField = quark_DegenerateResolver__setField;


// CLASS quark_Client

function quark_Client() {
    quark_Client.super_.call(this, "quark.Client");
    (this).name = "quark.Client";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.Logger", "logger"), new quark.reflect.Field("quark.Resolver", "resolver"), new quark.reflect.Field("quark.String", "serviceName"), new quark.reflect.Field("quark.float", "_timeout"), new quark.reflect.Field("quark.int", "_failureLimit"), new quark.reflect.Field("quark.float", "_retestDelay"), new quark.reflect.Field("quark.concurrent.Lock", "mutex"), new quark.reflect.Field("quark.Map<quark.String,quark.ServiceInstance>", "instanceMap"), new quark.reflect.Field("quark.int", "counter")];
    (this).methods = [];
}
exports.quark_Client = quark_Client;
_qrt.util.inherits(quark_Client, quark.reflect.Class);

function quark_Client__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Client.prototype.__init_fields__ = quark_Client__init_fields__;
quark_Client.singleton = new quark_Client();
function quark_Client_construct(args) {
    return new quark.Client((args)[0]);
}
quark_Client.prototype.construct = quark_Client_construct;

function quark_Client__getClass() {
    return null;
}
quark_Client.prototype._getClass = quark_Client__getClass;

function quark_Client__getField(name) {
    return null;
}
quark_Client.prototype._getField = quark_Client__getField;

function quark_Client__setField(name, value) {}
quark_Client.prototype._setField = quark_Client__setField;


// CLASS quark_ServerResponder

function quark_ServerResponder() {
    quark_ServerResponder.super_.call(this, "quark.ServerResponder");
    (this).name = "quark.ServerResponder";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.bool", "sendCORS"), new quark.reflect.Field("quark.HTTPRequest", "request"), new quark.reflect.Field("quark.HTTPResponse", "response")];
    (this).methods = [];
}
exports.quark_ServerResponder = quark_ServerResponder;
_qrt.util.inherits(quark_ServerResponder, quark.reflect.Class);

function quark_ServerResponder__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_ServerResponder.prototype.__init_fields__ = quark_ServerResponder__init_fields__;
quark_ServerResponder.singleton = new quark_ServerResponder();
function quark_ServerResponder_construct(args) {
    return new quark.ServerResponder((args)[0], (args)[1], (args)[2]);
}
quark_ServerResponder.prototype.construct = quark_ServerResponder_construct;

function quark_ServerResponder__getClass() {
    return null;
}
quark_ServerResponder.prototype._getClass = quark_ServerResponder__getClass;

function quark_ServerResponder__getField(name) {
    return null;
}
quark_ServerResponder.prototype._getField = quark_ServerResponder__getField;

function quark_ServerResponder__setField(name, value) {}
quark_ServerResponder.prototype._setField = quark_ServerResponder__setField;


// CLASS quark_Server_quark_Object_

function quark_Server_quark_Object_() {
    quark_Server_quark_Object_.super_.call(this, "quark.Server<quark.Object>");
    (this).name = "quark.Server";
    (this).parameters = ["quark.Object"];
    (this).fields = [new quark.reflect.Field("quark.Object", "impl"), new quark.reflect.Field("quark.bool", "_sendCORS")];
    (this).methods = [];
}
exports.quark_Server_quark_Object_ = quark_Server_quark_Object_;
_qrt.util.inherits(quark_Server_quark_Object_, quark.reflect.Class);

function quark_Server_quark_Object___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_Server_quark_Object_.prototype.__init_fields__ = quark_Server_quark_Object___init_fields__;
quark_Server_quark_Object_.singleton = new quark_Server_quark_Object_();
function quark_Server_quark_Object__construct(args) {
    return new quark.Server((args)[0]);
}
quark_Server_quark_Object_.prototype.construct = quark_Server_quark_Object__construct;

function quark_Server_quark_Object___getClass() {
    return null;
}
quark_Server_quark_Object_.prototype._getClass = quark_Server_quark_Object___getClass;

function quark_Server_quark_Object___getField(name) {
    return null;
}
quark_Server_quark_Object_.prototype._getField = quark_Server_quark_Object___getField;

function quark_Server_quark_Object___setField(name, value) {}
quark_Server_quark_Object_.prototype._setField = quark_Server_quark_Object___setField;


// CLASS quark_behaviors_RPC_call_Method

function quark_behaviors_RPC_call_Method() {
    quark_behaviors_RPC_call_Method.super_.call(this, "quark.concurrent.Future", "call", ["quark.List<quark.Object>"]);
}
exports.quark_behaviors_RPC_call_Method = quark_behaviors_RPC_call_Method;
_qrt.util.inherits(quark_behaviors_RPC_call_Method, quark.reflect.Method);

function quark_behaviors_RPC_call_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_RPC_call_Method.prototype.__init_fields__ = quark_behaviors_RPC_call_Method__init_fields__;

function quark_behaviors_RPC_call_Method_invoke(object, args) {
    var obj = object;
    return (obj).call((args)[0]);
}
quark_behaviors_RPC_call_Method.prototype.invoke = quark_behaviors_RPC_call_Method_invoke;

function quark_behaviors_RPC_call_Method__getClass() {
    return null;
}
quark_behaviors_RPC_call_Method.prototype._getClass = quark_behaviors_RPC_call_Method__getClass;

function quark_behaviors_RPC_call_Method__getField(name) {
    return null;
}
quark_behaviors_RPC_call_Method.prototype._getField = quark_behaviors_RPC_call_Method__getField;

function quark_behaviors_RPC_call_Method__setField(name, value) {}
quark_behaviors_RPC_call_Method.prototype._setField = quark_behaviors_RPC_call_Method__setField;

// CLASS quark_behaviors_RPC_succeed_Method

function quark_behaviors_RPC_succeed_Method() {
    quark_behaviors_RPC_succeed_Method.super_.call(this, "quark.void", "succeed", ["quark.String"]);
}
exports.quark_behaviors_RPC_succeed_Method = quark_behaviors_RPC_succeed_Method;
_qrt.util.inherits(quark_behaviors_RPC_succeed_Method, quark.reflect.Method);

function quark_behaviors_RPC_succeed_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_RPC_succeed_Method.prototype.__init_fields__ = quark_behaviors_RPC_succeed_Method__init_fields__;

function quark_behaviors_RPC_succeed_Method_invoke(object, args) {
    var obj = object;
    (obj).succeed((args)[0]);
    return null;
}
quark_behaviors_RPC_succeed_Method.prototype.invoke = quark_behaviors_RPC_succeed_Method_invoke;

function quark_behaviors_RPC_succeed_Method__getClass() {
    return null;
}
quark_behaviors_RPC_succeed_Method.prototype._getClass = quark_behaviors_RPC_succeed_Method__getClass;

function quark_behaviors_RPC_succeed_Method__getField(name) {
    return null;
}
quark_behaviors_RPC_succeed_Method.prototype._getField = quark_behaviors_RPC_succeed_Method__getField;

function quark_behaviors_RPC_succeed_Method__setField(name, value) {}
quark_behaviors_RPC_succeed_Method.prototype._setField = quark_behaviors_RPC_succeed_Method__setField;

// CLASS quark_behaviors_RPC_fail_Method

function quark_behaviors_RPC_fail_Method() {
    quark_behaviors_RPC_fail_Method.super_.call(this, "quark.void", "fail", ["quark.String"]);
}
exports.quark_behaviors_RPC_fail_Method = quark_behaviors_RPC_fail_Method;
_qrt.util.inherits(quark_behaviors_RPC_fail_Method, quark.reflect.Method);

function quark_behaviors_RPC_fail_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_RPC_fail_Method.prototype.__init_fields__ = quark_behaviors_RPC_fail_Method__init_fields__;

function quark_behaviors_RPC_fail_Method_invoke(object, args) {
    var obj = object;
    (obj).fail((args)[0]);
    return null;
}
quark_behaviors_RPC_fail_Method.prototype.invoke = quark_behaviors_RPC_fail_Method_invoke;

function quark_behaviors_RPC_fail_Method__getClass() {
    return null;
}
quark_behaviors_RPC_fail_Method.prototype._getClass = quark_behaviors_RPC_fail_Method__getClass;

function quark_behaviors_RPC_fail_Method__getField(name) {
    return null;
}
quark_behaviors_RPC_fail_Method.prototype._getField = quark_behaviors_RPC_fail_Method__getField;

function quark_behaviors_RPC_fail_Method__setField(name, value) {}
quark_behaviors_RPC_fail_Method.prototype._setField = quark_behaviors_RPC_fail_Method__setField;

// CLASS quark_behaviors_RPC_toString_Method

function quark_behaviors_RPC_toString_Method() {
    quark_behaviors_RPC_toString_Method.super_.call(this, "quark.String", "toString", []);
}
exports.quark_behaviors_RPC_toString_Method = quark_behaviors_RPC_toString_Method;
_qrt.util.inherits(quark_behaviors_RPC_toString_Method, quark.reflect.Method);

function quark_behaviors_RPC_toString_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_RPC_toString_Method.prototype.__init_fields__ = quark_behaviors_RPC_toString_Method__init_fields__;

function quark_behaviors_RPC_toString_Method_invoke(object, args) {
    var obj = object;
    return (obj).toString();
}
quark_behaviors_RPC_toString_Method.prototype.invoke = quark_behaviors_RPC_toString_Method_invoke;

function quark_behaviors_RPC_toString_Method__getClass() {
    return null;
}
quark_behaviors_RPC_toString_Method.prototype._getClass = quark_behaviors_RPC_toString_Method__getClass;

function quark_behaviors_RPC_toString_Method__getField(name) {
    return null;
}
quark_behaviors_RPC_toString_Method.prototype._getField = quark_behaviors_RPC_toString_Method__getField;

function quark_behaviors_RPC_toString_Method__setField(name, value) {}
quark_behaviors_RPC_toString_Method.prototype._setField = quark_behaviors_RPC_toString_Method__setField;

// CLASS quark_behaviors_RPC

function quark_behaviors_RPC() {
    quark_behaviors_RPC.super_.call(this, "quark.behaviors.RPC");
    (this).name = "quark.behaviors.RPC";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.Service", "service"), new quark.reflect.Field("quark.reflect.Class", "returned"), new quark.reflect.Field("quark.float", "timeout"), new quark.reflect.Field("quark.String", "methodName"), new quark.reflect.Field("quark.ServiceInstance", "instance")];
    (this).methods = [new quark_behaviors_RPC_call_Method(), new quark_behaviors_RPC_succeed_Method(), new quark_behaviors_RPC_fail_Method(), new quark_behaviors_RPC_toString_Method()];
}
exports.quark_behaviors_RPC = quark_behaviors_RPC;
_qrt.util.inherits(quark_behaviors_RPC, quark.reflect.Class);

function quark_behaviors_RPC__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_behaviors_RPC.prototype.__init_fields__ = quark_behaviors_RPC__init_fields__;
quark_behaviors_RPC.singleton = new quark_behaviors_RPC();
function quark_behaviors_RPC_construct(args) {
    return new quark.behaviors.RPC((args)[0], (args)[1]);
}
quark_behaviors_RPC.prototype.construct = quark_behaviors_RPC_construct;

function quark_behaviors_RPC__getClass() {
    return null;
}
quark_behaviors_RPC.prototype._getClass = quark_behaviors_RPC__getClass;

function quark_behaviors_RPC__getField(name) {
    return null;
}
quark_behaviors_RPC.prototype._getField = quark_behaviors_RPC__getField;

function quark_behaviors_RPC__setField(name, value) {}
quark_behaviors_RPC.prototype._setField = quark_behaviors_RPC__setField;


// CLASS quark_behaviors_RPCRequest_call_Method

function quark_behaviors_RPCRequest_call_Method() {
    quark_behaviors_RPCRequest_call_Method.super_.call(this, "quark.concurrent.Future", "call", ["quark.HTTPRequest"]);
}
exports.quark_behaviors_RPCRequest_call_Method = quark_behaviors_RPCRequest_call_Method;
_qrt.util.inherits(quark_behaviors_RPCRequest_call_Method, quark.reflect.Method);

function quark_behaviors_RPCRequest_call_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_RPCRequest_call_Method.prototype.__init_fields__ = quark_behaviors_RPCRequest_call_Method__init_fields__;

function quark_behaviors_RPCRequest_call_Method_invoke(object, args) {
    var obj = object;
    return (obj).call((args)[0]);
}
quark_behaviors_RPCRequest_call_Method.prototype.invoke = quark_behaviors_RPCRequest_call_Method_invoke;

function quark_behaviors_RPCRequest_call_Method__getClass() {
    return null;
}
quark_behaviors_RPCRequest_call_Method.prototype._getClass = quark_behaviors_RPCRequest_call_Method__getClass;

function quark_behaviors_RPCRequest_call_Method__getField(name) {
    return null;
}
quark_behaviors_RPCRequest_call_Method.prototype._getField = quark_behaviors_RPCRequest_call_Method__getField;

function quark_behaviors_RPCRequest_call_Method__setField(name, value) {}
quark_behaviors_RPCRequest_call_Method.prototype._setField = quark_behaviors_RPCRequest_call_Method__setField;

// CLASS quark_behaviors_RPCRequest_onHTTPResponse_Method

function quark_behaviors_RPCRequest_onHTTPResponse_Method() {
    quark_behaviors_RPCRequest_onHTTPResponse_Method.super_.call(this, "quark.void", "onHTTPResponse", ["quark.HTTPRequest", "quark.HTTPResponse"]);
}
exports.quark_behaviors_RPCRequest_onHTTPResponse_Method = quark_behaviors_RPCRequest_onHTTPResponse_Method;
_qrt.util.inherits(quark_behaviors_RPCRequest_onHTTPResponse_Method, quark.reflect.Method);

function quark_behaviors_RPCRequest_onHTTPResponse_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_RPCRequest_onHTTPResponse_Method.prototype.__init_fields__ = quark_behaviors_RPCRequest_onHTTPResponse_Method__init_fields__;

function quark_behaviors_RPCRequest_onHTTPResponse_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPResponse((args)[0], (args)[1]);
    return null;
}
quark_behaviors_RPCRequest_onHTTPResponse_Method.prototype.invoke = quark_behaviors_RPCRequest_onHTTPResponse_Method_invoke;

function quark_behaviors_RPCRequest_onHTTPResponse_Method__getClass() {
    return null;
}
quark_behaviors_RPCRequest_onHTTPResponse_Method.prototype._getClass = quark_behaviors_RPCRequest_onHTTPResponse_Method__getClass;

function quark_behaviors_RPCRequest_onHTTPResponse_Method__getField(name) {
    return null;
}
quark_behaviors_RPCRequest_onHTTPResponse_Method.prototype._getField = quark_behaviors_RPCRequest_onHTTPResponse_Method__getField;

function quark_behaviors_RPCRequest_onHTTPResponse_Method__setField(name, value) {}
quark_behaviors_RPCRequest_onHTTPResponse_Method.prototype._setField = quark_behaviors_RPCRequest_onHTTPResponse_Method__setField;

// CLASS quark_behaviors_RPCRequest_onTimeout_Method

function quark_behaviors_RPCRequest_onTimeout_Method() {
    quark_behaviors_RPCRequest_onTimeout_Method.super_.call(this, "quark.void", "onTimeout", ["quark.concurrent.Timeout"]);
}
exports.quark_behaviors_RPCRequest_onTimeout_Method = quark_behaviors_RPCRequest_onTimeout_Method;
_qrt.util.inherits(quark_behaviors_RPCRequest_onTimeout_Method, quark.reflect.Method);

function quark_behaviors_RPCRequest_onTimeout_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_RPCRequest_onTimeout_Method.prototype.__init_fields__ = quark_behaviors_RPCRequest_onTimeout_Method__init_fields__;

function quark_behaviors_RPCRequest_onTimeout_Method_invoke(object, args) {
    var obj = object;
    (obj).onTimeout((args)[0]);
    return null;
}
quark_behaviors_RPCRequest_onTimeout_Method.prototype.invoke = quark_behaviors_RPCRequest_onTimeout_Method_invoke;

function quark_behaviors_RPCRequest_onTimeout_Method__getClass() {
    return null;
}
quark_behaviors_RPCRequest_onTimeout_Method.prototype._getClass = quark_behaviors_RPCRequest_onTimeout_Method__getClass;

function quark_behaviors_RPCRequest_onTimeout_Method__getField(name) {
    return null;
}
quark_behaviors_RPCRequest_onTimeout_Method.prototype._getField = quark_behaviors_RPCRequest_onTimeout_Method__getField;

function quark_behaviors_RPCRequest_onTimeout_Method__setField(name, value) {}
quark_behaviors_RPCRequest_onTimeout_Method.prototype._setField = quark_behaviors_RPCRequest_onTimeout_Method__setField;

// CLASS quark_behaviors_RPCRequest_onHTTPInit_Method

function quark_behaviors_RPCRequest_onHTTPInit_Method() {
    quark_behaviors_RPCRequest_onHTTPInit_Method.super_.call(this, "quark.void", "onHTTPInit", ["quark.HTTPRequest"]);
}
exports.quark_behaviors_RPCRequest_onHTTPInit_Method = quark_behaviors_RPCRequest_onHTTPInit_Method;
_qrt.util.inherits(quark_behaviors_RPCRequest_onHTTPInit_Method, quark.reflect.Method);

function quark_behaviors_RPCRequest_onHTTPInit_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_RPCRequest_onHTTPInit_Method.prototype.__init_fields__ = quark_behaviors_RPCRequest_onHTTPInit_Method__init_fields__;

function quark_behaviors_RPCRequest_onHTTPInit_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPInit((args)[0]);
    return null;
}
quark_behaviors_RPCRequest_onHTTPInit_Method.prototype.invoke = quark_behaviors_RPCRequest_onHTTPInit_Method_invoke;

function quark_behaviors_RPCRequest_onHTTPInit_Method__getClass() {
    return null;
}
quark_behaviors_RPCRequest_onHTTPInit_Method.prototype._getClass = quark_behaviors_RPCRequest_onHTTPInit_Method__getClass;

function quark_behaviors_RPCRequest_onHTTPInit_Method__getField(name) {
    return null;
}
quark_behaviors_RPCRequest_onHTTPInit_Method.prototype._getField = quark_behaviors_RPCRequest_onHTTPInit_Method__getField;

function quark_behaviors_RPCRequest_onHTTPInit_Method__setField(name, value) {}
quark_behaviors_RPCRequest_onHTTPInit_Method.prototype._setField = quark_behaviors_RPCRequest_onHTTPInit_Method__setField;

// CLASS quark_behaviors_RPCRequest_onHTTPError_Method

function quark_behaviors_RPCRequest_onHTTPError_Method() {
    quark_behaviors_RPCRequest_onHTTPError_Method.super_.call(this, "quark.void", "onHTTPError", ["quark.HTTPRequest", "quark.String"]);
}
exports.quark_behaviors_RPCRequest_onHTTPError_Method = quark_behaviors_RPCRequest_onHTTPError_Method;
_qrt.util.inherits(quark_behaviors_RPCRequest_onHTTPError_Method, quark.reflect.Method);

function quark_behaviors_RPCRequest_onHTTPError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_RPCRequest_onHTTPError_Method.prototype.__init_fields__ = quark_behaviors_RPCRequest_onHTTPError_Method__init_fields__;

function quark_behaviors_RPCRequest_onHTTPError_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPError((args)[0], (args)[1]);
    return null;
}
quark_behaviors_RPCRequest_onHTTPError_Method.prototype.invoke = quark_behaviors_RPCRequest_onHTTPError_Method_invoke;

function quark_behaviors_RPCRequest_onHTTPError_Method__getClass() {
    return null;
}
quark_behaviors_RPCRequest_onHTTPError_Method.prototype._getClass = quark_behaviors_RPCRequest_onHTTPError_Method__getClass;

function quark_behaviors_RPCRequest_onHTTPError_Method__getField(name) {
    return null;
}
quark_behaviors_RPCRequest_onHTTPError_Method.prototype._getField = quark_behaviors_RPCRequest_onHTTPError_Method__getField;

function quark_behaviors_RPCRequest_onHTTPError_Method__setField(name, value) {}
quark_behaviors_RPCRequest_onHTTPError_Method.prototype._setField = quark_behaviors_RPCRequest_onHTTPError_Method__setField;

// CLASS quark_behaviors_RPCRequest_onHTTPFinal_Method

function quark_behaviors_RPCRequest_onHTTPFinal_Method() {
    quark_behaviors_RPCRequest_onHTTPFinal_Method.super_.call(this, "quark.void", "onHTTPFinal", ["quark.HTTPRequest"]);
}
exports.quark_behaviors_RPCRequest_onHTTPFinal_Method = quark_behaviors_RPCRequest_onHTTPFinal_Method;
_qrt.util.inherits(quark_behaviors_RPCRequest_onHTTPFinal_Method, quark.reflect.Method);

function quark_behaviors_RPCRequest_onHTTPFinal_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_RPCRequest_onHTTPFinal_Method.prototype.__init_fields__ = quark_behaviors_RPCRequest_onHTTPFinal_Method__init_fields__;

function quark_behaviors_RPCRequest_onHTTPFinal_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPFinal((args)[0]);
    return null;
}
quark_behaviors_RPCRequest_onHTTPFinal_Method.prototype.invoke = quark_behaviors_RPCRequest_onHTTPFinal_Method_invoke;

function quark_behaviors_RPCRequest_onHTTPFinal_Method__getClass() {
    return null;
}
quark_behaviors_RPCRequest_onHTTPFinal_Method.prototype._getClass = quark_behaviors_RPCRequest_onHTTPFinal_Method__getClass;

function quark_behaviors_RPCRequest_onHTTPFinal_Method__getField(name) {
    return null;
}
quark_behaviors_RPCRequest_onHTTPFinal_Method.prototype._getField = quark_behaviors_RPCRequest_onHTTPFinal_Method__getField;

function quark_behaviors_RPCRequest_onHTTPFinal_Method__setField(name, value) {}
quark_behaviors_RPCRequest_onHTTPFinal_Method.prototype._setField = quark_behaviors_RPCRequest_onHTTPFinal_Method__setField;

// CLASS quark_behaviors_RPCRequest

function quark_behaviors_RPCRequest() {
    quark_behaviors_RPCRequest.super_.call(this, "quark.behaviors.RPCRequest");
    (this).name = "quark.behaviors.RPCRequest";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.behaviors.RPC", "rpc"), new quark.reflect.Field("quark.concurrent.Future", "retval"), new quark.reflect.Field("quark.List<quark.Object>", "args"), new quark.reflect.Field("quark.concurrent.Timeout", "timeout")];
    (this).methods = [new quark_behaviors_RPCRequest_call_Method(), new quark_behaviors_RPCRequest_onHTTPResponse_Method(), new quark_behaviors_RPCRequest_onTimeout_Method(), new quark_behaviors_RPCRequest_onHTTPInit_Method(), new quark_behaviors_RPCRequest_onHTTPError_Method(), new quark_behaviors_RPCRequest_onHTTPFinal_Method()];
}
exports.quark_behaviors_RPCRequest = quark_behaviors_RPCRequest;
_qrt.util.inherits(quark_behaviors_RPCRequest, quark.reflect.Class);

function quark_behaviors_RPCRequest__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_behaviors_RPCRequest.prototype.__init_fields__ = quark_behaviors_RPCRequest__init_fields__;
quark_behaviors_RPCRequest.singleton = new quark_behaviors_RPCRequest();
function quark_behaviors_RPCRequest_construct(args) {
    return new quark.behaviors.RPCRequest((args)[0], (args)[1]);
}
quark_behaviors_RPCRequest.prototype.construct = quark_behaviors_RPCRequest_construct;

function quark_behaviors_RPCRequest__getClass() {
    return null;
}
quark_behaviors_RPCRequest.prototype._getClass = quark_behaviors_RPCRequest__getClass;

function quark_behaviors_RPCRequest__getField(name) {
    return null;
}
quark_behaviors_RPCRequest.prototype._getField = quark_behaviors_RPCRequest__getField;

function quark_behaviors_RPCRequest__setField(name, value) {}
quark_behaviors_RPCRequest.prototype._setField = quark_behaviors_RPCRequest__setField;


// CLASS quark_behaviors_CircuitBreaker_succeed_Method

function quark_behaviors_CircuitBreaker_succeed_Method() {
    quark_behaviors_CircuitBreaker_succeed_Method.super_.call(this, "quark.void", "succeed", []);
}
exports.quark_behaviors_CircuitBreaker_succeed_Method = quark_behaviors_CircuitBreaker_succeed_Method;
_qrt.util.inherits(quark_behaviors_CircuitBreaker_succeed_Method, quark.reflect.Method);

function quark_behaviors_CircuitBreaker_succeed_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_CircuitBreaker_succeed_Method.prototype.__init_fields__ = quark_behaviors_CircuitBreaker_succeed_Method__init_fields__;

function quark_behaviors_CircuitBreaker_succeed_Method_invoke(object, args) {
    var obj = object;
    (obj).succeed();
    return null;
}
quark_behaviors_CircuitBreaker_succeed_Method.prototype.invoke = quark_behaviors_CircuitBreaker_succeed_Method_invoke;

function quark_behaviors_CircuitBreaker_succeed_Method__getClass() {
    return null;
}
quark_behaviors_CircuitBreaker_succeed_Method.prototype._getClass = quark_behaviors_CircuitBreaker_succeed_Method__getClass;

function quark_behaviors_CircuitBreaker_succeed_Method__getField(name) {
    return null;
}
quark_behaviors_CircuitBreaker_succeed_Method.prototype._getField = quark_behaviors_CircuitBreaker_succeed_Method__getField;

function quark_behaviors_CircuitBreaker_succeed_Method__setField(name, value) {}
quark_behaviors_CircuitBreaker_succeed_Method.prototype._setField = quark_behaviors_CircuitBreaker_succeed_Method__setField;

// CLASS quark_behaviors_CircuitBreaker_fail_Method

function quark_behaviors_CircuitBreaker_fail_Method() {
    quark_behaviors_CircuitBreaker_fail_Method.super_.call(this, "quark.void", "fail", []);
}
exports.quark_behaviors_CircuitBreaker_fail_Method = quark_behaviors_CircuitBreaker_fail_Method;
_qrt.util.inherits(quark_behaviors_CircuitBreaker_fail_Method, quark.reflect.Method);

function quark_behaviors_CircuitBreaker_fail_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_CircuitBreaker_fail_Method.prototype.__init_fields__ = quark_behaviors_CircuitBreaker_fail_Method__init_fields__;

function quark_behaviors_CircuitBreaker_fail_Method_invoke(object, args) {
    var obj = object;
    (obj).fail();
    return null;
}
quark_behaviors_CircuitBreaker_fail_Method.prototype.invoke = quark_behaviors_CircuitBreaker_fail_Method_invoke;

function quark_behaviors_CircuitBreaker_fail_Method__getClass() {
    return null;
}
quark_behaviors_CircuitBreaker_fail_Method.prototype._getClass = quark_behaviors_CircuitBreaker_fail_Method__getClass;

function quark_behaviors_CircuitBreaker_fail_Method__getField(name) {
    return null;
}
quark_behaviors_CircuitBreaker_fail_Method.prototype._getField = quark_behaviors_CircuitBreaker_fail_Method__getField;

function quark_behaviors_CircuitBreaker_fail_Method__setField(name, value) {}
quark_behaviors_CircuitBreaker_fail_Method.prototype._setField = quark_behaviors_CircuitBreaker_fail_Method__setField;

// CLASS quark_behaviors_CircuitBreaker_onExecute_Method

function quark_behaviors_CircuitBreaker_onExecute_Method() {
    quark_behaviors_CircuitBreaker_onExecute_Method.super_.call(this, "quark.void", "onExecute", ["quark.Runtime"]);
}
exports.quark_behaviors_CircuitBreaker_onExecute_Method = quark_behaviors_CircuitBreaker_onExecute_Method;
_qrt.util.inherits(quark_behaviors_CircuitBreaker_onExecute_Method, quark.reflect.Method);

function quark_behaviors_CircuitBreaker_onExecute_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_behaviors_CircuitBreaker_onExecute_Method.prototype.__init_fields__ = quark_behaviors_CircuitBreaker_onExecute_Method__init_fields__;

function quark_behaviors_CircuitBreaker_onExecute_Method_invoke(object, args) {
    var obj = object;
    (obj).onExecute((args)[0]);
    return null;
}
quark_behaviors_CircuitBreaker_onExecute_Method.prototype.invoke = quark_behaviors_CircuitBreaker_onExecute_Method_invoke;

function quark_behaviors_CircuitBreaker_onExecute_Method__getClass() {
    return null;
}
quark_behaviors_CircuitBreaker_onExecute_Method.prototype._getClass = quark_behaviors_CircuitBreaker_onExecute_Method__getClass;

function quark_behaviors_CircuitBreaker_onExecute_Method__getField(name) {
    return null;
}
quark_behaviors_CircuitBreaker_onExecute_Method.prototype._getField = quark_behaviors_CircuitBreaker_onExecute_Method__getField;

function quark_behaviors_CircuitBreaker_onExecute_Method__setField(name, value) {}
quark_behaviors_CircuitBreaker_onExecute_Method.prototype._setField = quark_behaviors_CircuitBreaker_onExecute_Method__setField;

// CLASS quark_behaviors_CircuitBreaker

function quark_behaviors_CircuitBreaker() {
    quark_behaviors_CircuitBreaker.super_.call(this, "quark.behaviors.CircuitBreaker");
    (this).name = "quark.behaviors.CircuitBreaker";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.int", "failureLimit"), new quark.reflect.Field("quark.float", "retestDelay"), new quark.reflect.Field("quark.bool", "active"), new quark.reflect.Field("quark.int", "failureCount"), new quark.reflect.Field("quark.concurrent.Lock", "mutex")];
    (this).methods = [new quark_behaviors_CircuitBreaker_succeed_Method(), new quark_behaviors_CircuitBreaker_fail_Method(), new quark_behaviors_CircuitBreaker_onExecute_Method()];
}
exports.quark_behaviors_CircuitBreaker = quark_behaviors_CircuitBreaker;
_qrt.util.inherits(quark_behaviors_CircuitBreaker, quark.reflect.Class);

function quark_behaviors_CircuitBreaker__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_behaviors_CircuitBreaker.prototype.__init_fields__ = quark_behaviors_CircuitBreaker__init_fields__;
quark_behaviors_CircuitBreaker.singleton = new quark_behaviors_CircuitBreaker();
function quark_behaviors_CircuitBreaker_construct(args) {
    return new quark.behaviors.CircuitBreaker((args)[0], (args)[1], (args)[2]);
}
quark_behaviors_CircuitBreaker.prototype.construct = quark_behaviors_CircuitBreaker_construct;

function quark_behaviors_CircuitBreaker__getClass() {
    return null;
}
quark_behaviors_CircuitBreaker.prototype._getClass = quark_behaviors_CircuitBreaker__getClass;

function quark_behaviors_CircuitBreaker__getField(name) {
    return null;
}
quark_behaviors_CircuitBreaker.prototype._getField = quark_behaviors_CircuitBreaker__getField;

function quark_behaviors_CircuitBreaker__setField(name, value) {}
quark_behaviors_CircuitBreaker.prototype._setField = quark_behaviors_CircuitBreaker__setField;


// CLASS quark_concurrent_Event_getContext_Method

function quark_concurrent_Event_getContext_Method() {
    quark_concurrent_Event_getContext_Method.super_.call(this, "quark.concurrent.EventContext", "getContext", []);
}
exports.quark_concurrent_Event_getContext_Method = quark_concurrent_Event_getContext_Method;
_qrt.util.inherits(quark_concurrent_Event_getContext_Method, quark.reflect.Method);

function quark_concurrent_Event_getContext_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Event_getContext_Method.prototype.__init_fields__ = quark_concurrent_Event_getContext_Method__init_fields__;

function quark_concurrent_Event_getContext_Method_invoke(object, args) {
    var obj = object;
    return (obj).getContext();
}
quark_concurrent_Event_getContext_Method.prototype.invoke = quark_concurrent_Event_getContext_Method_invoke;

function quark_concurrent_Event_getContext_Method__getClass() {
    return null;
}
quark_concurrent_Event_getContext_Method.prototype._getClass = quark_concurrent_Event_getContext_Method__getClass;

function quark_concurrent_Event_getContext_Method__getField(name) {
    return null;
}
quark_concurrent_Event_getContext_Method.prototype._getField = quark_concurrent_Event_getContext_Method__getField;

function quark_concurrent_Event_getContext_Method__setField(name, value) {}
quark_concurrent_Event_getContext_Method.prototype._setField = quark_concurrent_Event_getContext_Method__setField;

// CLASS quark_concurrent_Event_fireEvent_Method

function quark_concurrent_Event_fireEvent_Method() {
    quark_concurrent_Event_fireEvent_Method.super_.call(this, "quark.void", "fireEvent", []);
}
exports.quark_concurrent_Event_fireEvent_Method = quark_concurrent_Event_fireEvent_Method;
_qrt.util.inherits(quark_concurrent_Event_fireEvent_Method, quark.reflect.Method);

function quark_concurrent_Event_fireEvent_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Event_fireEvent_Method.prototype.__init_fields__ = quark_concurrent_Event_fireEvent_Method__init_fields__;

function quark_concurrent_Event_fireEvent_Method_invoke(object, args) {
    var obj = object;
    (obj).fireEvent();
    return null;
}
quark_concurrent_Event_fireEvent_Method.prototype.invoke = quark_concurrent_Event_fireEvent_Method_invoke;

function quark_concurrent_Event_fireEvent_Method__getClass() {
    return null;
}
quark_concurrent_Event_fireEvent_Method.prototype._getClass = quark_concurrent_Event_fireEvent_Method__getClass;

function quark_concurrent_Event_fireEvent_Method__getField(name) {
    return null;
}
quark_concurrent_Event_fireEvent_Method.prototype._getField = quark_concurrent_Event_fireEvent_Method__getField;

function quark_concurrent_Event_fireEvent_Method__setField(name, value) {}
quark_concurrent_Event_fireEvent_Method.prototype._setField = quark_concurrent_Event_fireEvent_Method__setField;

// CLASS quark_concurrent_Event

function quark_concurrent_Event() {
    quark_concurrent_Event.super_.call(this, "quark.concurrent.Event");
    (this).name = "quark.concurrent.Event";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new quark_concurrent_Event_getContext_Method(), new quark_concurrent_Event_fireEvent_Method()];
}
exports.quark_concurrent_Event = quark_concurrent_Event;
_qrt.util.inherits(quark_concurrent_Event, quark.reflect.Class);

function quark_concurrent_Event__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_Event.prototype.__init_fields__ = quark_concurrent_Event__init_fields__;
quark_concurrent_Event.singleton = new quark_concurrent_Event();
function quark_concurrent_Event_construct(args) {
    return null;
}
quark_concurrent_Event.prototype.construct = quark_concurrent_Event_construct;

function quark_concurrent_Event__getClass() {
    return null;
}
quark_concurrent_Event.prototype._getClass = quark_concurrent_Event__getClass;

function quark_concurrent_Event__getField(name) {
    return null;
}
quark_concurrent_Event.prototype._getField = quark_concurrent_Event__getField;

function quark_concurrent_Event__setField(name, value) {}
quark_concurrent_Event.prototype._setField = quark_concurrent_Event__setField;


// CLASS quark_concurrent_FutureListener_onFuture_Method

function quark_concurrent_FutureListener_onFuture_Method() {
    quark_concurrent_FutureListener_onFuture_Method.super_.call(this, "quark.void", "onFuture", ["quark.concurrent.Future"]);
}
exports.quark_concurrent_FutureListener_onFuture_Method = quark_concurrent_FutureListener_onFuture_Method;
_qrt.util.inherits(quark_concurrent_FutureListener_onFuture_Method, quark.reflect.Method);

function quark_concurrent_FutureListener_onFuture_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_FutureListener_onFuture_Method.prototype.__init_fields__ = quark_concurrent_FutureListener_onFuture_Method__init_fields__;

function quark_concurrent_FutureListener_onFuture_Method_invoke(object, args) {
    var obj = object;
    (obj).onFuture((args)[0]);
    return null;
}
quark_concurrent_FutureListener_onFuture_Method.prototype.invoke = quark_concurrent_FutureListener_onFuture_Method_invoke;

function quark_concurrent_FutureListener_onFuture_Method__getClass() {
    return null;
}
quark_concurrent_FutureListener_onFuture_Method.prototype._getClass = quark_concurrent_FutureListener_onFuture_Method__getClass;

function quark_concurrent_FutureListener_onFuture_Method__getField(name) {
    return null;
}
quark_concurrent_FutureListener_onFuture_Method.prototype._getField = quark_concurrent_FutureListener_onFuture_Method__getField;

function quark_concurrent_FutureListener_onFuture_Method__setField(name, value) {}
quark_concurrent_FutureListener_onFuture_Method.prototype._setField = quark_concurrent_FutureListener_onFuture_Method__setField;

// CLASS quark_concurrent_FutureListener

function quark_concurrent_FutureListener() {
    quark_concurrent_FutureListener.super_.call(this, "quark.concurrent.FutureListener");
    (this).name = "quark.concurrent.FutureListener";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new quark_concurrent_FutureListener_onFuture_Method()];
}
exports.quark_concurrent_FutureListener = quark_concurrent_FutureListener;
_qrt.util.inherits(quark_concurrent_FutureListener, quark.reflect.Class);

function quark_concurrent_FutureListener__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_FutureListener.prototype.__init_fields__ = quark_concurrent_FutureListener__init_fields__;
quark_concurrent_FutureListener.singleton = new quark_concurrent_FutureListener();
function quark_concurrent_FutureListener_construct(args) {
    return null;
}
quark_concurrent_FutureListener.prototype.construct = quark_concurrent_FutureListener_construct;

function quark_concurrent_FutureListener__getClass() {
    return null;
}
quark_concurrent_FutureListener.prototype._getClass = quark_concurrent_FutureListener__getClass;

function quark_concurrent_FutureListener__getField(name) {
    return null;
}
quark_concurrent_FutureListener.prototype._getField = quark_concurrent_FutureListener__getField;

function quark_concurrent_FutureListener__setField(name, value) {}
quark_concurrent_FutureListener.prototype._setField = quark_concurrent_FutureListener__setField;


// CLASS quark_concurrent_FutureCompletion_getContext_Method

function quark_concurrent_FutureCompletion_getContext_Method() {
    quark_concurrent_FutureCompletion_getContext_Method.super_.call(this, "quark.concurrent.EventContext", "getContext", []);
}
exports.quark_concurrent_FutureCompletion_getContext_Method = quark_concurrent_FutureCompletion_getContext_Method;
_qrt.util.inherits(quark_concurrent_FutureCompletion_getContext_Method, quark.reflect.Method);

function quark_concurrent_FutureCompletion_getContext_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_FutureCompletion_getContext_Method.prototype.__init_fields__ = quark_concurrent_FutureCompletion_getContext_Method__init_fields__;

function quark_concurrent_FutureCompletion_getContext_Method_invoke(object, args) {
    var obj = object;
    return (obj).getContext();
}
quark_concurrent_FutureCompletion_getContext_Method.prototype.invoke = quark_concurrent_FutureCompletion_getContext_Method_invoke;

function quark_concurrent_FutureCompletion_getContext_Method__getClass() {
    return null;
}
quark_concurrent_FutureCompletion_getContext_Method.prototype._getClass = quark_concurrent_FutureCompletion_getContext_Method__getClass;

function quark_concurrent_FutureCompletion_getContext_Method__getField(name) {
    return null;
}
quark_concurrent_FutureCompletion_getContext_Method.prototype._getField = quark_concurrent_FutureCompletion_getContext_Method__getField;

function quark_concurrent_FutureCompletion_getContext_Method__setField(name, value) {}
quark_concurrent_FutureCompletion_getContext_Method.prototype._setField = quark_concurrent_FutureCompletion_getContext_Method__setField;

// CLASS quark_concurrent_FutureCompletion_fireEvent_Method

function quark_concurrent_FutureCompletion_fireEvent_Method() {
    quark_concurrent_FutureCompletion_fireEvent_Method.super_.call(this, "quark.void", "fireEvent", []);
}
exports.quark_concurrent_FutureCompletion_fireEvent_Method = quark_concurrent_FutureCompletion_fireEvent_Method;
_qrt.util.inherits(quark_concurrent_FutureCompletion_fireEvent_Method, quark.reflect.Method);

function quark_concurrent_FutureCompletion_fireEvent_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_FutureCompletion_fireEvent_Method.prototype.__init_fields__ = quark_concurrent_FutureCompletion_fireEvent_Method__init_fields__;

function quark_concurrent_FutureCompletion_fireEvent_Method_invoke(object, args) {
    var obj = object;
    (obj).fireEvent();
    return null;
}
quark_concurrent_FutureCompletion_fireEvent_Method.prototype.invoke = quark_concurrent_FutureCompletion_fireEvent_Method_invoke;

function quark_concurrent_FutureCompletion_fireEvent_Method__getClass() {
    return null;
}
quark_concurrent_FutureCompletion_fireEvent_Method.prototype._getClass = quark_concurrent_FutureCompletion_fireEvent_Method__getClass;

function quark_concurrent_FutureCompletion_fireEvent_Method__getField(name) {
    return null;
}
quark_concurrent_FutureCompletion_fireEvent_Method.prototype._getField = quark_concurrent_FutureCompletion_fireEvent_Method__getField;

function quark_concurrent_FutureCompletion_fireEvent_Method__setField(name, value) {}
quark_concurrent_FutureCompletion_fireEvent_Method.prototype._setField = quark_concurrent_FutureCompletion_fireEvent_Method__setField;

// CLASS quark_concurrent_FutureCompletion

function quark_concurrent_FutureCompletion() {
    quark_concurrent_FutureCompletion.super_.call(this, "quark.concurrent.FutureCompletion");
    (this).name = "quark.concurrent.FutureCompletion";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.Future", "future"), new quark.reflect.Field("quark.concurrent.FutureListener", "listener")];
    (this).methods = [new quark_concurrent_FutureCompletion_getContext_Method(), new quark_concurrent_FutureCompletion_fireEvent_Method()];
}
exports.quark_concurrent_FutureCompletion = quark_concurrent_FutureCompletion;
_qrt.util.inherits(quark_concurrent_FutureCompletion, quark.reflect.Class);

function quark_concurrent_FutureCompletion__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_FutureCompletion.prototype.__init_fields__ = quark_concurrent_FutureCompletion__init_fields__;
quark_concurrent_FutureCompletion.singleton = new quark_concurrent_FutureCompletion();
function quark_concurrent_FutureCompletion_construct(args) {
    return new quark.concurrent.FutureCompletion((args)[0], (args)[1]);
}
quark_concurrent_FutureCompletion.prototype.construct = quark_concurrent_FutureCompletion_construct;

function quark_concurrent_FutureCompletion__getClass() {
    return null;
}
quark_concurrent_FutureCompletion.prototype._getClass = quark_concurrent_FutureCompletion__getClass;

function quark_concurrent_FutureCompletion__getField(name) {
    return null;
}
quark_concurrent_FutureCompletion.prototype._getField = quark_concurrent_FutureCompletion__getField;

function quark_concurrent_FutureCompletion__setField(name, value) {}
quark_concurrent_FutureCompletion.prototype._setField = quark_concurrent_FutureCompletion__setField;


// CLASS quark_concurrent_EventContext_getContext_Method

function quark_concurrent_EventContext_getContext_Method() {
    quark_concurrent_EventContext_getContext_Method.super_.call(this, "quark.concurrent.Context", "getContext", []);
}
exports.quark_concurrent_EventContext_getContext_Method = quark_concurrent_EventContext_getContext_Method;
_qrt.util.inherits(quark_concurrent_EventContext_getContext_Method, quark.reflect.Method);

function quark_concurrent_EventContext_getContext_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_EventContext_getContext_Method.prototype.__init_fields__ = quark_concurrent_EventContext_getContext_Method__init_fields__;

function quark_concurrent_EventContext_getContext_Method_invoke(object, args) {
    var obj = object;
    return (obj).getContext();
}
quark_concurrent_EventContext_getContext_Method.prototype.invoke = quark_concurrent_EventContext_getContext_Method_invoke;

function quark_concurrent_EventContext_getContext_Method__getClass() {
    return null;
}
quark_concurrent_EventContext_getContext_Method.prototype._getClass = quark_concurrent_EventContext_getContext_Method__getClass;

function quark_concurrent_EventContext_getContext_Method__getField(name) {
    return null;
}
quark_concurrent_EventContext_getContext_Method.prototype._getField = quark_concurrent_EventContext_getContext_Method__getField;

function quark_concurrent_EventContext_getContext_Method__setField(name, value) {}
quark_concurrent_EventContext_getContext_Method.prototype._setField = quark_concurrent_EventContext_getContext_Method__setField;

// CLASS quark_concurrent_EventContext

function quark_concurrent_EventContext() {
    quark_concurrent_EventContext.super_.call(this, "quark.concurrent.EventContext");
    (this).name = "quark.concurrent.EventContext";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.Context", "_context")];
    (this).methods = [new quark_concurrent_EventContext_getContext_Method()];
}
exports.quark_concurrent_EventContext = quark_concurrent_EventContext;
_qrt.util.inherits(quark_concurrent_EventContext, quark.reflect.Class);

function quark_concurrent_EventContext__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_EventContext.prototype.__init_fields__ = quark_concurrent_EventContext__init_fields__;
quark_concurrent_EventContext.singleton = new quark_concurrent_EventContext();
function quark_concurrent_EventContext_construct(args) {
    return new quark.concurrent.EventContext();
}
quark_concurrent_EventContext.prototype.construct = quark_concurrent_EventContext_construct;

function quark_concurrent_EventContext__getClass() {
    return null;
}
quark_concurrent_EventContext.prototype._getClass = quark_concurrent_EventContext__getClass;

function quark_concurrent_EventContext__getField(name) {
    return null;
}
quark_concurrent_EventContext.prototype._getField = quark_concurrent_EventContext__getField;

function quark_concurrent_EventContext__setField(name, value) {}
quark_concurrent_EventContext.prototype._setField = quark_concurrent_EventContext__setField;


// CLASS quark_concurrent_Future_onFinished_Method

function quark_concurrent_Future_onFinished_Method() {
    quark_concurrent_Future_onFinished_Method.super_.call(this, "quark.void", "onFinished", ["quark.concurrent.FutureListener"]);
}
exports.quark_concurrent_Future_onFinished_Method = quark_concurrent_Future_onFinished_Method;
_qrt.util.inherits(quark_concurrent_Future_onFinished_Method, quark.reflect.Method);

function quark_concurrent_Future_onFinished_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Future_onFinished_Method.prototype.__init_fields__ = quark_concurrent_Future_onFinished_Method__init_fields__;

function quark_concurrent_Future_onFinished_Method_invoke(object, args) {
    var obj = object;
    (obj).onFinished((args)[0]);
    return null;
}
quark_concurrent_Future_onFinished_Method.prototype.invoke = quark_concurrent_Future_onFinished_Method_invoke;

function quark_concurrent_Future_onFinished_Method__getClass() {
    return null;
}
quark_concurrent_Future_onFinished_Method.prototype._getClass = quark_concurrent_Future_onFinished_Method__getClass;

function quark_concurrent_Future_onFinished_Method__getField(name) {
    return null;
}
quark_concurrent_Future_onFinished_Method.prototype._getField = quark_concurrent_Future_onFinished_Method__getField;

function quark_concurrent_Future_onFinished_Method__setField(name, value) {}
quark_concurrent_Future_onFinished_Method.prototype._setField = quark_concurrent_Future_onFinished_Method__setField;

// CLASS quark_concurrent_Future_finish_Method

function quark_concurrent_Future_finish_Method() {
    quark_concurrent_Future_finish_Method.super_.call(this, "quark.void", "finish", ["quark.String"]);
}
exports.quark_concurrent_Future_finish_Method = quark_concurrent_Future_finish_Method;
_qrt.util.inherits(quark_concurrent_Future_finish_Method, quark.reflect.Method);

function quark_concurrent_Future_finish_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Future_finish_Method.prototype.__init_fields__ = quark_concurrent_Future_finish_Method__init_fields__;

function quark_concurrent_Future_finish_Method_invoke(object, args) {
    var obj = object;
    (obj).finish((args)[0]);
    return null;
}
quark_concurrent_Future_finish_Method.prototype.invoke = quark_concurrent_Future_finish_Method_invoke;

function quark_concurrent_Future_finish_Method__getClass() {
    return null;
}
quark_concurrent_Future_finish_Method.prototype._getClass = quark_concurrent_Future_finish_Method__getClass;

function quark_concurrent_Future_finish_Method__getField(name) {
    return null;
}
quark_concurrent_Future_finish_Method.prototype._getField = quark_concurrent_Future_finish_Method__getField;

function quark_concurrent_Future_finish_Method__setField(name, value) {}
quark_concurrent_Future_finish_Method.prototype._setField = quark_concurrent_Future_finish_Method__setField;

// CLASS quark_concurrent_Future_isFinished_Method

function quark_concurrent_Future_isFinished_Method() {
    quark_concurrent_Future_isFinished_Method.super_.call(this, "quark.bool", "isFinished", []);
}
exports.quark_concurrent_Future_isFinished_Method = quark_concurrent_Future_isFinished_Method;
_qrt.util.inherits(quark_concurrent_Future_isFinished_Method, quark.reflect.Method);

function quark_concurrent_Future_isFinished_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Future_isFinished_Method.prototype.__init_fields__ = quark_concurrent_Future_isFinished_Method__init_fields__;

function quark_concurrent_Future_isFinished_Method_invoke(object, args) {
    var obj = object;
    return (obj).isFinished();
}
quark_concurrent_Future_isFinished_Method.prototype.invoke = quark_concurrent_Future_isFinished_Method_invoke;

function quark_concurrent_Future_isFinished_Method__getClass() {
    return null;
}
quark_concurrent_Future_isFinished_Method.prototype._getClass = quark_concurrent_Future_isFinished_Method__getClass;

function quark_concurrent_Future_isFinished_Method__getField(name) {
    return null;
}
quark_concurrent_Future_isFinished_Method.prototype._getField = quark_concurrent_Future_isFinished_Method__getField;

function quark_concurrent_Future_isFinished_Method__setField(name, value) {}
quark_concurrent_Future_isFinished_Method.prototype._setField = quark_concurrent_Future_isFinished_Method__setField;

// CLASS quark_concurrent_Future_getError_Method

function quark_concurrent_Future_getError_Method() {
    quark_concurrent_Future_getError_Method.super_.call(this, "quark.String", "getError", []);
}
exports.quark_concurrent_Future_getError_Method = quark_concurrent_Future_getError_Method;
_qrt.util.inherits(quark_concurrent_Future_getError_Method, quark.reflect.Method);

function quark_concurrent_Future_getError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Future_getError_Method.prototype.__init_fields__ = quark_concurrent_Future_getError_Method__init_fields__;

function quark_concurrent_Future_getError_Method_invoke(object, args) {
    var obj = object;
    return (obj).getError();
}
quark_concurrent_Future_getError_Method.prototype.invoke = quark_concurrent_Future_getError_Method_invoke;

function quark_concurrent_Future_getError_Method__getClass() {
    return null;
}
quark_concurrent_Future_getError_Method.prototype._getClass = quark_concurrent_Future_getError_Method__getClass;

function quark_concurrent_Future_getError_Method__getField(name) {
    return null;
}
quark_concurrent_Future_getError_Method.prototype._getField = quark_concurrent_Future_getError_Method__getField;

function quark_concurrent_Future_getError_Method__setField(name, value) {}
quark_concurrent_Future_getError_Method.prototype._setField = quark_concurrent_Future_getError_Method__setField;

// CLASS quark_concurrent_Future_await_Method

function quark_concurrent_Future_await_Method() {
    quark_concurrent_Future_await_Method.super_.call(this, "quark.void", "await", ["quark.float"]);
}
exports.quark_concurrent_Future_await_Method = quark_concurrent_Future_await_Method;
_qrt.util.inherits(quark_concurrent_Future_await_Method, quark.reflect.Method);

function quark_concurrent_Future_await_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Future_await_Method.prototype.__init_fields__ = quark_concurrent_Future_await_Method__init_fields__;

function quark_concurrent_Future_await_Method_invoke(object, args) {
    var obj = object;
    (obj).await((args)[0]);
    return null;
}
quark_concurrent_Future_await_Method.prototype.invoke = quark_concurrent_Future_await_Method_invoke;

function quark_concurrent_Future_await_Method__getClass() {
    return null;
}
quark_concurrent_Future_await_Method.prototype._getClass = quark_concurrent_Future_await_Method__getClass;

function quark_concurrent_Future_await_Method__getField(name) {
    return null;
}
quark_concurrent_Future_await_Method.prototype._getField = quark_concurrent_Future_await_Method__getField;

function quark_concurrent_Future_await_Method__setField(name, value) {}
quark_concurrent_Future_await_Method.prototype._setField = quark_concurrent_Future_await_Method__setField;

// CLASS quark_concurrent_Future_getContext_Method

function quark_concurrent_Future_getContext_Method() {
    quark_concurrent_Future_getContext_Method.super_.call(this, "quark.concurrent.Context", "getContext", []);
}
exports.quark_concurrent_Future_getContext_Method = quark_concurrent_Future_getContext_Method;
_qrt.util.inherits(quark_concurrent_Future_getContext_Method, quark.reflect.Method);

function quark_concurrent_Future_getContext_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Future_getContext_Method.prototype.__init_fields__ = quark_concurrent_Future_getContext_Method__init_fields__;

function quark_concurrent_Future_getContext_Method_invoke(object, args) {
    var obj = object;
    return (obj).getContext();
}
quark_concurrent_Future_getContext_Method.prototype.invoke = quark_concurrent_Future_getContext_Method_invoke;

function quark_concurrent_Future_getContext_Method__getClass() {
    return null;
}
quark_concurrent_Future_getContext_Method.prototype._getClass = quark_concurrent_Future_getContext_Method__getClass;

function quark_concurrent_Future_getContext_Method__getField(name) {
    return null;
}
quark_concurrent_Future_getContext_Method.prototype._getField = quark_concurrent_Future_getContext_Method__getField;

function quark_concurrent_Future_getContext_Method__setField(name, value) {}
quark_concurrent_Future_getContext_Method.prototype._setField = quark_concurrent_Future_getContext_Method__setField;

// CLASS quark_concurrent_Future

function quark_concurrent_Future() {
    quark_concurrent_Future.super_.call(this, "quark.concurrent.Future");
    (this).name = "quark.concurrent.Future";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.Context", "_context"), new quark.reflect.Field("quark.bool", "_finished"), new quark.reflect.Field("quark.String", "_error"), new quark.reflect.Field("quark.List<quark.concurrent.FutureCompletion>", "_callbacks"), new quark.reflect.Field("quark.concurrent.Lock", "_lock")];
    (this).methods = [new quark_concurrent_Future_onFinished_Method(), new quark_concurrent_Future_finish_Method(), new quark_concurrent_Future_isFinished_Method(), new quark_concurrent_Future_getError_Method(), new quark_concurrent_Future_await_Method(), new quark_concurrent_Future_getContext_Method()];
}
exports.quark_concurrent_Future = quark_concurrent_Future;
_qrt.util.inherits(quark_concurrent_Future, quark.reflect.Class);

function quark_concurrent_Future__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_Future.prototype.__init_fields__ = quark_concurrent_Future__init_fields__;
quark_concurrent_Future.singleton = new quark_concurrent_Future();
function quark_concurrent_Future_construct(args) {
    return new quark.concurrent.Future();
}
quark_concurrent_Future.prototype.construct = quark_concurrent_Future_construct;

function quark_concurrent_Future__getClass() {
    return null;
}
quark_concurrent_Future.prototype._getClass = quark_concurrent_Future__getClass;

function quark_concurrent_Future__getField(name) {
    return null;
}
quark_concurrent_Future.prototype._getField = quark_concurrent_Future__getField;

function quark_concurrent_Future__setField(name, value) {}
quark_concurrent_Future.prototype._setField = quark_concurrent_Future__setField;


// CLASS quark_concurrent_FutureWait_wait_Method

function quark_concurrent_FutureWait_wait_Method() {
    quark_concurrent_FutureWait_wait_Method.super_.call(this, "quark.void", "wait", ["quark.concurrent.Future", "quark.float"]);
}
exports.quark_concurrent_FutureWait_wait_Method = quark_concurrent_FutureWait_wait_Method;
_qrt.util.inherits(quark_concurrent_FutureWait_wait_Method, quark.reflect.Method);

function quark_concurrent_FutureWait_wait_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_FutureWait_wait_Method.prototype.__init_fields__ = quark_concurrent_FutureWait_wait_Method__init_fields__;

function quark_concurrent_FutureWait_wait_Method_invoke(object, args) {
    var obj = object;
    (obj).wait((args)[0], (args)[1]);
    return null;
}
quark_concurrent_FutureWait_wait_Method.prototype.invoke = quark_concurrent_FutureWait_wait_Method_invoke;

function quark_concurrent_FutureWait_wait_Method__getClass() {
    return null;
}
quark_concurrent_FutureWait_wait_Method.prototype._getClass = quark_concurrent_FutureWait_wait_Method__getClass;

function quark_concurrent_FutureWait_wait_Method__getField(name) {
    return null;
}
quark_concurrent_FutureWait_wait_Method.prototype._getField = quark_concurrent_FutureWait_wait_Method__getField;

function quark_concurrent_FutureWait_wait_Method__setField(name, value) {}
quark_concurrent_FutureWait_wait_Method.prototype._setField = quark_concurrent_FutureWait_wait_Method__setField;

// CLASS quark_concurrent_FutureWait_onFuture_Method

function quark_concurrent_FutureWait_onFuture_Method() {
    quark_concurrent_FutureWait_onFuture_Method.super_.call(this, "quark.void", "onFuture", ["quark.concurrent.Future"]);
}
exports.quark_concurrent_FutureWait_onFuture_Method = quark_concurrent_FutureWait_onFuture_Method;
_qrt.util.inherits(quark_concurrent_FutureWait_onFuture_Method, quark.reflect.Method);

function quark_concurrent_FutureWait_onFuture_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_FutureWait_onFuture_Method.prototype.__init_fields__ = quark_concurrent_FutureWait_onFuture_Method__init_fields__;

function quark_concurrent_FutureWait_onFuture_Method_invoke(object, args) {
    var obj = object;
    (obj).onFuture((args)[0]);
    return null;
}
quark_concurrent_FutureWait_onFuture_Method.prototype.invoke = quark_concurrent_FutureWait_onFuture_Method_invoke;

function quark_concurrent_FutureWait_onFuture_Method__getClass() {
    return null;
}
quark_concurrent_FutureWait_onFuture_Method.prototype._getClass = quark_concurrent_FutureWait_onFuture_Method__getClass;

function quark_concurrent_FutureWait_onFuture_Method__getField(name) {
    return null;
}
quark_concurrent_FutureWait_onFuture_Method.prototype._getField = quark_concurrent_FutureWait_onFuture_Method__getField;

function quark_concurrent_FutureWait_onFuture_Method__setField(name, value) {}
quark_concurrent_FutureWait_onFuture_Method.prototype._setField = quark_concurrent_FutureWait_onFuture_Method__setField;

// CLASS quark_concurrent_FutureWait_waitFor_Method

function quark_concurrent_FutureWait_waitFor_Method() {
    quark_concurrent_FutureWait_waitFor_Method.super_.call(this, "quark.concurrent.Future", "waitFor", ["quark.concurrent.Future", "quark.float"]);
}
exports.quark_concurrent_FutureWait_waitFor_Method = quark_concurrent_FutureWait_waitFor_Method;
_qrt.util.inherits(quark_concurrent_FutureWait_waitFor_Method, quark.reflect.Method);

function quark_concurrent_FutureWait_waitFor_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_FutureWait_waitFor_Method.prototype.__init_fields__ = quark_concurrent_FutureWait_waitFor_Method__init_fields__;

function quark_concurrent_FutureWait_waitFor_Method_invoke(object, args) {
    var obj = object;
    return quark.concurrent.FutureWait.waitFor((args)[0], (args)[1]);
}
quark_concurrent_FutureWait_waitFor_Method.prototype.invoke = quark_concurrent_FutureWait_waitFor_Method_invoke;

function quark_concurrent_FutureWait_waitFor_Method__getClass() {
    return null;
}
quark_concurrent_FutureWait_waitFor_Method.prototype._getClass = quark_concurrent_FutureWait_waitFor_Method__getClass;

function quark_concurrent_FutureWait_waitFor_Method__getField(name) {
    return null;
}
quark_concurrent_FutureWait_waitFor_Method.prototype._getField = quark_concurrent_FutureWait_waitFor_Method__getField;

function quark_concurrent_FutureWait_waitFor_Method__setField(name, value) {}
quark_concurrent_FutureWait_waitFor_Method.prototype._setField = quark_concurrent_FutureWait_waitFor_Method__setField;

// CLASS quark_concurrent_FutureWait

function quark_concurrent_FutureWait() {
    quark_concurrent_FutureWait.super_.call(this, "quark.concurrent.FutureWait");
    (this).name = "quark.concurrent.FutureWait";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.Condition", "_lock"), new quark.reflect.Field("quark.concurrent.Future", "_future")];
    (this).methods = [new quark_concurrent_FutureWait_wait_Method(), new quark_concurrent_FutureWait_onFuture_Method(), new quark_concurrent_FutureWait_waitFor_Method()];
}
exports.quark_concurrent_FutureWait = quark_concurrent_FutureWait;
_qrt.util.inherits(quark_concurrent_FutureWait, quark.reflect.Class);

function quark_concurrent_FutureWait__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_FutureWait.prototype.__init_fields__ = quark_concurrent_FutureWait__init_fields__;
quark_concurrent_FutureWait.singleton = new quark_concurrent_FutureWait();
function quark_concurrent_FutureWait_construct(args) {
    return new quark.concurrent.FutureWait();
}
quark_concurrent_FutureWait.prototype.construct = quark_concurrent_FutureWait_construct;

function quark_concurrent_FutureWait__getClass() {
    return null;
}
quark_concurrent_FutureWait.prototype._getClass = quark_concurrent_FutureWait__getClass;

function quark_concurrent_FutureWait__getField(name) {
    return null;
}
quark_concurrent_FutureWait.prototype._getField = quark_concurrent_FutureWait__getField;

function quark_concurrent_FutureWait__setField(name, value) {}
quark_concurrent_FutureWait.prototype._setField = quark_concurrent_FutureWait__setField;


// CLASS quark_concurrent_Queue_quark_concurrent_Event__put_Method

function quark_concurrent_Queue_quark_concurrent_Event__put_Method() {
    quark_concurrent_Queue_quark_concurrent_Event__put_Method.super_.call(this, "quark.void", "put", ["quark.concurrent.Event"]);
}
exports.quark_concurrent_Queue_quark_concurrent_Event__put_Method = quark_concurrent_Queue_quark_concurrent_Event__put_Method;
_qrt.util.inherits(quark_concurrent_Queue_quark_concurrent_Event__put_Method, quark.reflect.Method);

function quark_concurrent_Queue_quark_concurrent_Event__put_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Queue_quark_concurrent_Event__put_Method.prototype.__init_fields__ = quark_concurrent_Queue_quark_concurrent_Event__put_Method__init_fields__;

function quark_concurrent_Queue_quark_concurrent_Event__put_Method_invoke(object, args) {
    var obj = object;
    (obj).put((args)[0]);
    return null;
}
quark_concurrent_Queue_quark_concurrent_Event__put_Method.prototype.invoke = quark_concurrent_Queue_quark_concurrent_Event__put_Method_invoke;

function quark_concurrent_Queue_quark_concurrent_Event__put_Method__getClass() {
    return null;
}
quark_concurrent_Queue_quark_concurrent_Event__put_Method.prototype._getClass = quark_concurrent_Queue_quark_concurrent_Event__put_Method__getClass;

function quark_concurrent_Queue_quark_concurrent_Event__put_Method__getField(name) {
    return null;
}
quark_concurrent_Queue_quark_concurrent_Event__put_Method.prototype._getField = quark_concurrent_Queue_quark_concurrent_Event__put_Method__getField;

function quark_concurrent_Queue_quark_concurrent_Event__put_Method__setField(name, value) {}
quark_concurrent_Queue_quark_concurrent_Event__put_Method.prototype._setField = quark_concurrent_Queue_quark_concurrent_Event__put_Method__setField;

// CLASS quark_concurrent_Queue_quark_concurrent_Event__get_Method

function quark_concurrent_Queue_quark_concurrent_Event__get_Method() {
    quark_concurrent_Queue_quark_concurrent_Event__get_Method.super_.call(this, "quark.concurrent.Event", "get", []);
}
exports.quark_concurrent_Queue_quark_concurrent_Event__get_Method = quark_concurrent_Queue_quark_concurrent_Event__get_Method;
_qrt.util.inherits(quark_concurrent_Queue_quark_concurrent_Event__get_Method, quark.reflect.Method);

function quark_concurrent_Queue_quark_concurrent_Event__get_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Queue_quark_concurrent_Event__get_Method.prototype.__init_fields__ = quark_concurrent_Queue_quark_concurrent_Event__get_Method__init_fields__;

function quark_concurrent_Queue_quark_concurrent_Event__get_Method_invoke(object, args) {
    var obj = object;
    return (obj).get();
}
quark_concurrent_Queue_quark_concurrent_Event__get_Method.prototype.invoke = quark_concurrent_Queue_quark_concurrent_Event__get_Method_invoke;

function quark_concurrent_Queue_quark_concurrent_Event__get_Method__getClass() {
    return null;
}
quark_concurrent_Queue_quark_concurrent_Event__get_Method.prototype._getClass = quark_concurrent_Queue_quark_concurrent_Event__get_Method__getClass;

function quark_concurrent_Queue_quark_concurrent_Event__get_Method__getField(name) {
    return null;
}
quark_concurrent_Queue_quark_concurrent_Event__get_Method.prototype._getField = quark_concurrent_Queue_quark_concurrent_Event__get_Method__getField;

function quark_concurrent_Queue_quark_concurrent_Event__get_Method__setField(name, value) {}
quark_concurrent_Queue_quark_concurrent_Event__get_Method.prototype._setField = quark_concurrent_Queue_quark_concurrent_Event__get_Method__setField;

// CLASS quark_concurrent_Queue_quark_concurrent_Event__size_Method

function quark_concurrent_Queue_quark_concurrent_Event__size_Method() {
    quark_concurrent_Queue_quark_concurrent_Event__size_Method.super_.call(this, "quark.int", "size", []);
}
exports.quark_concurrent_Queue_quark_concurrent_Event__size_Method = quark_concurrent_Queue_quark_concurrent_Event__size_Method;
_qrt.util.inherits(quark_concurrent_Queue_quark_concurrent_Event__size_Method, quark.reflect.Method);

function quark_concurrent_Queue_quark_concurrent_Event__size_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Queue_quark_concurrent_Event__size_Method.prototype.__init_fields__ = quark_concurrent_Queue_quark_concurrent_Event__size_Method__init_fields__;

function quark_concurrent_Queue_quark_concurrent_Event__size_Method_invoke(object, args) {
    var obj = object;
    return (obj).size();
}
quark_concurrent_Queue_quark_concurrent_Event__size_Method.prototype.invoke = quark_concurrent_Queue_quark_concurrent_Event__size_Method_invoke;

function quark_concurrent_Queue_quark_concurrent_Event__size_Method__getClass() {
    return null;
}
quark_concurrent_Queue_quark_concurrent_Event__size_Method.prototype._getClass = quark_concurrent_Queue_quark_concurrent_Event__size_Method__getClass;

function quark_concurrent_Queue_quark_concurrent_Event__size_Method__getField(name) {
    return null;
}
quark_concurrent_Queue_quark_concurrent_Event__size_Method.prototype._getField = quark_concurrent_Queue_quark_concurrent_Event__size_Method__getField;

function quark_concurrent_Queue_quark_concurrent_Event__size_Method__setField(name, value) {}
quark_concurrent_Queue_quark_concurrent_Event__size_Method.prototype._setField = quark_concurrent_Queue_quark_concurrent_Event__size_Method__setField;

// CLASS quark_concurrent_Queue_quark_concurrent_Event_

function quark_concurrent_Queue_quark_concurrent_Event_() {
    quark_concurrent_Queue_quark_concurrent_Event_.super_.call(this, "quark.concurrent.Queue<quark.concurrent.Event>");
    (this).name = "quark.concurrent.Queue";
    (this).parameters = ["quark.concurrent.Event"];
    (this).fields = [new quark.reflect.Field("quark.List<quark.Object>", "items"), new quark.reflect.Field("quark.int", "head"), new quark.reflect.Field("quark.int", "tail")];
    (this).methods = [new quark_concurrent_Queue_quark_concurrent_Event__put_Method(), new quark_concurrent_Queue_quark_concurrent_Event__get_Method(), new quark_concurrent_Queue_quark_concurrent_Event__size_Method()];
}
exports.quark_concurrent_Queue_quark_concurrent_Event_ = quark_concurrent_Queue_quark_concurrent_Event_;
_qrt.util.inherits(quark_concurrent_Queue_quark_concurrent_Event_, quark.reflect.Class);

function quark_concurrent_Queue_quark_concurrent_Event___init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_Queue_quark_concurrent_Event_.prototype.__init_fields__ = quark_concurrent_Queue_quark_concurrent_Event___init_fields__;
quark_concurrent_Queue_quark_concurrent_Event_.singleton = new quark_concurrent_Queue_quark_concurrent_Event_();
function quark_concurrent_Queue_quark_concurrent_Event__construct(args) {
    return new quark.concurrent.Queue();
}
quark_concurrent_Queue_quark_concurrent_Event_.prototype.construct = quark_concurrent_Queue_quark_concurrent_Event__construct;

function quark_concurrent_Queue_quark_concurrent_Event___getClass() {
    return null;
}
quark_concurrent_Queue_quark_concurrent_Event_.prototype._getClass = quark_concurrent_Queue_quark_concurrent_Event___getClass;

function quark_concurrent_Queue_quark_concurrent_Event___getField(name) {
    return null;
}
quark_concurrent_Queue_quark_concurrent_Event_.prototype._getField = quark_concurrent_Queue_quark_concurrent_Event___getField;

function quark_concurrent_Queue_quark_concurrent_Event___setField(name, value) {}
quark_concurrent_Queue_quark_concurrent_Event_.prototype._setField = quark_concurrent_Queue_quark_concurrent_Event___setField;


// CLASS quark_concurrent_CollectorExecutor__start_Method

function quark_concurrent_CollectorExecutor__start_Method() {
    quark_concurrent_CollectorExecutor__start_Method.super_.call(this, "quark.void", "_start", []);
}
exports.quark_concurrent_CollectorExecutor__start_Method = quark_concurrent_CollectorExecutor__start_Method;
_qrt.util.inherits(quark_concurrent_CollectorExecutor__start_Method, quark.reflect.Method);

function quark_concurrent_CollectorExecutor__start_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_CollectorExecutor__start_Method.prototype.__init_fields__ = quark_concurrent_CollectorExecutor__start_Method__init_fields__;

function quark_concurrent_CollectorExecutor__start_Method_invoke(object, args) {
    var obj = object;
    (obj)._start();
    return null;
}
quark_concurrent_CollectorExecutor__start_Method.prototype.invoke = quark_concurrent_CollectorExecutor__start_Method_invoke;

function quark_concurrent_CollectorExecutor__start_Method__getClass() {
    return null;
}
quark_concurrent_CollectorExecutor__start_Method.prototype._getClass = quark_concurrent_CollectorExecutor__start_Method__getClass;

function quark_concurrent_CollectorExecutor__start_Method__getField(name) {
    return null;
}
quark_concurrent_CollectorExecutor__start_Method.prototype._getField = quark_concurrent_CollectorExecutor__start_Method__getField;

function quark_concurrent_CollectorExecutor__start_Method__setField(name, value) {}
quark_concurrent_CollectorExecutor__start_Method.prototype._setField = quark_concurrent_CollectorExecutor__start_Method__setField;

// CLASS quark_concurrent_CollectorExecutor_onExecute_Method

function quark_concurrent_CollectorExecutor_onExecute_Method() {
    quark_concurrent_CollectorExecutor_onExecute_Method.super_.call(this, "quark.void", "onExecute", ["quark.Runtime"]);
}
exports.quark_concurrent_CollectorExecutor_onExecute_Method = quark_concurrent_CollectorExecutor_onExecute_Method;
_qrt.util.inherits(quark_concurrent_CollectorExecutor_onExecute_Method, quark.reflect.Method);

function quark_concurrent_CollectorExecutor_onExecute_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_CollectorExecutor_onExecute_Method.prototype.__init_fields__ = quark_concurrent_CollectorExecutor_onExecute_Method__init_fields__;

function quark_concurrent_CollectorExecutor_onExecute_Method_invoke(object, args) {
    var obj = object;
    (obj).onExecute((args)[0]);
    return null;
}
quark_concurrent_CollectorExecutor_onExecute_Method.prototype.invoke = quark_concurrent_CollectorExecutor_onExecute_Method_invoke;

function quark_concurrent_CollectorExecutor_onExecute_Method__getClass() {
    return null;
}
quark_concurrent_CollectorExecutor_onExecute_Method.prototype._getClass = quark_concurrent_CollectorExecutor_onExecute_Method__getClass;

function quark_concurrent_CollectorExecutor_onExecute_Method__getField(name) {
    return null;
}
quark_concurrent_CollectorExecutor_onExecute_Method.prototype._getField = quark_concurrent_CollectorExecutor_onExecute_Method__getField;

function quark_concurrent_CollectorExecutor_onExecute_Method__setField(name, value) {}
quark_concurrent_CollectorExecutor_onExecute_Method.prototype._setField = quark_concurrent_CollectorExecutor_onExecute_Method__setField;

// CLASS quark_concurrent_CollectorExecutor

function quark_concurrent_CollectorExecutor() {
    quark_concurrent_CollectorExecutor.super_.call(this, "quark.concurrent.CollectorExecutor");
    (this).name = "quark.concurrent.CollectorExecutor";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.Queue<quark.concurrent.Event>", "events"), new quark.reflect.Field("quark.concurrent.Collector", "collector")];
    (this).methods = [new quark_concurrent_CollectorExecutor__start_Method(), new quark_concurrent_CollectorExecutor_onExecute_Method()];
}
exports.quark_concurrent_CollectorExecutor = quark_concurrent_CollectorExecutor;
_qrt.util.inherits(quark_concurrent_CollectorExecutor, quark.reflect.Class);

function quark_concurrent_CollectorExecutor__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_CollectorExecutor.prototype.__init_fields__ = quark_concurrent_CollectorExecutor__init_fields__;
quark_concurrent_CollectorExecutor.singleton = new quark_concurrent_CollectorExecutor();
function quark_concurrent_CollectorExecutor_construct(args) {
    return new quark.concurrent.CollectorExecutor((args)[0]);
}
quark_concurrent_CollectorExecutor.prototype.construct = quark_concurrent_CollectorExecutor_construct;

function quark_concurrent_CollectorExecutor__getClass() {
    return null;
}
quark_concurrent_CollectorExecutor.prototype._getClass = quark_concurrent_CollectorExecutor__getClass;

function quark_concurrent_CollectorExecutor__getField(name) {
    return null;
}
quark_concurrent_CollectorExecutor.prototype._getField = quark_concurrent_CollectorExecutor__getField;

function quark_concurrent_CollectorExecutor__setField(name, value) {}
quark_concurrent_CollectorExecutor.prototype._setField = quark_concurrent_CollectorExecutor__setField;


// CLASS quark_concurrent_Collector_put_Method

function quark_concurrent_Collector_put_Method() {
    quark_concurrent_Collector_put_Method.super_.call(this, "quark.void", "put", ["quark.concurrent.Event"]);
}
exports.quark_concurrent_Collector_put_Method = quark_concurrent_Collector_put_Method;
_qrt.util.inherits(quark_concurrent_Collector_put_Method, quark.reflect.Method);

function quark_concurrent_Collector_put_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Collector_put_Method.prototype.__init_fields__ = quark_concurrent_Collector_put_Method__init_fields__;

function quark_concurrent_Collector_put_Method_invoke(object, args) {
    var obj = object;
    (obj).put((args)[0]);
    return null;
}
quark_concurrent_Collector_put_Method.prototype.invoke = quark_concurrent_Collector_put_Method_invoke;

function quark_concurrent_Collector_put_Method__getClass() {
    return null;
}
quark_concurrent_Collector_put_Method.prototype._getClass = quark_concurrent_Collector_put_Method__getClass;

function quark_concurrent_Collector_put_Method__getField(name) {
    return null;
}
quark_concurrent_Collector_put_Method.prototype._getField = quark_concurrent_Collector_put_Method__getField;

function quark_concurrent_Collector_put_Method__setField(name, value) {}
quark_concurrent_Collector_put_Method.prototype._setField = quark_concurrent_Collector_put_Method__setField;

// CLASS quark_concurrent_Collector__swap_Method

function quark_concurrent_Collector__swap_Method() {
    quark_concurrent_Collector__swap_Method.super_.call(this, "quark.concurrent.Queue<quark.concurrent.Event>", "_swap", ["quark.concurrent.Queue<quark.concurrent.Event>"]);
}
exports.quark_concurrent_Collector__swap_Method = quark_concurrent_Collector__swap_Method;
_qrt.util.inherits(quark_concurrent_Collector__swap_Method, quark.reflect.Method);

function quark_concurrent_Collector__swap_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Collector__swap_Method.prototype.__init_fields__ = quark_concurrent_Collector__swap_Method__init_fields__;

function quark_concurrent_Collector__swap_Method_invoke(object, args) {
    var obj = object;
    return (obj)._swap((args)[0]);
}
quark_concurrent_Collector__swap_Method.prototype.invoke = quark_concurrent_Collector__swap_Method_invoke;

function quark_concurrent_Collector__swap_Method__getClass() {
    return null;
}
quark_concurrent_Collector__swap_Method.prototype._getClass = quark_concurrent_Collector__swap_Method__getClass;

function quark_concurrent_Collector__swap_Method__getField(name) {
    return null;
}
quark_concurrent_Collector__swap_Method.prototype._getField = quark_concurrent_Collector__swap_Method__getField;

function quark_concurrent_Collector__swap_Method__setField(name, value) {}
quark_concurrent_Collector__swap_Method.prototype._setField = quark_concurrent_Collector__swap_Method__setField;

// CLASS quark_concurrent_Collector__poll_Method

function quark_concurrent_Collector__poll_Method() {
    quark_concurrent_Collector__poll_Method.super_.call(this, "quark.void", "_poll", []);
}
exports.quark_concurrent_Collector__poll_Method = quark_concurrent_Collector__poll_Method;
_qrt.util.inherits(quark_concurrent_Collector__poll_Method, quark.reflect.Method);

function quark_concurrent_Collector__poll_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Collector__poll_Method.prototype.__init_fields__ = quark_concurrent_Collector__poll_Method__init_fields__;

function quark_concurrent_Collector__poll_Method_invoke(object, args) {
    var obj = object;
    (obj)._poll();
    return null;
}
quark_concurrent_Collector__poll_Method.prototype.invoke = quark_concurrent_Collector__poll_Method_invoke;

function quark_concurrent_Collector__poll_Method__getClass() {
    return null;
}
quark_concurrent_Collector__poll_Method.prototype._getClass = quark_concurrent_Collector__poll_Method__getClass;

function quark_concurrent_Collector__poll_Method__getField(name) {
    return null;
}
quark_concurrent_Collector__poll_Method.prototype._getField = quark_concurrent_Collector__poll_Method__getField;

function quark_concurrent_Collector__poll_Method__setField(name, value) {}
quark_concurrent_Collector__poll_Method.prototype._setField = quark_concurrent_Collector__poll_Method__setField;

// CLASS quark_concurrent_Collector

function quark_concurrent_Collector() {
    quark_concurrent_Collector.super_.call(this, "quark.concurrent.Collector");
    (this).name = "quark.concurrent.Collector";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.Lock", "lock"), new quark.reflect.Field("quark.concurrent.Queue<quark.concurrent.Event>", "pending"), new quark.reflect.Field("quark.concurrent.CollectorExecutor", "executor"), new quark.reflect.Field("quark.bool", "idle")];
    (this).methods = [new quark_concurrent_Collector_put_Method(), new quark_concurrent_Collector__swap_Method(), new quark_concurrent_Collector__poll_Method()];
}
exports.quark_concurrent_Collector = quark_concurrent_Collector;
_qrt.util.inherits(quark_concurrent_Collector, quark.reflect.Class);

function quark_concurrent_Collector__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_Collector.prototype.__init_fields__ = quark_concurrent_Collector__init_fields__;
quark_concurrent_Collector.singleton = new quark_concurrent_Collector();
function quark_concurrent_Collector_construct(args) {
    return new quark.concurrent.Collector();
}
quark_concurrent_Collector.prototype.construct = quark_concurrent_Collector_construct;

function quark_concurrent_Collector__getClass() {
    return null;
}
quark_concurrent_Collector.prototype._getClass = quark_concurrent_Collector__getClass;

function quark_concurrent_Collector__getField(name) {
    return null;
}
quark_concurrent_Collector.prototype._getField = quark_concurrent_Collector__getField;

function quark_concurrent_Collector__setField(name, value) {}
quark_concurrent_Collector.prototype._setField = quark_concurrent_Collector__setField;


// CLASS quark_concurrent_TimeoutListener_onTimeout_Method

function quark_concurrent_TimeoutListener_onTimeout_Method() {
    quark_concurrent_TimeoutListener_onTimeout_Method.super_.call(this, "quark.void", "onTimeout", ["quark.concurrent.Timeout"]);
}
exports.quark_concurrent_TimeoutListener_onTimeout_Method = quark_concurrent_TimeoutListener_onTimeout_Method;
_qrt.util.inherits(quark_concurrent_TimeoutListener_onTimeout_Method, quark.reflect.Method);

function quark_concurrent_TimeoutListener_onTimeout_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_TimeoutListener_onTimeout_Method.prototype.__init_fields__ = quark_concurrent_TimeoutListener_onTimeout_Method__init_fields__;

function quark_concurrent_TimeoutListener_onTimeout_Method_invoke(object, args) {
    var obj = object;
    (obj).onTimeout((args)[0]);
    return null;
}
quark_concurrent_TimeoutListener_onTimeout_Method.prototype.invoke = quark_concurrent_TimeoutListener_onTimeout_Method_invoke;

function quark_concurrent_TimeoutListener_onTimeout_Method__getClass() {
    return null;
}
quark_concurrent_TimeoutListener_onTimeout_Method.prototype._getClass = quark_concurrent_TimeoutListener_onTimeout_Method__getClass;

function quark_concurrent_TimeoutListener_onTimeout_Method__getField(name) {
    return null;
}
quark_concurrent_TimeoutListener_onTimeout_Method.prototype._getField = quark_concurrent_TimeoutListener_onTimeout_Method__getField;

function quark_concurrent_TimeoutListener_onTimeout_Method__setField(name, value) {}
quark_concurrent_TimeoutListener_onTimeout_Method.prototype._setField = quark_concurrent_TimeoutListener_onTimeout_Method__setField;

// CLASS quark_concurrent_TimeoutListener

function quark_concurrent_TimeoutListener() {
    quark_concurrent_TimeoutListener.super_.call(this, "quark.concurrent.TimeoutListener");
    (this).name = "quark.concurrent.TimeoutListener";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new quark_concurrent_TimeoutListener_onTimeout_Method()];
}
exports.quark_concurrent_TimeoutListener = quark_concurrent_TimeoutListener;
_qrt.util.inherits(quark_concurrent_TimeoutListener, quark.reflect.Class);

function quark_concurrent_TimeoutListener__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_TimeoutListener.prototype.__init_fields__ = quark_concurrent_TimeoutListener__init_fields__;
quark_concurrent_TimeoutListener.singleton = new quark_concurrent_TimeoutListener();
function quark_concurrent_TimeoutListener_construct(args) {
    return null;
}
quark_concurrent_TimeoutListener.prototype.construct = quark_concurrent_TimeoutListener_construct;

function quark_concurrent_TimeoutListener__getClass() {
    return null;
}
quark_concurrent_TimeoutListener.prototype._getClass = quark_concurrent_TimeoutListener__getClass;

function quark_concurrent_TimeoutListener__getField(name) {
    return null;
}
quark_concurrent_TimeoutListener.prototype._getField = quark_concurrent_TimeoutListener__getField;

function quark_concurrent_TimeoutListener__setField(name, value) {}
quark_concurrent_TimeoutListener.prototype._setField = quark_concurrent_TimeoutListener__setField;


// CLASS quark_concurrent_TimeoutExpiry_getContext_Method

function quark_concurrent_TimeoutExpiry_getContext_Method() {
    quark_concurrent_TimeoutExpiry_getContext_Method.super_.call(this, "quark.concurrent.EventContext", "getContext", []);
}
exports.quark_concurrent_TimeoutExpiry_getContext_Method = quark_concurrent_TimeoutExpiry_getContext_Method;
_qrt.util.inherits(quark_concurrent_TimeoutExpiry_getContext_Method, quark.reflect.Method);

function quark_concurrent_TimeoutExpiry_getContext_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_TimeoutExpiry_getContext_Method.prototype.__init_fields__ = quark_concurrent_TimeoutExpiry_getContext_Method__init_fields__;

function quark_concurrent_TimeoutExpiry_getContext_Method_invoke(object, args) {
    var obj = object;
    return (obj).getContext();
}
quark_concurrent_TimeoutExpiry_getContext_Method.prototype.invoke = quark_concurrent_TimeoutExpiry_getContext_Method_invoke;

function quark_concurrent_TimeoutExpiry_getContext_Method__getClass() {
    return null;
}
quark_concurrent_TimeoutExpiry_getContext_Method.prototype._getClass = quark_concurrent_TimeoutExpiry_getContext_Method__getClass;

function quark_concurrent_TimeoutExpiry_getContext_Method__getField(name) {
    return null;
}
quark_concurrent_TimeoutExpiry_getContext_Method.prototype._getField = quark_concurrent_TimeoutExpiry_getContext_Method__getField;

function quark_concurrent_TimeoutExpiry_getContext_Method__setField(name, value) {}
quark_concurrent_TimeoutExpiry_getContext_Method.prototype._setField = quark_concurrent_TimeoutExpiry_getContext_Method__setField;

// CLASS quark_concurrent_TimeoutExpiry_fireEvent_Method

function quark_concurrent_TimeoutExpiry_fireEvent_Method() {
    quark_concurrent_TimeoutExpiry_fireEvent_Method.super_.call(this, "quark.void", "fireEvent", []);
}
exports.quark_concurrent_TimeoutExpiry_fireEvent_Method = quark_concurrent_TimeoutExpiry_fireEvent_Method;
_qrt.util.inherits(quark_concurrent_TimeoutExpiry_fireEvent_Method, quark.reflect.Method);

function quark_concurrent_TimeoutExpiry_fireEvent_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_TimeoutExpiry_fireEvent_Method.prototype.__init_fields__ = quark_concurrent_TimeoutExpiry_fireEvent_Method__init_fields__;

function quark_concurrent_TimeoutExpiry_fireEvent_Method_invoke(object, args) {
    var obj = object;
    (obj).fireEvent();
    return null;
}
quark_concurrent_TimeoutExpiry_fireEvent_Method.prototype.invoke = quark_concurrent_TimeoutExpiry_fireEvent_Method_invoke;

function quark_concurrent_TimeoutExpiry_fireEvent_Method__getClass() {
    return null;
}
quark_concurrent_TimeoutExpiry_fireEvent_Method.prototype._getClass = quark_concurrent_TimeoutExpiry_fireEvent_Method__getClass;

function quark_concurrent_TimeoutExpiry_fireEvent_Method__getField(name) {
    return null;
}
quark_concurrent_TimeoutExpiry_fireEvent_Method.prototype._getField = quark_concurrent_TimeoutExpiry_fireEvent_Method__getField;

function quark_concurrent_TimeoutExpiry_fireEvent_Method__setField(name, value) {}
quark_concurrent_TimeoutExpiry_fireEvent_Method.prototype._setField = quark_concurrent_TimeoutExpiry_fireEvent_Method__setField;

// CLASS quark_concurrent_TimeoutExpiry

function quark_concurrent_TimeoutExpiry() {
    quark_concurrent_TimeoutExpiry.super_.call(this, "quark.concurrent.TimeoutExpiry");
    (this).name = "quark.concurrent.TimeoutExpiry";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.Timeout", "timeout"), new quark.reflect.Field("quark.concurrent.TimeoutListener", "listener")];
    (this).methods = [new quark_concurrent_TimeoutExpiry_getContext_Method(), new quark_concurrent_TimeoutExpiry_fireEvent_Method()];
}
exports.quark_concurrent_TimeoutExpiry = quark_concurrent_TimeoutExpiry;
_qrt.util.inherits(quark_concurrent_TimeoutExpiry, quark.reflect.Class);

function quark_concurrent_TimeoutExpiry__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_TimeoutExpiry.prototype.__init_fields__ = quark_concurrent_TimeoutExpiry__init_fields__;
quark_concurrent_TimeoutExpiry.singleton = new quark_concurrent_TimeoutExpiry();
function quark_concurrent_TimeoutExpiry_construct(args) {
    return new quark.concurrent.TimeoutExpiry((args)[0], (args)[1]);
}
quark_concurrent_TimeoutExpiry.prototype.construct = quark_concurrent_TimeoutExpiry_construct;

function quark_concurrent_TimeoutExpiry__getClass() {
    return null;
}
quark_concurrent_TimeoutExpiry.prototype._getClass = quark_concurrent_TimeoutExpiry__getClass;

function quark_concurrent_TimeoutExpiry__getField(name) {
    return null;
}
quark_concurrent_TimeoutExpiry.prototype._getField = quark_concurrent_TimeoutExpiry__getField;

function quark_concurrent_TimeoutExpiry__setField(name, value) {}
quark_concurrent_TimeoutExpiry.prototype._setField = quark_concurrent_TimeoutExpiry__setField;


// CLASS quark_concurrent_Timeout_start_Method

function quark_concurrent_Timeout_start_Method() {
    quark_concurrent_Timeout_start_Method.super_.call(this, "quark.void", "start", ["quark.concurrent.TimeoutListener"]);
}
exports.quark_concurrent_Timeout_start_Method = quark_concurrent_Timeout_start_Method;
_qrt.util.inherits(quark_concurrent_Timeout_start_Method, quark.reflect.Method);

function quark_concurrent_Timeout_start_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Timeout_start_Method.prototype.__init_fields__ = quark_concurrent_Timeout_start_Method__init_fields__;

function quark_concurrent_Timeout_start_Method_invoke(object, args) {
    var obj = object;
    (obj).start((args)[0]);
    return null;
}
quark_concurrent_Timeout_start_Method.prototype.invoke = quark_concurrent_Timeout_start_Method_invoke;

function quark_concurrent_Timeout_start_Method__getClass() {
    return null;
}
quark_concurrent_Timeout_start_Method.prototype._getClass = quark_concurrent_Timeout_start_Method__getClass;

function quark_concurrent_Timeout_start_Method__getField(name) {
    return null;
}
quark_concurrent_Timeout_start_Method.prototype._getField = quark_concurrent_Timeout_start_Method__getField;

function quark_concurrent_Timeout_start_Method__setField(name, value) {}
quark_concurrent_Timeout_start_Method.prototype._setField = quark_concurrent_Timeout_start_Method__setField;

// CLASS quark_concurrent_Timeout_cancel_Method

function quark_concurrent_Timeout_cancel_Method() {
    quark_concurrent_Timeout_cancel_Method.super_.call(this, "quark.void", "cancel", []);
}
exports.quark_concurrent_Timeout_cancel_Method = quark_concurrent_Timeout_cancel_Method;
_qrt.util.inherits(quark_concurrent_Timeout_cancel_Method, quark.reflect.Method);

function quark_concurrent_Timeout_cancel_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Timeout_cancel_Method.prototype.__init_fields__ = quark_concurrent_Timeout_cancel_Method__init_fields__;

function quark_concurrent_Timeout_cancel_Method_invoke(object, args) {
    var obj = object;
    (obj).cancel();
    return null;
}
quark_concurrent_Timeout_cancel_Method.prototype.invoke = quark_concurrent_Timeout_cancel_Method_invoke;

function quark_concurrent_Timeout_cancel_Method__getClass() {
    return null;
}
quark_concurrent_Timeout_cancel_Method.prototype._getClass = quark_concurrent_Timeout_cancel_Method__getClass;

function quark_concurrent_Timeout_cancel_Method__getField(name) {
    return null;
}
quark_concurrent_Timeout_cancel_Method.prototype._getField = quark_concurrent_Timeout_cancel_Method__getField;

function quark_concurrent_Timeout_cancel_Method__setField(name, value) {}
quark_concurrent_Timeout_cancel_Method.prototype._setField = quark_concurrent_Timeout_cancel_Method__setField;

// CLASS quark_concurrent_Timeout_onExecute_Method

function quark_concurrent_Timeout_onExecute_Method() {
    quark_concurrent_Timeout_onExecute_Method.super_.call(this, "quark.void", "onExecute", ["quark.Runtime"]);
}
exports.quark_concurrent_Timeout_onExecute_Method = quark_concurrent_Timeout_onExecute_Method;
_qrt.util.inherits(quark_concurrent_Timeout_onExecute_Method, quark.reflect.Method);

function quark_concurrent_Timeout_onExecute_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Timeout_onExecute_Method.prototype.__init_fields__ = quark_concurrent_Timeout_onExecute_Method__init_fields__;

function quark_concurrent_Timeout_onExecute_Method_invoke(object, args) {
    var obj = object;
    (obj).onExecute((args)[0]);
    return null;
}
quark_concurrent_Timeout_onExecute_Method.prototype.invoke = quark_concurrent_Timeout_onExecute_Method_invoke;

function quark_concurrent_Timeout_onExecute_Method__getClass() {
    return null;
}
quark_concurrent_Timeout_onExecute_Method.prototype._getClass = quark_concurrent_Timeout_onExecute_Method__getClass;

function quark_concurrent_Timeout_onExecute_Method__getField(name) {
    return null;
}
quark_concurrent_Timeout_onExecute_Method.prototype._getField = quark_concurrent_Timeout_onExecute_Method__getField;

function quark_concurrent_Timeout_onExecute_Method__setField(name, value) {}
quark_concurrent_Timeout_onExecute_Method.prototype._setField = quark_concurrent_Timeout_onExecute_Method__setField;

// CLASS quark_concurrent_Timeout_getContext_Method

function quark_concurrent_Timeout_getContext_Method() {
    quark_concurrent_Timeout_getContext_Method.super_.call(this, "quark.concurrent.Context", "getContext", []);
}
exports.quark_concurrent_Timeout_getContext_Method = quark_concurrent_Timeout_getContext_Method;
_qrt.util.inherits(quark_concurrent_Timeout_getContext_Method, quark.reflect.Method);

function quark_concurrent_Timeout_getContext_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Timeout_getContext_Method.prototype.__init_fields__ = quark_concurrent_Timeout_getContext_Method__init_fields__;

function quark_concurrent_Timeout_getContext_Method_invoke(object, args) {
    var obj = object;
    return (obj).getContext();
}
quark_concurrent_Timeout_getContext_Method.prototype.invoke = quark_concurrent_Timeout_getContext_Method_invoke;

function quark_concurrent_Timeout_getContext_Method__getClass() {
    return null;
}
quark_concurrent_Timeout_getContext_Method.prototype._getClass = quark_concurrent_Timeout_getContext_Method__getClass;

function quark_concurrent_Timeout_getContext_Method__getField(name) {
    return null;
}
quark_concurrent_Timeout_getContext_Method.prototype._getField = quark_concurrent_Timeout_getContext_Method__getField;

function quark_concurrent_Timeout_getContext_Method__setField(name, value) {}
quark_concurrent_Timeout_getContext_Method.prototype._setField = quark_concurrent_Timeout_getContext_Method__setField;

// CLASS quark_concurrent_Timeout

function quark_concurrent_Timeout() {
    quark_concurrent_Timeout.super_.call(this, "quark.concurrent.Timeout");
    (this).name = "quark.concurrent.Timeout";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.Context", "_context"), new quark.reflect.Field("quark.float", "timeout"), new quark.reflect.Field("quark.concurrent.Lock", "lock"), new quark.reflect.Field("quark.concurrent.TimeoutListener", "listener")];
    (this).methods = [new quark_concurrent_Timeout_start_Method(), new quark_concurrent_Timeout_cancel_Method(), new quark_concurrent_Timeout_onExecute_Method(), new quark_concurrent_Timeout_getContext_Method()];
}
exports.quark_concurrent_Timeout = quark_concurrent_Timeout;
_qrt.util.inherits(quark_concurrent_Timeout, quark.reflect.Class);

function quark_concurrent_Timeout__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_Timeout.prototype.__init_fields__ = quark_concurrent_Timeout__init_fields__;
quark_concurrent_Timeout.singleton = new quark_concurrent_Timeout();
function quark_concurrent_Timeout_construct(args) {
    return new quark.concurrent.Timeout((args)[0]);
}
quark_concurrent_Timeout.prototype.construct = quark_concurrent_Timeout_construct;

function quark_concurrent_Timeout__getClass() {
    return null;
}
quark_concurrent_Timeout.prototype._getClass = quark_concurrent_Timeout__getClass;

function quark_concurrent_Timeout__getField(name) {
    return null;
}
quark_concurrent_Timeout.prototype._getField = quark_concurrent_Timeout__getField;

function quark_concurrent_Timeout__setField(name, value) {}
quark_concurrent_Timeout.prototype._setField = quark_concurrent_Timeout__setField;


// CLASS quark_concurrent_TLSContextInitializer_getValue_Method

function quark_concurrent_TLSContextInitializer_getValue_Method() {
    quark_concurrent_TLSContextInitializer_getValue_Method.super_.call(this, "quark.concurrent.Context", "getValue", []);
}
exports.quark_concurrent_TLSContextInitializer_getValue_Method = quark_concurrent_TLSContextInitializer_getValue_Method;
_qrt.util.inherits(quark_concurrent_TLSContextInitializer_getValue_Method, quark.reflect.Method);

function quark_concurrent_TLSContextInitializer_getValue_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_TLSContextInitializer_getValue_Method.prototype.__init_fields__ = quark_concurrent_TLSContextInitializer_getValue_Method__init_fields__;

function quark_concurrent_TLSContextInitializer_getValue_Method_invoke(object, args) {
    var obj = object;
    return (obj).getValue();
}
quark_concurrent_TLSContextInitializer_getValue_Method.prototype.invoke = quark_concurrent_TLSContextInitializer_getValue_Method_invoke;

function quark_concurrent_TLSContextInitializer_getValue_Method__getClass() {
    return null;
}
quark_concurrent_TLSContextInitializer_getValue_Method.prototype._getClass = quark_concurrent_TLSContextInitializer_getValue_Method__getClass;

function quark_concurrent_TLSContextInitializer_getValue_Method__getField(name) {
    return null;
}
quark_concurrent_TLSContextInitializer_getValue_Method.prototype._getField = quark_concurrent_TLSContextInitializer_getValue_Method__getField;

function quark_concurrent_TLSContextInitializer_getValue_Method__setField(name, value) {}
quark_concurrent_TLSContextInitializer_getValue_Method.prototype._setField = quark_concurrent_TLSContextInitializer_getValue_Method__setField;

// CLASS quark_concurrent_TLSContextInitializer

function quark_concurrent_TLSContextInitializer() {
    quark_concurrent_TLSContextInitializer.super_.call(this, "quark.concurrent.TLSContextInitializer");
    (this).name = "quark.concurrent.TLSContextInitializer";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new quark_concurrent_TLSContextInitializer_getValue_Method()];
}
exports.quark_concurrent_TLSContextInitializer = quark_concurrent_TLSContextInitializer;
_qrt.util.inherits(quark_concurrent_TLSContextInitializer, quark.reflect.Class);

function quark_concurrent_TLSContextInitializer__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_TLSContextInitializer.prototype.__init_fields__ = quark_concurrent_TLSContextInitializer__init_fields__;
quark_concurrent_TLSContextInitializer.singleton = new quark_concurrent_TLSContextInitializer();
function quark_concurrent_TLSContextInitializer_construct(args) {
    return new quark.concurrent.TLSContextInitializer();
}
quark_concurrent_TLSContextInitializer.prototype.construct = quark_concurrent_TLSContextInitializer_construct;

function quark_concurrent_TLSContextInitializer__getClass() {
    return null;
}
quark_concurrent_TLSContextInitializer.prototype._getClass = quark_concurrent_TLSContextInitializer__getClass;

function quark_concurrent_TLSContextInitializer__getField(name) {
    return null;
}
quark_concurrent_TLSContextInitializer.prototype._getField = quark_concurrent_TLSContextInitializer__getField;

function quark_concurrent_TLSContextInitializer__setField(name, value) {}
quark_concurrent_TLSContextInitializer.prototype._setField = quark_concurrent_TLSContextInitializer__setField;


// CLASS quark_concurrent_Context_current_Method

function quark_concurrent_Context_current_Method() {
    quark_concurrent_Context_current_Method.super_.call(this, "quark.concurrent.Context", "current", []);
}
exports.quark_concurrent_Context_current_Method = quark_concurrent_Context_current_Method;
_qrt.util.inherits(quark_concurrent_Context_current_Method, quark.reflect.Method);

function quark_concurrent_Context_current_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Context_current_Method.prototype.__init_fields__ = quark_concurrent_Context_current_Method__init_fields__;

function quark_concurrent_Context_current_Method_invoke(object, args) {
    var obj = object;
    return quark.concurrent.Context.current();
}
quark_concurrent_Context_current_Method.prototype.invoke = quark_concurrent_Context_current_Method_invoke;

function quark_concurrent_Context_current_Method__getClass() {
    return null;
}
quark_concurrent_Context_current_Method.prototype._getClass = quark_concurrent_Context_current_Method__getClass;

function quark_concurrent_Context_current_Method__getField(name) {
    return null;
}
quark_concurrent_Context_current_Method.prototype._getField = quark_concurrent_Context_current_Method__getField;

function quark_concurrent_Context_current_Method__setField(name, value) {}
quark_concurrent_Context_current_Method.prototype._setField = quark_concurrent_Context_current_Method__setField;

// CLASS quark_concurrent_Context_global_Method

function quark_concurrent_Context_global_Method() {
    quark_concurrent_Context_global_Method.super_.call(this, "quark.concurrent.Context", "global", []);
}
exports.quark_concurrent_Context_global_Method = quark_concurrent_Context_global_Method;
_qrt.util.inherits(quark_concurrent_Context_global_Method, quark.reflect.Method);

function quark_concurrent_Context_global_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Context_global_Method.prototype.__init_fields__ = quark_concurrent_Context_global_Method__init_fields__;

function quark_concurrent_Context_global_Method_invoke(object, args) {
    var obj = object;
    return quark.concurrent.Context.global();
}
quark_concurrent_Context_global_Method.prototype.invoke = quark_concurrent_Context_global_Method_invoke;

function quark_concurrent_Context_global_Method__getClass() {
    return null;
}
quark_concurrent_Context_global_Method.prototype._getClass = quark_concurrent_Context_global_Method__getClass;

function quark_concurrent_Context_global_Method__getField(name) {
    return null;
}
quark_concurrent_Context_global_Method.prototype._getField = quark_concurrent_Context_global_Method__getField;

function quark_concurrent_Context_global_Method__setField(name, value) {}
quark_concurrent_Context_global_Method.prototype._setField = quark_concurrent_Context_global_Method__setField;

// CLASS quark_concurrent_Context_runtime_Method

function quark_concurrent_Context_runtime_Method() {
    quark_concurrent_Context_runtime_Method.super_.call(this, "quark.Runtime", "runtime", []);
}
exports.quark_concurrent_Context_runtime_Method = quark_concurrent_Context_runtime_Method;
_qrt.util.inherits(quark_concurrent_Context_runtime_Method, quark.reflect.Method);

function quark_concurrent_Context_runtime_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Context_runtime_Method.prototype.__init_fields__ = quark_concurrent_Context_runtime_Method__init_fields__;

function quark_concurrent_Context_runtime_Method_invoke(object, args) {
    var obj = object;
    return quark.concurrent.Context.runtime();
}
quark_concurrent_Context_runtime_Method.prototype.invoke = quark_concurrent_Context_runtime_Method_invoke;

function quark_concurrent_Context_runtime_Method__getClass() {
    return null;
}
quark_concurrent_Context_runtime_Method.prototype._getClass = quark_concurrent_Context_runtime_Method__getClass;

function quark_concurrent_Context_runtime_Method__getField(name) {
    return null;
}
quark_concurrent_Context_runtime_Method.prototype._getField = quark_concurrent_Context_runtime_Method__getField;

function quark_concurrent_Context_runtime_Method__setField(name, value) {}
quark_concurrent_Context_runtime_Method.prototype._setField = quark_concurrent_Context_runtime_Method__setField;

// CLASS quark_concurrent_Context_swap_Method

function quark_concurrent_Context_swap_Method() {
    quark_concurrent_Context_swap_Method.super_.call(this, "quark.void", "swap", ["quark.concurrent.Context"]);
}
exports.quark_concurrent_Context_swap_Method = quark_concurrent_Context_swap_Method;
_qrt.util.inherits(quark_concurrent_Context_swap_Method, quark.reflect.Method);

function quark_concurrent_Context_swap_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_concurrent_Context_swap_Method.prototype.__init_fields__ = quark_concurrent_Context_swap_Method__init_fields__;

function quark_concurrent_Context_swap_Method_invoke(object, args) {
    var obj = object;
    quark.concurrent.Context.swap((args)[0]);
    return null;
}
quark_concurrent_Context_swap_Method.prototype.invoke = quark_concurrent_Context_swap_Method_invoke;

function quark_concurrent_Context_swap_Method__getClass() {
    return null;
}
quark_concurrent_Context_swap_Method.prototype._getClass = quark_concurrent_Context_swap_Method__getClass;

function quark_concurrent_Context_swap_Method__getField(name) {
    return null;
}
quark_concurrent_Context_swap_Method.prototype._getField = quark_concurrent_Context_swap_Method__getField;

function quark_concurrent_Context_swap_Method__setField(name, value) {}
quark_concurrent_Context_swap_Method.prototype._setField = quark_concurrent_Context_swap_Method__setField;

// CLASS quark_concurrent_Context

function quark_concurrent_Context() {
    quark_concurrent_Context.super_.call(this, "quark.concurrent.Context");
    (this).name = "quark.concurrent.Context";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.Context", "_global"), new quark.reflect.Field("quark.concurrent.TLS<quark.concurrent.Context>", "_current"), new quark.reflect.Field("quark.concurrent.Context", "_parent"), new quark.reflect.Field("quark.Runtime", "_runtime"), new quark.reflect.Field("quark.concurrent.Collector", "collector")];
    (this).methods = [new quark_concurrent_Context_current_Method(), new quark_concurrent_Context_global_Method(), new quark_concurrent_Context_runtime_Method(), new quark_concurrent_Context_swap_Method()];
}
exports.quark_concurrent_Context = quark_concurrent_Context;
_qrt.util.inherits(quark_concurrent_Context, quark.reflect.Class);

function quark_concurrent_Context__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_concurrent_Context.prototype.__init_fields__ = quark_concurrent_Context__init_fields__;
quark_concurrent_Context.singleton = new quark_concurrent_Context();
function quark_concurrent_Context_construct(args) {
    return new quark.concurrent.Context((args)[0]);
}
quark_concurrent_Context.prototype.construct = quark_concurrent_Context_construct;

function quark_concurrent_Context__getClass() {
    return null;
}
quark_concurrent_Context.prototype._getClass = quark_concurrent_Context__getClass;

function quark_concurrent_Context__getField(name) {
    return null;
}
quark_concurrent_Context.prototype._getField = quark_concurrent_Context__getField;

function quark_concurrent_Context__setField(name, value) {}
quark_concurrent_Context.prototype._setField = quark_concurrent_Context__setField;


// CLASS quark_HTTPHandler

function quark_HTTPHandler() {
    quark_HTTPHandler.super_.call(this, "quark.HTTPHandler");
    (this).name = "quark.HTTPHandler";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_HTTPHandler = quark_HTTPHandler;
_qrt.util.inherits(quark_HTTPHandler, quark.reflect.Class);

function quark_HTTPHandler__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_HTTPHandler.prototype.__init_fields__ = quark_HTTPHandler__init_fields__;
quark_HTTPHandler.singleton = new quark_HTTPHandler();
function quark_HTTPHandler_construct(args) {
    return null;
}
quark_HTTPHandler.prototype.construct = quark_HTTPHandler_construct;

function quark_HTTPHandler__getClass() {
    return null;
}
quark_HTTPHandler.prototype._getClass = quark_HTTPHandler__getClass;

function quark_HTTPHandler__getField(name) {
    return null;
}
quark_HTTPHandler.prototype._getField = quark_HTTPHandler__getField;

function quark_HTTPHandler__setField(name, value) {}
quark_HTTPHandler.prototype._setField = quark_HTTPHandler__setField;


// CLASS quark_HTTPRequest

function quark_HTTPRequest() {
    quark_HTTPRequest.super_.call(this, "quark.HTTPRequest");
    (this).name = "quark.HTTPRequest";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_HTTPRequest = quark_HTTPRequest;
_qrt.util.inherits(quark_HTTPRequest, quark.reflect.Class);

function quark_HTTPRequest__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_HTTPRequest.prototype.__init_fields__ = quark_HTTPRequest__init_fields__;
quark_HTTPRequest.singleton = new quark_HTTPRequest();
function quark_HTTPRequest_construct(args) {
    return null;
}
quark_HTTPRequest.prototype.construct = quark_HTTPRequest_construct;

function quark_HTTPRequest__getClass() {
    return null;
}
quark_HTTPRequest.prototype._getClass = quark_HTTPRequest__getClass;

function quark_HTTPRequest__getField(name) {
    return null;
}
quark_HTTPRequest.prototype._getField = quark_HTTPRequest__getField;

function quark_HTTPRequest__setField(name, value) {}
quark_HTTPRequest.prototype._setField = quark_HTTPRequest__setField;


// CLASS quark_HTTPResponse

function quark_HTTPResponse() {
    quark_HTTPResponse.super_.call(this, "quark.HTTPResponse");
    (this).name = "quark.HTTPResponse";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_HTTPResponse = quark_HTTPResponse;
_qrt.util.inherits(quark_HTTPResponse, quark.reflect.Class);

function quark_HTTPResponse__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_HTTPResponse.prototype.__init_fields__ = quark_HTTPResponse__init_fields__;
quark_HTTPResponse.singleton = new quark_HTTPResponse();
function quark_HTTPResponse_construct(args) {
    return null;
}
quark_HTTPResponse.prototype.construct = quark_HTTPResponse_construct;

function quark_HTTPResponse__getClass() {
    return null;
}
quark_HTTPResponse.prototype._getClass = quark_HTTPResponse__getClass;

function quark_HTTPResponse__getField(name) {
    return null;
}
quark_HTTPResponse.prototype._getField = quark_HTTPResponse__getField;

function quark_HTTPResponse__setField(name, value) {}
quark_HTTPResponse.prototype._setField = quark_HTTPResponse__setField;


// CLASS quark_HTTPServlet

function quark_HTTPServlet() {
    quark_HTTPServlet.super_.call(this, "quark.HTTPServlet");
    (this).name = "quark.HTTPServlet";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_HTTPServlet = quark_HTTPServlet;
_qrt.util.inherits(quark_HTTPServlet, quark.reflect.Class);

function quark_HTTPServlet__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_HTTPServlet.prototype.__init_fields__ = quark_HTTPServlet__init_fields__;
quark_HTTPServlet.singleton = new quark_HTTPServlet();
function quark_HTTPServlet_construct(args) {
    return null;
}
quark_HTTPServlet.prototype.construct = quark_HTTPServlet_construct;

function quark_HTTPServlet__getClass() {
    return null;
}
quark_HTTPServlet.prototype._getClass = quark_HTTPServlet__getClass;

function quark_HTTPServlet__getField(name) {
    return null;
}
quark_HTTPServlet.prototype._getField = quark_HTTPServlet__getField;

function quark_HTTPServlet__setField(name, value) {}
quark_HTTPServlet.prototype._setField = quark_HTTPServlet__setField;


// CLASS quark_WSHandler

function quark_WSHandler() {
    quark_WSHandler.super_.call(this, "quark.WSHandler");
    (this).name = "quark.WSHandler";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_WSHandler = quark_WSHandler;
_qrt.util.inherits(quark_WSHandler, quark.reflect.Class);

function quark_WSHandler__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_WSHandler.prototype.__init_fields__ = quark_WSHandler__init_fields__;
quark_WSHandler.singleton = new quark_WSHandler();
function quark_WSHandler_construct(args) {
    return null;
}
quark_WSHandler.prototype.construct = quark_WSHandler_construct;

function quark_WSHandler__getClass() {
    return null;
}
quark_WSHandler.prototype._getClass = quark_WSHandler__getClass;

function quark_WSHandler__getField(name) {
    return null;
}
quark_WSHandler.prototype._getField = quark_WSHandler__getField;

function quark_WSHandler__setField(name, value) {}
quark_WSHandler.prototype._setField = quark_WSHandler__setField;


// CLASS quark_WebSocket

function quark_WebSocket() {
    quark_WebSocket.super_.call(this, "quark.WebSocket");
    (this).name = "quark.WebSocket";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_WebSocket = quark_WebSocket;
_qrt.util.inherits(quark_WebSocket, quark.reflect.Class);

function quark_WebSocket__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_WebSocket.prototype.__init_fields__ = quark_WebSocket__init_fields__;
quark_WebSocket.singleton = new quark_WebSocket();
function quark_WebSocket_construct(args) {
    return null;
}
quark_WebSocket.prototype.construct = quark_WebSocket_construct;

function quark_WebSocket__getClass() {
    return null;
}
quark_WebSocket.prototype._getClass = quark_WebSocket__getClass;

function quark_WebSocket__getField(name) {
    return null;
}
quark_WebSocket.prototype._getField = quark_WebSocket__getField;

function quark_WebSocket__setField(name, value) {}
quark_WebSocket.prototype._setField = quark_WebSocket__setField;


// CLASS quark_WSServlet

function quark_WSServlet() {
    quark_WSServlet.super_.call(this, "quark.WSServlet");
    (this).name = "quark.WSServlet";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [];
}
exports.quark_WSServlet = quark_WSServlet;
_qrt.util.inherits(quark_WSServlet, quark.reflect.Class);

function quark_WSServlet__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_WSServlet.prototype.__init_fields__ = quark_WSServlet__init_fields__;
quark_WSServlet.singleton = new quark_WSServlet();
function quark_WSServlet_construct(args) {
    return null;
}
quark_WSServlet.prototype.construct = quark_WSServlet_construct;

function quark_WSServlet__getClass() {
    return null;
}
quark_WSServlet.prototype._getClass = quark_WSServlet__getClass;

function quark_WSServlet__getField(name) {
    return null;
}
quark_WSServlet.prototype._getField = quark_WSServlet__getField;

function quark_WSServlet__setField(name, value) {}
quark_WSServlet.prototype._setField = quark_WSServlet__setField;


// CLASS quark_test_TestInitializer_getValue_Method

function quark_test_TestInitializer_getValue_Method() {
    quark_test_TestInitializer_getValue_Method.super_.call(this, "quark.test.Test", "getValue", []);
}
exports.quark_test_TestInitializer_getValue_Method = quark_test_TestInitializer_getValue_Method;
_qrt.util.inherits(quark_test_TestInitializer_getValue_Method, quark.reflect.Method);

function quark_test_TestInitializer_getValue_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_TestInitializer_getValue_Method.prototype.__init_fields__ = quark_test_TestInitializer_getValue_Method__init_fields__;

function quark_test_TestInitializer_getValue_Method_invoke(object, args) {
    var obj = object;
    return (obj).getValue();
}
quark_test_TestInitializer_getValue_Method.prototype.invoke = quark_test_TestInitializer_getValue_Method_invoke;

function quark_test_TestInitializer_getValue_Method__getClass() {
    return null;
}
quark_test_TestInitializer_getValue_Method.prototype._getClass = quark_test_TestInitializer_getValue_Method__getClass;

function quark_test_TestInitializer_getValue_Method__getField(name) {
    return null;
}
quark_test_TestInitializer_getValue_Method.prototype._getField = quark_test_TestInitializer_getValue_Method__getField;

function quark_test_TestInitializer_getValue_Method__setField(name, value) {}
quark_test_TestInitializer_getValue_Method.prototype._setField = quark_test_TestInitializer_getValue_Method__setField;

// CLASS quark_test_TestInitializer

function quark_test_TestInitializer() {
    quark_test_TestInitializer.super_.call(this, "quark.test.TestInitializer");
    (this).name = "quark.test.TestInitializer";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new quark_test_TestInitializer_getValue_Method()];
}
exports.quark_test_TestInitializer = quark_test_TestInitializer;
_qrt.util.inherits(quark_test_TestInitializer, quark.reflect.Class);

function quark_test_TestInitializer__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_test_TestInitializer.prototype.__init_fields__ = quark_test_TestInitializer__init_fields__;
quark_test_TestInitializer.singleton = new quark_test_TestInitializer();
function quark_test_TestInitializer_construct(args) {
    return new quark.test.TestInitializer();
}
quark_test_TestInitializer.prototype.construct = quark_test_TestInitializer_construct;

function quark_test_TestInitializer__getClass() {
    return null;
}
quark_test_TestInitializer.prototype._getClass = quark_test_TestInitializer__getClass;

function quark_test_TestInitializer__getField(name) {
    return null;
}
quark_test_TestInitializer.prototype._getField = quark_test_TestInitializer__getField;

function quark_test_TestInitializer__setField(name, value) {}
quark_test_TestInitializer.prototype._setField = quark_test_TestInitializer__setField;


// CLASS quark_test_Test_current_Method

function quark_test_Test_current_Method() {
    quark_test_Test_current_Method.super_.call(this, "quark.test.Test", "current", []);
}
exports.quark_test_Test_current_Method = quark_test_Test_current_Method;
_qrt.util.inherits(quark_test_Test_current_Method, quark.reflect.Method);

function quark_test_Test_current_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_Test_current_Method.prototype.__init_fields__ = quark_test_Test_current_Method__init_fields__;

function quark_test_Test_current_Method_invoke(object, args) {
    var obj = object;
    return quark.test.Test.current();
}
quark_test_Test_current_Method.prototype.invoke = quark_test_Test_current_Method_invoke;

function quark_test_Test_current_Method__getClass() {
    return null;
}
quark_test_Test_current_Method.prototype._getClass = quark_test_Test_current_Method__getClass;

function quark_test_Test_current_Method__getField(name) {
    return null;
}
quark_test_Test_current_Method.prototype._getField = quark_test_Test_current_Method__getField;

function quark_test_Test_current_Method__setField(name, value) {}
quark_test_Test_current_Method.prototype._setField = quark_test_Test_current_Method__setField;

// CLASS quark_test_Test_match_Method

function quark_test_Test_match_Method() {
    quark_test_Test_match_Method.super_.call(this, "quark.bool", "match", ["quark.List<quark.String>"]);
}
exports.quark_test_Test_match_Method = quark_test_Test_match_Method;
_qrt.util.inherits(quark_test_Test_match_Method, quark.reflect.Method);

function quark_test_Test_match_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_Test_match_Method.prototype.__init_fields__ = quark_test_Test_match_Method__init_fields__;

function quark_test_Test_match_Method_invoke(object, args) {
    var obj = object;
    return (obj).match((args)[0]);
}
quark_test_Test_match_Method.prototype.invoke = quark_test_Test_match_Method_invoke;

function quark_test_Test_match_Method__getClass() {
    return null;
}
quark_test_Test_match_Method.prototype._getClass = quark_test_Test_match_Method__getClass;

function quark_test_Test_match_Method__getField(name) {
    return null;
}
quark_test_Test_match_Method.prototype._getField = quark_test_Test_match_Method__getField;

function quark_test_Test_match_Method__setField(name, value) {}
quark_test_Test_match_Method.prototype._setField = quark_test_Test_match_Method__setField;

// CLASS quark_test_Test_start_Method

function quark_test_Test_start_Method() {
    quark_test_Test_start_Method.super_.call(this, "quark.void", "start", []);
}
exports.quark_test_Test_start_Method = quark_test_Test_start_Method;
_qrt.util.inherits(quark_test_Test_start_Method, quark.reflect.Method);

function quark_test_Test_start_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_Test_start_Method.prototype.__init_fields__ = quark_test_Test_start_Method__init_fields__;

function quark_test_Test_start_Method_invoke(object, args) {
    var obj = object;
    (obj).start();
    return null;
}
quark_test_Test_start_Method.prototype.invoke = quark_test_Test_start_Method_invoke;

function quark_test_Test_start_Method__getClass() {
    return null;
}
quark_test_Test_start_Method.prototype._getClass = quark_test_Test_start_Method__getClass;

function quark_test_Test_start_Method__getField(name) {
    return null;
}
quark_test_Test_start_Method.prototype._getField = quark_test_Test_start_Method__getField;

function quark_test_Test_start_Method__setField(name, value) {}
quark_test_Test_start_Method.prototype._setField = quark_test_Test_start_Method__setField;

// CLASS quark_test_Test_stop_Method

function quark_test_Test_stop_Method() {
    quark_test_Test_stop_Method.super_.call(this, "quark.void", "stop", []);
}
exports.quark_test_Test_stop_Method = quark_test_Test_stop_Method;
_qrt.util.inherits(quark_test_Test_stop_Method, quark.reflect.Method);

function quark_test_Test_stop_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_Test_stop_Method.prototype.__init_fields__ = quark_test_Test_stop_Method__init_fields__;

function quark_test_Test_stop_Method_invoke(object, args) {
    var obj = object;
    (obj).stop();
    return null;
}
quark_test_Test_stop_Method.prototype.invoke = quark_test_Test_stop_Method_invoke;

function quark_test_Test_stop_Method__getClass() {
    return null;
}
quark_test_Test_stop_Method.prototype._getClass = quark_test_Test_stop_Method__getClass;

function quark_test_Test_stop_Method__getField(name) {
    return null;
}
quark_test_Test_stop_Method.prototype._getField = quark_test_Test_stop_Method__getField;

function quark_test_Test_stop_Method__setField(name, value) {}
quark_test_Test_stop_Method.prototype._setField = quark_test_Test_stop_Method__setField;

// CLASS quark_test_Test_check_Method

function quark_test_Test_check_Method() {
    quark_test_Test_check_Method.super_.call(this, "quark.bool", "check", ["quark.bool", "quark.String"]);
}
exports.quark_test_Test_check_Method = quark_test_Test_check_Method;
_qrt.util.inherits(quark_test_Test_check_Method, quark.reflect.Method);

function quark_test_Test_check_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_Test_check_Method.prototype.__init_fields__ = quark_test_Test_check_Method__init_fields__;

function quark_test_Test_check_Method_invoke(object, args) {
    var obj = object;
    return (obj).check((args)[0], (args)[1]);
}
quark_test_Test_check_Method.prototype.invoke = quark_test_Test_check_Method_invoke;

function quark_test_Test_check_Method__getClass() {
    return null;
}
quark_test_Test_check_Method.prototype._getClass = quark_test_Test_check_Method__getClass;

function quark_test_Test_check_Method__getField(name) {
    return null;
}
quark_test_Test_check_Method.prototype._getField = quark_test_Test_check_Method__getField;

function quark_test_Test_check_Method__setField(name, value) {}
quark_test_Test_check_Method.prototype._setField = quark_test_Test_check_Method__setField;

// CLASS quark_test_Test_fail_Method

function quark_test_Test_fail_Method() {
    quark_test_Test_fail_Method.super_.call(this, "quark.void", "fail", ["quark.String"]);
}
exports.quark_test_Test_fail_Method = quark_test_Test_fail_Method;
_qrt.util.inherits(quark_test_Test_fail_Method, quark.reflect.Method);

function quark_test_Test_fail_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_Test_fail_Method.prototype.__init_fields__ = quark_test_Test_fail_Method__init_fields__;

function quark_test_Test_fail_Method_invoke(object, args) {
    var obj = object;
    (obj).fail((args)[0]);
    return null;
}
quark_test_Test_fail_Method.prototype.invoke = quark_test_Test_fail_Method_invoke;

function quark_test_Test_fail_Method__getClass() {
    return null;
}
quark_test_Test_fail_Method.prototype._getClass = quark_test_Test_fail_Method__getClass;

function quark_test_Test_fail_Method__getField(name) {
    return null;
}
quark_test_Test_fail_Method.prototype._getField = quark_test_Test_fail_Method__getField;

function quark_test_Test_fail_Method__setField(name, value) {}
quark_test_Test_fail_Method.prototype._setField = quark_test_Test_fail_Method__setField;

// CLASS quark_test_Test_run_Method

function quark_test_Test_run_Method() {
    quark_test_Test_run_Method.super_.call(this, "quark.void", "run", []);
}
exports.quark_test_Test_run_Method = quark_test_Test_run_Method;
_qrt.util.inherits(quark_test_Test_run_Method, quark.reflect.Method);

function quark_test_Test_run_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_Test_run_Method.prototype.__init_fields__ = quark_test_Test_run_Method__init_fields__;

function quark_test_Test_run_Method_invoke(object, args) {
    var obj = object;
    (obj).run();
    return null;
}
quark_test_Test_run_Method.prototype.invoke = quark_test_Test_run_Method_invoke;

function quark_test_Test_run_Method__getClass() {
    return null;
}
quark_test_Test_run_Method.prototype._getClass = quark_test_Test_run_Method__getClass;

function quark_test_Test_run_Method__getField(name) {
    return null;
}
quark_test_Test_run_Method.prototype._getField = quark_test_Test_run_Method__getField;

function quark_test_Test_run_Method__setField(name, value) {}
quark_test_Test_run_Method.prototype._setField = quark_test_Test_run_Method__setField;

// CLASS quark_test_Test

function quark_test_Test() {
    quark_test_Test.super_.call(this, "quark.test.Test");
    (this).name = "quark.test.Test";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.TLS<quark.test.Test>", "ctx"), new quark.reflect.Field("quark.String", "name"), new quark.reflect.Field("quark.int", "checks"), new quark.reflect.Field("quark.List<quark.String>", "failures")];
    (this).methods = [new quark_test_Test_current_Method(), new quark_test_Test_match_Method(), new quark_test_Test_start_Method(), new quark_test_Test_stop_Method(), new quark_test_Test_check_Method(), new quark_test_Test_fail_Method(), new quark_test_Test_run_Method()];
}
exports.quark_test_Test = quark_test_Test;
_qrt.util.inherits(quark_test_Test, quark.reflect.Class);

function quark_test_Test__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_test_Test.prototype.__init_fields__ = quark_test_Test__init_fields__;
quark_test_Test.singleton = new quark_test_Test();
function quark_test_Test_construct(args) {
    return new quark.test.Test((args)[0]);
}
quark_test_Test.prototype.construct = quark_test_Test_construct;

function quark_test_Test__getClass() {
    return null;
}
quark_test_Test.prototype._getClass = quark_test_Test__getClass;

function quark_test_Test__getField(name) {
    return null;
}
quark_test_Test.prototype._getField = quark_test_Test__getField;

function quark_test_Test__setField(name, value) {}
quark_test_Test.prototype._setField = quark_test_Test__setField;


// CLASS quark_test_MethodTest_run_Method

function quark_test_MethodTest_run_Method() {
    quark_test_MethodTest_run_Method.super_.call(this, "quark.void", "run", []);
}
exports.quark_test_MethodTest_run_Method = quark_test_MethodTest_run_Method;
_qrt.util.inherits(quark_test_MethodTest_run_Method, quark.reflect.Method);

function quark_test_MethodTest_run_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_MethodTest_run_Method.prototype.__init_fields__ = quark_test_MethodTest_run_Method__init_fields__;

function quark_test_MethodTest_run_Method_invoke(object, args) {
    var obj = object;
    (obj).run();
    return null;
}
quark_test_MethodTest_run_Method.prototype.invoke = quark_test_MethodTest_run_Method_invoke;

function quark_test_MethodTest_run_Method__getClass() {
    return null;
}
quark_test_MethodTest_run_Method.prototype._getClass = quark_test_MethodTest_run_Method__getClass;

function quark_test_MethodTest_run_Method__getField(name) {
    return null;
}
quark_test_MethodTest_run_Method.prototype._getField = quark_test_MethodTest_run_Method__getField;

function quark_test_MethodTest_run_Method__setField(name, value) {}
quark_test_MethodTest_run_Method.prototype._setField = quark_test_MethodTest_run_Method__setField;

// CLASS quark_test_MethodTest_current_Method

function quark_test_MethodTest_current_Method() {
    quark_test_MethodTest_current_Method.super_.call(this, "quark.test.Test", "current", []);
}
exports.quark_test_MethodTest_current_Method = quark_test_MethodTest_current_Method;
_qrt.util.inherits(quark_test_MethodTest_current_Method, quark.reflect.Method);

function quark_test_MethodTest_current_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_MethodTest_current_Method.prototype.__init_fields__ = quark_test_MethodTest_current_Method__init_fields__;

function quark_test_MethodTest_current_Method_invoke(object, args) {
    var obj = object;
    return quark.test.Test.current();
}
quark_test_MethodTest_current_Method.prototype.invoke = quark_test_MethodTest_current_Method_invoke;

function quark_test_MethodTest_current_Method__getClass() {
    return null;
}
quark_test_MethodTest_current_Method.prototype._getClass = quark_test_MethodTest_current_Method__getClass;

function quark_test_MethodTest_current_Method__getField(name) {
    return null;
}
quark_test_MethodTest_current_Method.prototype._getField = quark_test_MethodTest_current_Method__getField;

function quark_test_MethodTest_current_Method__setField(name, value) {}
quark_test_MethodTest_current_Method.prototype._setField = quark_test_MethodTest_current_Method__setField;

// CLASS quark_test_MethodTest_match_Method

function quark_test_MethodTest_match_Method() {
    quark_test_MethodTest_match_Method.super_.call(this, "quark.bool", "match", ["quark.List<quark.String>"]);
}
exports.quark_test_MethodTest_match_Method = quark_test_MethodTest_match_Method;
_qrt.util.inherits(quark_test_MethodTest_match_Method, quark.reflect.Method);

function quark_test_MethodTest_match_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_MethodTest_match_Method.prototype.__init_fields__ = quark_test_MethodTest_match_Method__init_fields__;

function quark_test_MethodTest_match_Method_invoke(object, args) {
    var obj = object;
    return (obj).match((args)[0]);
}
quark_test_MethodTest_match_Method.prototype.invoke = quark_test_MethodTest_match_Method_invoke;

function quark_test_MethodTest_match_Method__getClass() {
    return null;
}
quark_test_MethodTest_match_Method.prototype._getClass = quark_test_MethodTest_match_Method__getClass;

function quark_test_MethodTest_match_Method__getField(name) {
    return null;
}
quark_test_MethodTest_match_Method.prototype._getField = quark_test_MethodTest_match_Method__getField;

function quark_test_MethodTest_match_Method__setField(name, value) {}
quark_test_MethodTest_match_Method.prototype._setField = quark_test_MethodTest_match_Method__setField;

// CLASS quark_test_MethodTest_start_Method

function quark_test_MethodTest_start_Method() {
    quark_test_MethodTest_start_Method.super_.call(this, "quark.void", "start", []);
}
exports.quark_test_MethodTest_start_Method = quark_test_MethodTest_start_Method;
_qrt.util.inherits(quark_test_MethodTest_start_Method, quark.reflect.Method);

function quark_test_MethodTest_start_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_MethodTest_start_Method.prototype.__init_fields__ = quark_test_MethodTest_start_Method__init_fields__;

function quark_test_MethodTest_start_Method_invoke(object, args) {
    var obj = object;
    (obj).start();
    return null;
}
quark_test_MethodTest_start_Method.prototype.invoke = quark_test_MethodTest_start_Method_invoke;

function quark_test_MethodTest_start_Method__getClass() {
    return null;
}
quark_test_MethodTest_start_Method.prototype._getClass = quark_test_MethodTest_start_Method__getClass;

function quark_test_MethodTest_start_Method__getField(name) {
    return null;
}
quark_test_MethodTest_start_Method.prototype._getField = quark_test_MethodTest_start_Method__getField;

function quark_test_MethodTest_start_Method__setField(name, value) {}
quark_test_MethodTest_start_Method.prototype._setField = quark_test_MethodTest_start_Method__setField;

// CLASS quark_test_MethodTest_stop_Method

function quark_test_MethodTest_stop_Method() {
    quark_test_MethodTest_stop_Method.super_.call(this, "quark.void", "stop", []);
}
exports.quark_test_MethodTest_stop_Method = quark_test_MethodTest_stop_Method;
_qrt.util.inherits(quark_test_MethodTest_stop_Method, quark.reflect.Method);

function quark_test_MethodTest_stop_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_MethodTest_stop_Method.prototype.__init_fields__ = quark_test_MethodTest_stop_Method__init_fields__;

function quark_test_MethodTest_stop_Method_invoke(object, args) {
    var obj = object;
    (obj).stop();
    return null;
}
quark_test_MethodTest_stop_Method.prototype.invoke = quark_test_MethodTest_stop_Method_invoke;

function quark_test_MethodTest_stop_Method__getClass() {
    return null;
}
quark_test_MethodTest_stop_Method.prototype._getClass = quark_test_MethodTest_stop_Method__getClass;

function quark_test_MethodTest_stop_Method__getField(name) {
    return null;
}
quark_test_MethodTest_stop_Method.prototype._getField = quark_test_MethodTest_stop_Method__getField;

function quark_test_MethodTest_stop_Method__setField(name, value) {}
quark_test_MethodTest_stop_Method.prototype._setField = quark_test_MethodTest_stop_Method__setField;

// CLASS quark_test_MethodTest_check_Method

function quark_test_MethodTest_check_Method() {
    quark_test_MethodTest_check_Method.super_.call(this, "quark.bool", "check", ["quark.bool", "quark.String"]);
}
exports.quark_test_MethodTest_check_Method = quark_test_MethodTest_check_Method;
_qrt.util.inherits(quark_test_MethodTest_check_Method, quark.reflect.Method);

function quark_test_MethodTest_check_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_MethodTest_check_Method.prototype.__init_fields__ = quark_test_MethodTest_check_Method__init_fields__;

function quark_test_MethodTest_check_Method_invoke(object, args) {
    var obj = object;
    return (obj).check((args)[0], (args)[1]);
}
quark_test_MethodTest_check_Method.prototype.invoke = quark_test_MethodTest_check_Method_invoke;

function quark_test_MethodTest_check_Method__getClass() {
    return null;
}
quark_test_MethodTest_check_Method.prototype._getClass = quark_test_MethodTest_check_Method__getClass;

function quark_test_MethodTest_check_Method__getField(name) {
    return null;
}
quark_test_MethodTest_check_Method.prototype._getField = quark_test_MethodTest_check_Method__getField;

function quark_test_MethodTest_check_Method__setField(name, value) {}
quark_test_MethodTest_check_Method.prototype._setField = quark_test_MethodTest_check_Method__setField;

// CLASS quark_test_MethodTest_fail_Method

function quark_test_MethodTest_fail_Method() {
    quark_test_MethodTest_fail_Method.super_.call(this, "quark.void", "fail", ["quark.String"]);
}
exports.quark_test_MethodTest_fail_Method = quark_test_MethodTest_fail_Method;
_qrt.util.inherits(quark_test_MethodTest_fail_Method, quark.reflect.Method);

function quark_test_MethodTest_fail_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_MethodTest_fail_Method.prototype.__init_fields__ = quark_test_MethodTest_fail_Method__init_fields__;

function quark_test_MethodTest_fail_Method_invoke(object, args) {
    var obj = object;
    (obj).fail((args)[0]);
    return null;
}
quark_test_MethodTest_fail_Method.prototype.invoke = quark_test_MethodTest_fail_Method_invoke;

function quark_test_MethodTest_fail_Method__getClass() {
    return null;
}
quark_test_MethodTest_fail_Method.prototype._getClass = quark_test_MethodTest_fail_Method__getClass;

function quark_test_MethodTest_fail_Method__getField(name) {
    return null;
}
quark_test_MethodTest_fail_Method.prototype._getField = quark_test_MethodTest_fail_Method__getField;

function quark_test_MethodTest_fail_Method__setField(name, value) {}
quark_test_MethodTest_fail_Method.prototype._setField = quark_test_MethodTest_fail_Method__setField;

// CLASS quark_test_MethodTest

function quark_test_MethodTest() {
    quark_test_MethodTest.super_.call(this, "quark.test.MethodTest");
    (this).name = "quark.test.MethodTest";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.TLS<quark.test.Test>", "ctx"), new quark.reflect.Field("quark.String", "name"), new quark.reflect.Field("quark.int", "checks"), new quark.reflect.Field("quark.List<quark.String>", "failures"), new quark.reflect.Field("quark.reflect.Class", "klass"), new quark.reflect.Field("quark.reflect.Method", "method")];
    (this).methods = [new quark_test_MethodTest_run_Method(), new quark_test_MethodTest_current_Method(), new quark_test_MethodTest_match_Method(), new quark_test_MethodTest_start_Method(), new quark_test_MethodTest_stop_Method(), new quark_test_MethodTest_check_Method(), new quark_test_MethodTest_fail_Method()];
}
exports.quark_test_MethodTest = quark_test_MethodTest;
_qrt.util.inherits(quark_test_MethodTest, quark.reflect.Class);

function quark_test_MethodTest__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_test_MethodTest.prototype.__init_fields__ = quark_test_MethodTest__init_fields__;
quark_test_MethodTest.singleton = new quark_test_MethodTest();
function quark_test_MethodTest_construct(args) {
    return new quark.test.MethodTest((args)[0], (args)[1]);
}
quark_test_MethodTest.prototype.construct = quark_test_MethodTest_construct;

function quark_test_MethodTest__getClass() {
    return null;
}
quark_test_MethodTest.prototype._getClass = quark_test_MethodTest__getClass;

function quark_test_MethodTest__getField(name) {
    return null;
}
quark_test_MethodTest.prototype._getField = quark_test_MethodTest__getField;

function quark_test_MethodTest__setField(name, value) {}
quark_test_MethodTest.prototype._setField = quark_test_MethodTest__setField;


// CLASS quark_test_Harness_collect_Method

function quark_test_Harness_collect_Method() {
    quark_test_Harness_collect_Method.super_.call(this, "quark.void", "collect", ["quark.List<quark.String>"]);
}
exports.quark_test_Harness_collect_Method = quark_test_Harness_collect_Method;
_qrt.util.inherits(quark_test_Harness_collect_Method, quark.reflect.Method);

function quark_test_Harness_collect_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_Harness_collect_Method.prototype.__init_fields__ = quark_test_Harness_collect_Method__init_fields__;

function quark_test_Harness_collect_Method_invoke(object, args) {
    var obj = object;
    (obj).collect((args)[0]);
    return null;
}
quark_test_Harness_collect_Method.prototype.invoke = quark_test_Harness_collect_Method_invoke;

function quark_test_Harness_collect_Method__getClass() {
    return null;
}
quark_test_Harness_collect_Method.prototype._getClass = quark_test_Harness_collect_Method__getClass;

function quark_test_Harness_collect_Method__getField(name) {
    return null;
}
quark_test_Harness_collect_Method.prototype._getField = quark_test_Harness_collect_Method__getField;

function quark_test_Harness_collect_Method__setField(name, value) {}
quark_test_Harness_collect_Method.prototype._setField = quark_test_Harness_collect_Method__setField;

// CLASS quark_test_Harness_list_Method

function quark_test_Harness_list_Method() {
    quark_test_Harness_list_Method.super_.call(this, "quark.void", "list", []);
}
exports.quark_test_Harness_list_Method = quark_test_Harness_list_Method;
_qrt.util.inherits(quark_test_Harness_list_Method, quark.reflect.Method);

function quark_test_Harness_list_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_Harness_list_Method.prototype.__init_fields__ = quark_test_Harness_list_Method__init_fields__;

function quark_test_Harness_list_Method_invoke(object, args) {
    var obj = object;
    (obj).list();
    return null;
}
quark_test_Harness_list_Method.prototype.invoke = quark_test_Harness_list_Method_invoke;

function quark_test_Harness_list_Method__getClass() {
    return null;
}
quark_test_Harness_list_Method.prototype._getClass = quark_test_Harness_list_Method__getClass;

function quark_test_Harness_list_Method__getField(name) {
    return null;
}
quark_test_Harness_list_Method.prototype._getField = quark_test_Harness_list_Method__getField;

function quark_test_Harness_list_Method__setField(name, value) {}
quark_test_Harness_list_Method.prototype._setField = quark_test_Harness_list_Method__setField;

// CLASS quark_test_Harness_run_Method

function quark_test_Harness_run_Method() {
    quark_test_Harness_run_Method.super_.call(this, "quark.void", "run", []);
}
exports.quark_test_Harness_run_Method = quark_test_Harness_run_Method;
_qrt.util.inherits(quark_test_Harness_run_Method, quark.reflect.Method);

function quark_test_Harness_run_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_test_Harness_run_Method.prototype.__init_fields__ = quark_test_Harness_run_Method__init_fields__;

function quark_test_Harness_run_Method_invoke(object, args) {
    var obj = object;
    (obj).run();
    return null;
}
quark_test_Harness_run_Method.prototype.invoke = quark_test_Harness_run_Method_invoke;

function quark_test_Harness_run_Method__getClass() {
    return null;
}
quark_test_Harness_run_Method.prototype._getClass = quark_test_Harness_run_Method__getClass;

function quark_test_Harness_run_Method__getField(name) {
    return null;
}
quark_test_Harness_run_Method.prototype._getField = quark_test_Harness_run_Method__getField;

function quark_test_Harness_run_Method__setField(name, value) {}
quark_test_Harness_run_Method.prototype._setField = quark_test_Harness_run_Method__setField;

// CLASS quark_test_Harness

function quark_test_Harness() {
    quark_test_Harness.super_.call(this, "quark.test.Harness");
    (this).name = "quark.test.Harness";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "pkg"), new quark.reflect.Field("quark.List<quark.test.Test>", "tests"), new quark.reflect.Field("quark.int", "filtered")];
    (this).methods = [new quark_test_Harness_collect_Method(), new quark_test_Harness_list_Method(), new quark_test_Harness_run_Method()];
}
exports.quark_test_Harness = quark_test_Harness;
_qrt.util.inherits(quark_test_Harness, quark.reflect.Class);

function quark_test_Harness__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_test_Harness.prototype.__init_fields__ = quark_test_Harness__init_fields__;
quark_test_Harness.singleton = new quark_test_Harness();
function quark_test_Harness_construct(args) {
    return new quark.test.Harness((args)[0]);
}
quark_test_Harness.prototype.construct = quark_test_Harness_construct;

function quark_test_Harness__getClass() {
    return null;
}
quark_test_Harness.prototype._getClass = quark_test_Harness__getClass;

function quark_test_Harness__getField(name) {
    return null;
}
quark_test_Harness.prototype._getField = quark_test_Harness__getField;

function quark_test_Harness__setField(name, value) {}
quark_test_Harness.prototype._setField = quark_test_Harness__setField;


// CLASS quark_URL

function quark_URL() {
    quark_URL.super_.call(this, "quark.URL");
    (this).name = "quark.URL";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.String", "scheme"), new quark.reflect.Field("quark.String", "host"), new quark.reflect.Field("quark.String", "port"), new quark.reflect.Field("quark.String", "path")];
    (this).methods = [];
}
exports.quark_URL = quark_URL;
_qrt.util.inherits(quark_URL, quark.reflect.Class);

function quark_URL__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_URL.prototype.__init_fields__ = quark_URL__init_fields__;
quark_URL.singleton = new quark_URL();
function quark_URL_construct(args) {
    return new quark.URL();
}
quark_URL.prototype.construct = quark_URL_construct;

function quark_URL__getClass() {
    return null;
}
quark_URL.prototype._getClass = quark_URL__getClass;

function quark_URL__getField(name) {
    return null;
}
quark_URL.prototype._getField = quark_URL__getField;

function quark_URL__setField(name, value) {}
quark_URL.prototype._setField = quark_URL__setField;


// CLASS quark_spi_RuntimeSpi_open_Method

function quark_spi_RuntimeSpi_open_Method() {
    quark_spi_RuntimeSpi_open_Method.super_.call(this, "quark.void", "open", ["quark.String", "quark.WSHandler"]);
}
exports.quark_spi_RuntimeSpi_open_Method = quark_spi_RuntimeSpi_open_Method;
_qrt.util.inherits(quark_spi_RuntimeSpi_open_Method, quark.reflect.Method);

function quark_spi_RuntimeSpi_open_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeSpi_open_Method.prototype.__init_fields__ = quark_spi_RuntimeSpi_open_Method__init_fields__;

function quark_spi_RuntimeSpi_open_Method_invoke(object, args) {
    var obj = object;
    (obj).open((args)[0], (args)[1]);
    return null;
}
quark_spi_RuntimeSpi_open_Method.prototype.invoke = quark_spi_RuntimeSpi_open_Method_invoke;

function quark_spi_RuntimeSpi_open_Method__getClass() {
    return null;
}
quark_spi_RuntimeSpi_open_Method.prototype._getClass = quark_spi_RuntimeSpi_open_Method__getClass;

function quark_spi_RuntimeSpi_open_Method__getField(name) {
    return null;
}
quark_spi_RuntimeSpi_open_Method.prototype._getField = quark_spi_RuntimeSpi_open_Method__getField;

function quark_spi_RuntimeSpi_open_Method__setField(name, value) {}
quark_spi_RuntimeSpi_open_Method.prototype._setField = quark_spi_RuntimeSpi_open_Method__setField;

// CLASS quark_spi_RuntimeSpi_request_Method

function quark_spi_RuntimeSpi_request_Method() {
    quark_spi_RuntimeSpi_request_Method.super_.call(this, "quark.void", "request", ["quark.HTTPRequest", "quark.HTTPHandler"]);
}
exports.quark_spi_RuntimeSpi_request_Method = quark_spi_RuntimeSpi_request_Method;
_qrt.util.inherits(quark_spi_RuntimeSpi_request_Method, quark.reflect.Method);

function quark_spi_RuntimeSpi_request_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeSpi_request_Method.prototype.__init_fields__ = quark_spi_RuntimeSpi_request_Method__init_fields__;

function quark_spi_RuntimeSpi_request_Method_invoke(object, args) {
    var obj = object;
    (obj).request((args)[0], (args)[1]);
    return null;
}
quark_spi_RuntimeSpi_request_Method.prototype.invoke = quark_spi_RuntimeSpi_request_Method_invoke;

function quark_spi_RuntimeSpi_request_Method__getClass() {
    return null;
}
quark_spi_RuntimeSpi_request_Method.prototype._getClass = quark_spi_RuntimeSpi_request_Method__getClass;

function quark_spi_RuntimeSpi_request_Method__getField(name) {
    return null;
}
quark_spi_RuntimeSpi_request_Method.prototype._getField = quark_spi_RuntimeSpi_request_Method__getField;

function quark_spi_RuntimeSpi_request_Method__setField(name, value) {}
quark_spi_RuntimeSpi_request_Method.prototype._setField = quark_spi_RuntimeSpi_request_Method__setField;

// CLASS quark_spi_RuntimeSpi_schedule_Method

function quark_spi_RuntimeSpi_schedule_Method() {
    quark_spi_RuntimeSpi_schedule_Method.super_.call(this, "quark.void", "schedule", ["quark.Task", "quark.float"]);
}
exports.quark_spi_RuntimeSpi_schedule_Method = quark_spi_RuntimeSpi_schedule_Method;
_qrt.util.inherits(quark_spi_RuntimeSpi_schedule_Method, quark.reflect.Method);

function quark_spi_RuntimeSpi_schedule_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeSpi_schedule_Method.prototype.__init_fields__ = quark_spi_RuntimeSpi_schedule_Method__init_fields__;

function quark_spi_RuntimeSpi_schedule_Method_invoke(object, args) {
    var obj = object;
    (obj).schedule((args)[0], (args)[1]);
    return null;
}
quark_spi_RuntimeSpi_schedule_Method.prototype.invoke = quark_spi_RuntimeSpi_schedule_Method_invoke;

function quark_spi_RuntimeSpi_schedule_Method__getClass() {
    return null;
}
quark_spi_RuntimeSpi_schedule_Method.prototype._getClass = quark_spi_RuntimeSpi_schedule_Method__getClass;

function quark_spi_RuntimeSpi_schedule_Method__getField(name) {
    return null;
}
quark_spi_RuntimeSpi_schedule_Method.prototype._getField = quark_spi_RuntimeSpi_schedule_Method__getField;

function quark_spi_RuntimeSpi_schedule_Method__setField(name, value) {}
quark_spi_RuntimeSpi_schedule_Method.prototype._setField = quark_spi_RuntimeSpi_schedule_Method__setField;

// CLASS quark_spi_RuntimeSpi_codec_Method

function quark_spi_RuntimeSpi_codec_Method() {
    quark_spi_RuntimeSpi_codec_Method.super_.call(this, "quark.Codec", "codec", []);
}
exports.quark_spi_RuntimeSpi_codec_Method = quark_spi_RuntimeSpi_codec_Method;
_qrt.util.inherits(quark_spi_RuntimeSpi_codec_Method, quark.reflect.Method);

function quark_spi_RuntimeSpi_codec_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeSpi_codec_Method.prototype.__init_fields__ = quark_spi_RuntimeSpi_codec_Method__init_fields__;

function quark_spi_RuntimeSpi_codec_Method_invoke(object, args) {
    var obj = object;
    return (obj).codec();
}
quark_spi_RuntimeSpi_codec_Method.prototype.invoke = quark_spi_RuntimeSpi_codec_Method_invoke;

function quark_spi_RuntimeSpi_codec_Method__getClass() {
    return null;
}
quark_spi_RuntimeSpi_codec_Method.prototype._getClass = quark_spi_RuntimeSpi_codec_Method__getClass;

function quark_spi_RuntimeSpi_codec_Method__getField(name) {
    return null;
}
quark_spi_RuntimeSpi_codec_Method.prototype._getField = quark_spi_RuntimeSpi_codec_Method__getField;

function quark_spi_RuntimeSpi_codec_Method__setField(name, value) {}
quark_spi_RuntimeSpi_codec_Method.prototype._setField = quark_spi_RuntimeSpi_codec_Method__setField;

// CLASS quark_spi_RuntimeSpi_serveHTTP_Method

function quark_spi_RuntimeSpi_serveHTTP_Method() {
    quark_spi_RuntimeSpi_serveHTTP_Method.super_.call(this, "quark.void", "serveHTTP", ["quark.String", "quark.HTTPServlet"]);
}
exports.quark_spi_RuntimeSpi_serveHTTP_Method = quark_spi_RuntimeSpi_serveHTTP_Method;
_qrt.util.inherits(quark_spi_RuntimeSpi_serveHTTP_Method, quark.reflect.Method);

function quark_spi_RuntimeSpi_serveHTTP_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeSpi_serveHTTP_Method.prototype.__init_fields__ = quark_spi_RuntimeSpi_serveHTTP_Method__init_fields__;

function quark_spi_RuntimeSpi_serveHTTP_Method_invoke(object, args) {
    var obj = object;
    (obj).serveHTTP((args)[0], (args)[1]);
    return null;
}
quark_spi_RuntimeSpi_serveHTTP_Method.prototype.invoke = quark_spi_RuntimeSpi_serveHTTP_Method_invoke;

function quark_spi_RuntimeSpi_serveHTTP_Method__getClass() {
    return null;
}
quark_spi_RuntimeSpi_serveHTTP_Method.prototype._getClass = quark_spi_RuntimeSpi_serveHTTP_Method__getClass;

function quark_spi_RuntimeSpi_serveHTTP_Method__getField(name) {
    return null;
}
quark_spi_RuntimeSpi_serveHTTP_Method.prototype._getField = quark_spi_RuntimeSpi_serveHTTP_Method__getField;

function quark_spi_RuntimeSpi_serveHTTP_Method__setField(name, value) {}
quark_spi_RuntimeSpi_serveHTTP_Method.prototype._setField = quark_spi_RuntimeSpi_serveHTTP_Method__setField;

// CLASS quark_spi_RuntimeSpi_serveWS_Method

function quark_spi_RuntimeSpi_serveWS_Method() {
    quark_spi_RuntimeSpi_serveWS_Method.super_.call(this, "quark.void", "serveWS", ["quark.String", "quark.WSServlet"]);
}
exports.quark_spi_RuntimeSpi_serveWS_Method = quark_spi_RuntimeSpi_serveWS_Method;
_qrt.util.inherits(quark_spi_RuntimeSpi_serveWS_Method, quark.reflect.Method);

function quark_spi_RuntimeSpi_serveWS_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeSpi_serveWS_Method.prototype.__init_fields__ = quark_spi_RuntimeSpi_serveWS_Method__init_fields__;

function quark_spi_RuntimeSpi_serveWS_Method_invoke(object, args) {
    var obj = object;
    (obj).serveWS((args)[0], (args)[1]);
    return null;
}
quark_spi_RuntimeSpi_serveWS_Method.prototype.invoke = quark_spi_RuntimeSpi_serveWS_Method_invoke;

function quark_spi_RuntimeSpi_serveWS_Method__getClass() {
    return null;
}
quark_spi_RuntimeSpi_serveWS_Method.prototype._getClass = quark_spi_RuntimeSpi_serveWS_Method__getClass;

function quark_spi_RuntimeSpi_serveWS_Method__getField(name) {
    return null;
}
quark_spi_RuntimeSpi_serveWS_Method.prototype._getField = quark_spi_RuntimeSpi_serveWS_Method__getField;

function quark_spi_RuntimeSpi_serveWS_Method__setField(name, value) {}
quark_spi_RuntimeSpi_serveWS_Method.prototype._setField = quark_spi_RuntimeSpi_serveWS_Method__setField;

// CLASS quark_spi_RuntimeSpi_respond_Method

function quark_spi_RuntimeSpi_respond_Method() {
    quark_spi_RuntimeSpi_respond_Method.super_.call(this, "quark.void", "respond", ["quark.HTTPRequest", "quark.HTTPResponse"]);
}
exports.quark_spi_RuntimeSpi_respond_Method = quark_spi_RuntimeSpi_respond_Method;
_qrt.util.inherits(quark_spi_RuntimeSpi_respond_Method, quark.reflect.Method);

function quark_spi_RuntimeSpi_respond_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeSpi_respond_Method.prototype.__init_fields__ = quark_spi_RuntimeSpi_respond_Method__init_fields__;

function quark_spi_RuntimeSpi_respond_Method_invoke(object, args) {
    var obj = object;
    (obj).respond((args)[0], (args)[1]);
    return null;
}
quark_spi_RuntimeSpi_respond_Method.prototype.invoke = quark_spi_RuntimeSpi_respond_Method_invoke;

function quark_spi_RuntimeSpi_respond_Method__getClass() {
    return null;
}
quark_spi_RuntimeSpi_respond_Method.prototype._getClass = quark_spi_RuntimeSpi_respond_Method__getClass;

function quark_spi_RuntimeSpi_respond_Method__getField(name) {
    return null;
}
quark_spi_RuntimeSpi_respond_Method.prototype._getField = quark_spi_RuntimeSpi_respond_Method__getField;

function quark_spi_RuntimeSpi_respond_Method__setField(name, value) {}
quark_spi_RuntimeSpi_respond_Method.prototype._setField = quark_spi_RuntimeSpi_respond_Method__setField;

// CLASS quark_spi_RuntimeSpi_fail_Method

function quark_spi_RuntimeSpi_fail_Method() {
    quark_spi_RuntimeSpi_fail_Method.super_.call(this, "quark.void", "fail", ["quark.String"]);
}
exports.quark_spi_RuntimeSpi_fail_Method = quark_spi_RuntimeSpi_fail_Method;
_qrt.util.inherits(quark_spi_RuntimeSpi_fail_Method, quark.reflect.Method);

function quark_spi_RuntimeSpi_fail_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeSpi_fail_Method.prototype.__init_fields__ = quark_spi_RuntimeSpi_fail_Method__init_fields__;

function quark_spi_RuntimeSpi_fail_Method_invoke(object, args) {
    var obj = object;
    (obj).fail((args)[0]);
    return null;
}
quark_spi_RuntimeSpi_fail_Method.prototype.invoke = quark_spi_RuntimeSpi_fail_Method_invoke;

function quark_spi_RuntimeSpi_fail_Method__getClass() {
    return null;
}
quark_spi_RuntimeSpi_fail_Method.prototype._getClass = quark_spi_RuntimeSpi_fail_Method__getClass;

function quark_spi_RuntimeSpi_fail_Method__getField(name) {
    return null;
}
quark_spi_RuntimeSpi_fail_Method.prototype._getField = quark_spi_RuntimeSpi_fail_Method__getField;

function quark_spi_RuntimeSpi_fail_Method__setField(name, value) {}
quark_spi_RuntimeSpi_fail_Method.prototype._setField = quark_spi_RuntimeSpi_fail_Method__setField;

// CLASS quark_spi_RuntimeSpi_logger_Method

function quark_spi_RuntimeSpi_logger_Method() {
    quark_spi_RuntimeSpi_logger_Method.super_.call(this, "quark.Logger", "logger", ["quark.String"]);
}
exports.quark_spi_RuntimeSpi_logger_Method = quark_spi_RuntimeSpi_logger_Method;
_qrt.util.inherits(quark_spi_RuntimeSpi_logger_Method, quark.reflect.Method);

function quark_spi_RuntimeSpi_logger_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeSpi_logger_Method.prototype.__init_fields__ = quark_spi_RuntimeSpi_logger_Method__init_fields__;

function quark_spi_RuntimeSpi_logger_Method_invoke(object, args) {
    var obj = object;
    return (obj).logger((args)[0]);
}
quark_spi_RuntimeSpi_logger_Method.prototype.invoke = quark_spi_RuntimeSpi_logger_Method_invoke;

function quark_spi_RuntimeSpi_logger_Method__getClass() {
    return null;
}
quark_spi_RuntimeSpi_logger_Method.prototype._getClass = quark_spi_RuntimeSpi_logger_Method__getClass;

function quark_spi_RuntimeSpi_logger_Method__getField(name) {
    return null;
}
quark_spi_RuntimeSpi_logger_Method.prototype._getField = quark_spi_RuntimeSpi_logger_Method__getField;

function quark_spi_RuntimeSpi_logger_Method__setField(name, value) {}
quark_spi_RuntimeSpi_logger_Method.prototype._setField = quark_spi_RuntimeSpi_logger_Method__setField;

// CLASS quark_spi_RuntimeSpi

function quark_spi_RuntimeSpi() {
    quark_spi_RuntimeSpi.super_.call(this, "quark.spi.RuntimeSpi");
    (this).name = "quark.spi.RuntimeSpi";
    (this).parameters = [];
    (this).fields = [];
    (this).methods = [new quark_spi_RuntimeSpi_open_Method(), new quark_spi_RuntimeSpi_request_Method(), new quark_spi_RuntimeSpi_schedule_Method(), new quark_spi_RuntimeSpi_codec_Method(), new quark_spi_RuntimeSpi_serveHTTP_Method(), new quark_spi_RuntimeSpi_serveWS_Method(), new quark_spi_RuntimeSpi_respond_Method(), new quark_spi_RuntimeSpi_fail_Method(), new quark_spi_RuntimeSpi_logger_Method()];
}
exports.quark_spi_RuntimeSpi = quark_spi_RuntimeSpi;
_qrt.util.inherits(quark_spi_RuntimeSpi, quark.reflect.Class);

function quark_spi_RuntimeSpi__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeSpi.prototype.__init_fields__ = quark_spi_RuntimeSpi__init_fields__;
quark_spi_RuntimeSpi.singleton = new quark_spi_RuntimeSpi();
function quark_spi_RuntimeSpi_construct(args) {
    return null;
}
quark_spi_RuntimeSpi.prototype.construct = quark_spi_RuntimeSpi_construct;

function quark_spi_RuntimeSpi__getClass() {
    return null;
}
quark_spi_RuntimeSpi.prototype._getClass = quark_spi_RuntimeSpi__getClass;

function quark_spi_RuntimeSpi__getField(name) {
    return null;
}
quark_spi_RuntimeSpi.prototype._getField = quark_spi_RuntimeSpi__getField;

function quark_spi_RuntimeSpi__setField(name, value) {}
quark_spi_RuntimeSpi.prototype._setField = quark_spi_RuntimeSpi__setField;


// CLASS quark_spi_RuntimeFactory_makeRuntime_Method

function quark_spi_RuntimeFactory_makeRuntime_Method() {
    quark_spi_RuntimeFactory_makeRuntime_Method.super_.call(this, "quark.Runtime", "makeRuntime", []);
}
exports.quark_spi_RuntimeFactory_makeRuntime_Method = quark_spi_RuntimeFactory_makeRuntime_Method;
_qrt.util.inherits(quark_spi_RuntimeFactory_makeRuntime_Method, quark.reflect.Method);

function quark_spi_RuntimeFactory_makeRuntime_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeFactory_makeRuntime_Method.prototype.__init_fields__ = quark_spi_RuntimeFactory_makeRuntime_Method__init_fields__;

function quark_spi_RuntimeFactory_makeRuntime_Method_invoke(object, args) {
    var obj = object;
    return (obj).makeRuntime();
}
quark_spi_RuntimeFactory_makeRuntime_Method.prototype.invoke = quark_spi_RuntimeFactory_makeRuntime_Method_invoke;

function quark_spi_RuntimeFactory_makeRuntime_Method__getClass() {
    return null;
}
quark_spi_RuntimeFactory_makeRuntime_Method.prototype._getClass = quark_spi_RuntimeFactory_makeRuntime_Method__getClass;

function quark_spi_RuntimeFactory_makeRuntime_Method__getField(name) {
    return null;
}
quark_spi_RuntimeFactory_makeRuntime_Method.prototype._getField = quark_spi_RuntimeFactory_makeRuntime_Method__getField;

function quark_spi_RuntimeFactory_makeRuntime_Method__setField(name, value) {}
quark_spi_RuntimeFactory_makeRuntime_Method.prototype._setField = quark_spi_RuntimeFactory_makeRuntime_Method__setField;

// CLASS quark_spi_RuntimeFactory

function quark_spi_RuntimeFactory() {
    quark_spi_RuntimeFactory.super_.call(this, "quark.spi.RuntimeFactory");
    (this).name = "quark.spi.RuntimeFactory";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi.RuntimeFactory", "factory"), new quark.reflect.Field("quark.bool", "enable_tracing")];
    (this).methods = [new quark_spi_RuntimeFactory_makeRuntime_Method()];
}
exports.quark_spi_RuntimeFactory = quark_spi_RuntimeFactory;
_qrt.util.inherits(quark_spi_RuntimeFactory, quark.reflect.Class);

function quark_spi_RuntimeFactory__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_RuntimeFactory.prototype.__init_fields__ = quark_spi_RuntimeFactory__init_fields__;
quark_spi_RuntimeFactory.singleton = new quark_spi_RuntimeFactory();
function quark_spi_RuntimeFactory_construct(args) {
    return new quark.spi.RuntimeFactory();
}
quark_spi_RuntimeFactory.prototype.construct = quark_spi_RuntimeFactory_construct;

function quark_spi_RuntimeFactory__getClass() {
    return null;
}
quark_spi_RuntimeFactory.prototype._getClass = quark_spi_RuntimeFactory__getClass;

function quark_spi_RuntimeFactory__getField(name) {
    return null;
}
quark_spi_RuntimeFactory.prototype._getField = quark_spi_RuntimeFactory__getField;

function quark_spi_RuntimeFactory__setField(name, value) {}
quark_spi_RuntimeFactory.prototype._setField = quark_spi_RuntimeFactory__setField;


// CLASS quark_spi_api_ServletProxy_onServletInit_Method

function quark_spi_api_ServletProxy_onServletInit_Method() {
    quark_spi_api_ServletProxy_onServletInit_Method.super_.call(this, "quark.void", "onServletInit", ["quark.String", "quark.Runtime"]);
}
exports.quark_spi_api_ServletProxy_onServletInit_Method = quark_spi_api_ServletProxy_onServletInit_Method;
_qrt.util.inherits(quark_spi_api_ServletProxy_onServletInit_Method, quark.reflect.Method);

function quark_spi_api_ServletProxy_onServletInit_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_ServletProxy_onServletInit_Method.prototype.__init_fields__ = quark_spi_api_ServletProxy_onServletInit_Method__init_fields__;

function quark_spi_api_ServletProxy_onServletInit_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletInit((args)[0], (args)[1]);
    return null;
}
quark_spi_api_ServletProxy_onServletInit_Method.prototype.invoke = quark_spi_api_ServletProxy_onServletInit_Method_invoke;

function quark_spi_api_ServletProxy_onServletInit_Method__getClass() {
    return null;
}
quark_spi_api_ServletProxy_onServletInit_Method.prototype._getClass = quark_spi_api_ServletProxy_onServletInit_Method__getClass;

function quark_spi_api_ServletProxy_onServletInit_Method__getField(name) {
    return null;
}
quark_spi_api_ServletProxy_onServletInit_Method.prototype._getField = quark_spi_api_ServletProxy_onServletInit_Method__getField;

function quark_spi_api_ServletProxy_onServletInit_Method__setField(name, value) {}
quark_spi_api_ServletProxy_onServletInit_Method.prototype._setField = quark_spi_api_ServletProxy_onServletInit_Method__setField;

// CLASS quark_spi_api_ServletProxy_onServletError_Method

function quark_spi_api_ServletProxy_onServletError_Method() {
    quark_spi_api_ServletProxy_onServletError_Method.super_.call(this, "quark.void", "onServletError", ["quark.String", "quark.String"]);
}
exports.quark_spi_api_ServletProxy_onServletError_Method = quark_spi_api_ServletProxy_onServletError_Method;
_qrt.util.inherits(quark_spi_api_ServletProxy_onServletError_Method, quark.reflect.Method);

function quark_spi_api_ServletProxy_onServletError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_ServletProxy_onServletError_Method.prototype.__init_fields__ = quark_spi_api_ServletProxy_onServletError_Method__init_fields__;

function quark_spi_api_ServletProxy_onServletError_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletError((args)[0], (args)[1]);
    return null;
}
quark_spi_api_ServletProxy_onServletError_Method.prototype.invoke = quark_spi_api_ServletProxy_onServletError_Method_invoke;

function quark_spi_api_ServletProxy_onServletError_Method__getClass() {
    return null;
}
quark_spi_api_ServletProxy_onServletError_Method.prototype._getClass = quark_spi_api_ServletProxy_onServletError_Method__getClass;

function quark_spi_api_ServletProxy_onServletError_Method__getField(name) {
    return null;
}
quark_spi_api_ServletProxy_onServletError_Method.prototype._getField = quark_spi_api_ServletProxy_onServletError_Method__getField;

function quark_spi_api_ServletProxy_onServletError_Method__setField(name, value) {}
quark_spi_api_ServletProxy_onServletError_Method.prototype._setField = quark_spi_api_ServletProxy_onServletError_Method__setField;

// CLASS quark_spi_api_ServletProxy_onServletEnd_Method

function quark_spi_api_ServletProxy_onServletEnd_Method() {
    quark_spi_api_ServletProxy_onServletEnd_Method.super_.call(this, "quark.void", "onServletEnd", ["quark.String"]);
}
exports.quark_spi_api_ServletProxy_onServletEnd_Method = quark_spi_api_ServletProxy_onServletEnd_Method;
_qrt.util.inherits(quark_spi_api_ServletProxy_onServletEnd_Method, quark.reflect.Method);

function quark_spi_api_ServletProxy_onServletEnd_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_ServletProxy_onServletEnd_Method.prototype.__init_fields__ = quark_spi_api_ServletProxy_onServletEnd_Method__init_fields__;

function quark_spi_api_ServletProxy_onServletEnd_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletEnd((args)[0]);
    return null;
}
quark_spi_api_ServletProxy_onServletEnd_Method.prototype.invoke = quark_spi_api_ServletProxy_onServletEnd_Method_invoke;

function quark_spi_api_ServletProxy_onServletEnd_Method__getClass() {
    return null;
}
quark_spi_api_ServletProxy_onServletEnd_Method.prototype._getClass = quark_spi_api_ServletProxy_onServletEnd_Method__getClass;

function quark_spi_api_ServletProxy_onServletEnd_Method__getField(name) {
    return null;
}
quark_spi_api_ServletProxy_onServletEnd_Method.prototype._getField = quark_spi_api_ServletProxy_onServletEnd_Method__getField;

function quark_spi_api_ServletProxy_onServletEnd_Method__setField(name, value) {}
quark_spi_api_ServletProxy_onServletEnd_Method.prototype._setField = quark_spi_api_ServletProxy_onServletEnd_Method__setField;

// CLASS quark_spi_api_ServletProxy

function quark_spi_api_ServletProxy() {
    quark_spi_api_ServletProxy.super_.call(this, "quark.spi_api.ServletProxy");
    (this).name = "quark.spi_api.ServletProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.Servlet", "servlet_impl"), new quark.reflect.Field("quark.Runtime", "real_runtime")];
    (this).methods = [new quark_spi_api_ServletProxy_onServletInit_Method(), new quark_spi_api_ServletProxy_onServletError_Method(), new quark_spi_api_ServletProxy_onServletEnd_Method()];
}
exports.quark_spi_api_ServletProxy = quark_spi_api_ServletProxy;
_qrt.util.inherits(quark_spi_api_ServletProxy, quark.reflect.Class);

function quark_spi_api_ServletProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_ServletProxy.prototype.__init_fields__ = quark_spi_api_ServletProxy__init_fields__;
quark_spi_api_ServletProxy.singleton = new quark_spi_api_ServletProxy();
function quark_spi_api_ServletProxy_construct(args) {
    return new quark.spi_api.ServletProxy((args)[0], (args)[1]);
}
quark_spi_api_ServletProxy.prototype.construct = quark_spi_api_ServletProxy_construct;

function quark_spi_api_ServletProxy__getClass() {
    return null;
}
quark_spi_api_ServletProxy.prototype._getClass = quark_spi_api_ServletProxy__getClass;

function quark_spi_api_ServletProxy__getField(name) {
    return null;
}
quark_spi_api_ServletProxy.prototype._getField = quark_spi_api_ServletProxy__getField;

function quark_spi_api_ServletProxy__setField(name, value) {}
quark_spi_api_ServletProxy.prototype._setField = quark_spi_api_ServletProxy__setField;


// CLASS quark_spi_api_HTTPServletProxy_onHTTPRequest_Method

function quark_spi_api_HTTPServletProxy_onHTTPRequest_Method() {
    quark_spi_api_HTTPServletProxy_onHTTPRequest_Method.super_.call(this, "quark.void", "onHTTPRequest", ["quark.HTTPRequest", "quark.HTTPResponse"]);
}
exports.quark_spi_api_HTTPServletProxy_onHTTPRequest_Method = quark_spi_api_HTTPServletProxy_onHTTPRequest_Method;
_qrt.util.inherits(quark_spi_api_HTTPServletProxy_onHTTPRequest_Method, quark.reflect.Method);

function quark_spi_api_HTTPServletProxy_onHTTPRequest_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_HTTPServletProxy_onHTTPRequest_Method.prototype.__init_fields__ = quark_spi_api_HTTPServletProxy_onHTTPRequest_Method__init_fields__;

function quark_spi_api_HTTPServletProxy_onHTTPRequest_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPRequest((args)[0], (args)[1]);
    return null;
}
quark_spi_api_HTTPServletProxy_onHTTPRequest_Method.prototype.invoke = quark_spi_api_HTTPServletProxy_onHTTPRequest_Method_invoke;

function quark_spi_api_HTTPServletProxy_onHTTPRequest_Method__getClass() {
    return null;
}
quark_spi_api_HTTPServletProxy_onHTTPRequest_Method.prototype._getClass = quark_spi_api_HTTPServletProxy_onHTTPRequest_Method__getClass;

function quark_spi_api_HTTPServletProxy_onHTTPRequest_Method__getField(name) {
    return null;
}
quark_spi_api_HTTPServletProxy_onHTTPRequest_Method.prototype._getField = quark_spi_api_HTTPServletProxy_onHTTPRequest_Method__getField;

function quark_spi_api_HTTPServletProxy_onHTTPRequest_Method__setField(name, value) {}
quark_spi_api_HTTPServletProxy_onHTTPRequest_Method.prototype._setField = quark_spi_api_HTTPServletProxy_onHTTPRequest_Method__setField;

// CLASS quark_spi_api_HTTPServletProxy_onServletInit_Method

function quark_spi_api_HTTPServletProxy_onServletInit_Method() {
    quark_spi_api_HTTPServletProxy_onServletInit_Method.super_.call(this, "quark.void", "onServletInit", ["quark.String", "quark.Runtime"]);
}
exports.quark_spi_api_HTTPServletProxy_onServletInit_Method = quark_spi_api_HTTPServletProxy_onServletInit_Method;
_qrt.util.inherits(quark_spi_api_HTTPServletProxy_onServletInit_Method, quark.reflect.Method);

function quark_spi_api_HTTPServletProxy_onServletInit_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_HTTPServletProxy_onServletInit_Method.prototype.__init_fields__ = quark_spi_api_HTTPServletProxy_onServletInit_Method__init_fields__;

function quark_spi_api_HTTPServletProxy_onServletInit_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletInit((args)[0], (args)[1]);
    return null;
}
quark_spi_api_HTTPServletProxy_onServletInit_Method.prototype.invoke = quark_spi_api_HTTPServletProxy_onServletInit_Method_invoke;

function quark_spi_api_HTTPServletProxy_onServletInit_Method__getClass() {
    return null;
}
quark_spi_api_HTTPServletProxy_onServletInit_Method.prototype._getClass = quark_spi_api_HTTPServletProxy_onServletInit_Method__getClass;

function quark_spi_api_HTTPServletProxy_onServletInit_Method__getField(name) {
    return null;
}
quark_spi_api_HTTPServletProxy_onServletInit_Method.prototype._getField = quark_spi_api_HTTPServletProxy_onServletInit_Method__getField;

function quark_spi_api_HTTPServletProxy_onServletInit_Method__setField(name, value) {}
quark_spi_api_HTTPServletProxy_onServletInit_Method.prototype._setField = quark_spi_api_HTTPServletProxy_onServletInit_Method__setField;

// CLASS quark_spi_api_HTTPServletProxy_onServletError_Method

function quark_spi_api_HTTPServletProxy_onServletError_Method() {
    quark_spi_api_HTTPServletProxy_onServletError_Method.super_.call(this, "quark.void", "onServletError", ["quark.String", "quark.String"]);
}
exports.quark_spi_api_HTTPServletProxy_onServletError_Method = quark_spi_api_HTTPServletProxy_onServletError_Method;
_qrt.util.inherits(quark_spi_api_HTTPServletProxy_onServletError_Method, quark.reflect.Method);

function quark_spi_api_HTTPServletProxy_onServletError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_HTTPServletProxy_onServletError_Method.prototype.__init_fields__ = quark_spi_api_HTTPServletProxy_onServletError_Method__init_fields__;

function quark_spi_api_HTTPServletProxy_onServletError_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletError((args)[0], (args)[1]);
    return null;
}
quark_spi_api_HTTPServletProxy_onServletError_Method.prototype.invoke = quark_spi_api_HTTPServletProxy_onServletError_Method_invoke;

function quark_spi_api_HTTPServletProxy_onServletError_Method__getClass() {
    return null;
}
quark_spi_api_HTTPServletProxy_onServletError_Method.prototype._getClass = quark_spi_api_HTTPServletProxy_onServletError_Method__getClass;

function quark_spi_api_HTTPServletProxy_onServletError_Method__getField(name) {
    return null;
}
quark_spi_api_HTTPServletProxy_onServletError_Method.prototype._getField = quark_spi_api_HTTPServletProxy_onServletError_Method__getField;

function quark_spi_api_HTTPServletProxy_onServletError_Method__setField(name, value) {}
quark_spi_api_HTTPServletProxy_onServletError_Method.prototype._setField = quark_spi_api_HTTPServletProxy_onServletError_Method__setField;

// CLASS quark_spi_api_HTTPServletProxy_onServletEnd_Method

function quark_spi_api_HTTPServletProxy_onServletEnd_Method() {
    quark_spi_api_HTTPServletProxy_onServletEnd_Method.super_.call(this, "quark.void", "onServletEnd", ["quark.String"]);
}
exports.quark_spi_api_HTTPServletProxy_onServletEnd_Method = quark_spi_api_HTTPServletProxy_onServletEnd_Method;
_qrt.util.inherits(quark_spi_api_HTTPServletProxy_onServletEnd_Method, quark.reflect.Method);

function quark_spi_api_HTTPServletProxy_onServletEnd_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_HTTPServletProxy_onServletEnd_Method.prototype.__init_fields__ = quark_spi_api_HTTPServletProxy_onServletEnd_Method__init_fields__;

function quark_spi_api_HTTPServletProxy_onServletEnd_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletEnd((args)[0]);
    return null;
}
quark_spi_api_HTTPServletProxy_onServletEnd_Method.prototype.invoke = quark_spi_api_HTTPServletProxy_onServletEnd_Method_invoke;

function quark_spi_api_HTTPServletProxy_onServletEnd_Method__getClass() {
    return null;
}
quark_spi_api_HTTPServletProxy_onServletEnd_Method.prototype._getClass = quark_spi_api_HTTPServletProxy_onServletEnd_Method__getClass;

function quark_spi_api_HTTPServletProxy_onServletEnd_Method__getField(name) {
    return null;
}
quark_spi_api_HTTPServletProxy_onServletEnd_Method.prototype._getField = quark_spi_api_HTTPServletProxy_onServletEnd_Method__getField;

function quark_spi_api_HTTPServletProxy_onServletEnd_Method__setField(name, value) {}
quark_spi_api_HTTPServletProxy_onServletEnd_Method.prototype._setField = quark_spi_api_HTTPServletProxy_onServletEnd_Method__setField;

// CLASS quark_spi_api_HTTPServletProxy_serveHTTP_Method

function quark_spi_api_HTTPServletProxy_serveHTTP_Method() {
    quark_spi_api_HTTPServletProxy_serveHTTP_Method.super_.call(this, "quark.void", "serveHTTP", ["quark.String"]);
}
exports.quark_spi_api_HTTPServletProxy_serveHTTP_Method = quark_spi_api_HTTPServletProxy_serveHTTP_Method;
_qrt.util.inherits(quark_spi_api_HTTPServletProxy_serveHTTP_Method, quark.reflect.Method);

function quark_spi_api_HTTPServletProxy_serveHTTP_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_HTTPServletProxy_serveHTTP_Method.prototype.__init_fields__ = quark_spi_api_HTTPServletProxy_serveHTTP_Method__init_fields__;

function quark_spi_api_HTTPServletProxy_serveHTTP_Method_invoke(object, args) {
    var obj = object;
    (obj).serveHTTP((args)[0]);
    return null;
}
quark_spi_api_HTTPServletProxy_serveHTTP_Method.prototype.invoke = quark_spi_api_HTTPServletProxy_serveHTTP_Method_invoke;

function quark_spi_api_HTTPServletProxy_serveHTTP_Method__getClass() {
    return null;
}
quark_spi_api_HTTPServletProxy_serveHTTP_Method.prototype._getClass = quark_spi_api_HTTPServletProxy_serveHTTP_Method__getClass;

function quark_spi_api_HTTPServletProxy_serveHTTP_Method__getField(name) {
    return null;
}
quark_spi_api_HTTPServletProxy_serveHTTP_Method.prototype._getField = quark_spi_api_HTTPServletProxy_serveHTTP_Method__getField;

function quark_spi_api_HTTPServletProxy_serveHTTP_Method__setField(name, value) {}
quark_spi_api_HTTPServletProxy_serveHTTP_Method.prototype._setField = quark_spi_api_HTTPServletProxy_serveHTTP_Method__setField;

// CLASS quark_spi_api_HTTPServletProxy

function quark_spi_api_HTTPServletProxy() {
    quark_spi_api_HTTPServletProxy.super_.call(this, "quark.spi_api.HTTPServletProxy");
    (this).name = "quark.spi_api.HTTPServletProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.Servlet", "servlet_impl"), new quark.reflect.Field("quark.Runtime", "real_runtime"), new quark.reflect.Field("quark.HTTPServlet", "http_servlet_impl")];
    (this).methods = [new quark_spi_api_HTTPServletProxy_onHTTPRequest_Method(), new quark_spi_api_HTTPServletProxy_onServletInit_Method(), new quark_spi_api_HTTPServletProxy_onServletError_Method(), new quark_spi_api_HTTPServletProxy_onServletEnd_Method(), new quark_spi_api_HTTPServletProxy_serveHTTP_Method()];
}
exports.quark_spi_api_HTTPServletProxy = quark_spi_api_HTTPServletProxy;
_qrt.util.inherits(quark_spi_api_HTTPServletProxy, quark.reflect.Class);

function quark_spi_api_HTTPServletProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_HTTPServletProxy.prototype.__init_fields__ = quark_spi_api_HTTPServletProxy__init_fields__;
quark_spi_api_HTTPServletProxy.singleton = new quark_spi_api_HTTPServletProxy();
function quark_spi_api_HTTPServletProxy_construct(args) {
    return new quark.spi_api.HTTPServletProxy((args)[0], (args)[1]);
}
quark_spi_api_HTTPServletProxy.prototype.construct = quark_spi_api_HTTPServletProxy_construct;

function quark_spi_api_HTTPServletProxy__getClass() {
    return null;
}
quark_spi_api_HTTPServletProxy.prototype._getClass = quark_spi_api_HTTPServletProxy__getClass;

function quark_spi_api_HTTPServletProxy__getField(name) {
    return null;
}
quark_spi_api_HTTPServletProxy.prototype._getField = quark_spi_api_HTTPServletProxy__getField;

function quark_spi_api_HTTPServletProxy__setField(name, value) {}
quark_spi_api_HTTPServletProxy.prototype._setField = quark_spi_api_HTTPServletProxy__setField;


// CLASS quark_spi_api_WSServletProxy_onWSConnect_Method

function quark_spi_api_WSServletProxy_onWSConnect_Method() {
    quark_spi_api_WSServletProxy_onWSConnect_Method.super_.call(this, "quark.WSHandler", "onWSConnect", ["quark.HTTPRequest"]);
}
exports.quark_spi_api_WSServletProxy_onWSConnect_Method = quark_spi_api_WSServletProxy_onWSConnect_Method;
_qrt.util.inherits(quark_spi_api_WSServletProxy_onWSConnect_Method, quark.reflect.Method);

function quark_spi_api_WSServletProxy_onWSConnect_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_WSServletProxy_onWSConnect_Method.prototype.__init_fields__ = quark_spi_api_WSServletProxy_onWSConnect_Method__init_fields__;

function quark_spi_api_WSServletProxy_onWSConnect_Method_invoke(object, args) {
    var obj = object;
    return (obj).onWSConnect((args)[0]);
}
quark_spi_api_WSServletProxy_onWSConnect_Method.prototype.invoke = quark_spi_api_WSServletProxy_onWSConnect_Method_invoke;

function quark_spi_api_WSServletProxy_onWSConnect_Method__getClass() {
    return null;
}
quark_spi_api_WSServletProxy_onWSConnect_Method.prototype._getClass = quark_spi_api_WSServletProxy_onWSConnect_Method__getClass;

function quark_spi_api_WSServletProxy_onWSConnect_Method__getField(name) {
    return null;
}
quark_spi_api_WSServletProxy_onWSConnect_Method.prototype._getField = quark_spi_api_WSServletProxy_onWSConnect_Method__getField;

function quark_spi_api_WSServletProxy_onWSConnect_Method__setField(name, value) {}
quark_spi_api_WSServletProxy_onWSConnect_Method.prototype._setField = quark_spi_api_WSServletProxy_onWSConnect_Method__setField;

// CLASS quark_spi_api_WSServletProxy_onServletInit_Method

function quark_spi_api_WSServletProxy_onServletInit_Method() {
    quark_spi_api_WSServletProxy_onServletInit_Method.super_.call(this, "quark.void", "onServletInit", ["quark.String", "quark.Runtime"]);
}
exports.quark_spi_api_WSServletProxy_onServletInit_Method = quark_spi_api_WSServletProxy_onServletInit_Method;
_qrt.util.inherits(quark_spi_api_WSServletProxy_onServletInit_Method, quark.reflect.Method);

function quark_spi_api_WSServletProxy_onServletInit_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_WSServletProxy_onServletInit_Method.prototype.__init_fields__ = quark_spi_api_WSServletProxy_onServletInit_Method__init_fields__;

function quark_spi_api_WSServletProxy_onServletInit_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletInit((args)[0], (args)[1]);
    return null;
}
quark_spi_api_WSServletProxy_onServletInit_Method.prototype.invoke = quark_spi_api_WSServletProxy_onServletInit_Method_invoke;

function quark_spi_api_WSServletProxy_onServletInit_Method__getClass() {
    return null;
}
quark_spi_api_WSServletProxy_onServletInit_Method.prototype._getClass = quark_spi_api_WSServletProxy_onServletInit_Method__getClass;

function quark_spi_api_WSServletProxy_onServletInit_Method__getField(name) {
    return null;
}
quark_spi_api_WSServletProxy_onServletInit_Method.prototype._getField = quark_spi_api_WSServletProxy_onServletInit_Method__getField;

function quark_spi_api_WSServletProxy_onServletInit_Method__setField(name, value) {}
quark_spi_api_WSServletProxy_onServletInit_Method.prototype._setField = quark_spi_api_WSServletProxy_onServletInit_Method__setField;

// CLASS quark_spi_api_WSServletProxy_onServletError_Method

function quark_spi_api_WSServletProxy_onServletError_Method() {
    quark_spi_api_WSServletProxy_onServletError_Method.super_.call(this, "quark.void", "onServletError", ["quark.String", "quark.String"]);
}
exports.quark_spi_api_WSServletProxy_onServletError_Method = quark_spi_api_WSServletProxy_onServletError_Method;
_qrt.util.inherits(quark_spi_api_WSServletProxy_onServletError_Method, quark.reflect.Method);

function quark_spi_api_WSServletProxy_onServletError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_WSServletProxy_onServletError_Method.prototype.__init_fields__ = quark_spi_api_WSServletProxy_onServletError_Method__init_fields__;

function quark_spi_api_WSServletProxy_onServletError_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletError((args)[0], (args)[1]);
    return null;
}
quark_spi_api_WSServletProxy_onServletError_Method.prototype.invoke = quark_spi_api_WSServletProxy_onServletError_Method_invoke;

function quark_spi_api_WSServletProxy_onServletError_Method__getClass() {
    return null;
}
quark_spi_api_WSServletProxy_onServletError_Method.prototype._getClass = quark_spi_api_WSServletProxy_onServletError_Method__getClass;

function quark_spi_api_WSServletProxy_onServletError_Method__getField(name) {
    return null;
}
quark_spi_api_WSServletProxy_onServletError_Method.prototype._getField = quark_spi_api_WSServletProxy_onServletError_Method__getField;

function quark_spi_api_WSServletProxy_onServletError_Method__setField(name, value) {}
quark_spi_api_WSServletProxy_onServletError_Method.prototype._setField = quark_spi_api_WSServletProxy_onServletError_Method__setField;

// CLASS quark_spi_api_WSServletProxy_onServletEnd_Method

function quark_spi_api_WSServletProxy_onServletEnd_Method() {
    quark_spi_api_WSServletProxy_onServletEnd_Method.super_.call(this, "quark.void", "onServletEnd", ["quark.String"]);
}
exports.quark_spi_api_WSServletProxy_onServletEnd_Method = quark_spi_api_WSServletProxy_onServletEnd_Method;
_qrt.util.inherits(quark_spi_api_WSServletProxy_onServletEnd_Method, quark.reflect.Method);

function quark_spi_api_WSServletProxy_onServletEnd_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_WSServletProxy_onServletEnd_Method.prototype.__init_fields__ = quark_spi_api_WSServletProxy_onServletEnd_Method__init_fields__;

function quark_spi_api_WSServletProxy_onServletEnd_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletEnd((args)[0]);
    return null;
}
quark_spi_api_WSServletProxy_onServletEnd_Method.prototype.invoke = quark_spi_api_WSServletProxy_onServletEnd_Method_invoke;

function quark_spi_api_WSServletProxy_onServletEnd_Method__getClass() {
    return null;
}
quark_spi_api_WSServletProxy_onServletEnd_Method.prototype._getClass = quark_spi_api_WSServletProxy_onServletEnd_Method__getClass;

function quark_spi_api_WSServletProxy_onServletEnd_Method__getField(name) {
    return null;
}
quark_spi_api_WSServletProxy_onServletEnd_Method.prototype._getField = quark_spi_api_WSServletProxy_onServletEnd_Method__getField;

function quark_spi_api_WSServletProxy_onServletEnd_Method__setField(name, value) {}
quark_spi_api_WSServletProxy_onServletEnd_Method.prototype._setField = quark_spi_api_WSServletProxy_onServletEnd_Method__setField;

// CLASS quark_spi_api_WSServletProxy_serveWS_Method

function quark_spi_api_WSServletProxy_serveWS_Method() {
    quark_spi_api_WSServletProxy_serveWS_Method.super_.call(this, "quark.void", "serveWS", ["quark.String"]);
}
exports.quark_spi_api_WSServletProxy_serveWS_Method = quark_spi_api_WSServletProxy_serveWS_Method;
_qrt.util.inherits(quark_spi_api_WSServletProxy_serveWS_Method, quark.reflect.Method);

function quark_spi_api_WSServletProxy_serveWS_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_WSServletProxy_serveWS_Method.prototype.__init_fields__ = quark_spi_api_WSServletProxy_serveWS_Method__init_fields__;

function quark_spi_api_WSServletProxy_serveWS_Method_invoke(object, args) {
    var obj = object;
    (obj).serveWS((args)[0]);
    return null;
}
quark_spi_api_WSServletProxy_serveWS_Method.prototype.invoke = quark_spi_api_WSServletProxy_serveWS_Method_invoke;

function quark_spi_api_WSServletProxy_serveWS_Method__getClass() {
    return null;
}
quark_spi_api_WSServletProxy_serveWS_Method.prototype._getClass = quark_spi_api_WSServletProxy_serveWS_Method__getClass;

function quark_spi_api_WSServletProxy_serveWS_Method__getField(name) {
    return null;
}
quark_spi_api_WSServletProxy_serveWS_Method.prototype._getField = quark_spi_api_WSServletProxy_serveWS_Method__getField;

function quark_spi_api_WSServletProxy_serveWS_Method__setField(name, value) {}
quark_spi_api_WSServletProxy_serveWS_Method.prototype._setField = quark_spi_api_WSServletProxy_serveWS_Method__setField;

// CLASS quark_spi_api_WSServletProxy

function quark_spi_api_WSServletProxy() {
    quark_spi_api_WSServletProxy.super_.call(this, "quark.spi_api.WSServletProxy");
    (this).name = "quark.spi_api.WSServletProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.Servlet", "servlet_impl"), new quark.reflect.Field("quark.Runtime", "real_runtime"), new quark.reflect.Field("quark.WSServlet", "ws_servlet_impl")];
    (this).methods = [new quark_spi_api_WSServletProxy_onWSConnect_Method(), new quark_spi_api_WSServletProxy_onServletInit_Method(), new quark_spi_api_WSServletProxy_onServletError_Method(), new quark_spi_api_WSServletProxy_onServletEnd_Method(), new quark_spi_api_WSServletProxy_serveWS_Method()];
}
exports.quark_spi_api_WSServletProxy = quark_spi_api_WSServletProxy;
_qrt.util.inherits(quark_spi_api_WSServletProxy, quark.reflect.Class);

function quark_spi_api_WSServletProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_WSServletProxy.prototype.__init_fields__ = quark_spi_api_WSServletProxy__init_fields__;
quark_spi_api_WSServletProxy.singleton = new quark_spi_api_WSServletProxy();
function quark_spi_api_WSServletProxy_construct(args) {
    return new quark.spi_api.WSServletProxy((args)[0], (args)[1]);
}
quark_spi_api_WSServletProxy.prototype.construct = quark_spi_api_WSServletProxy_construct;

function quark_spi_api_WSServletProxy__getClass() {
    return null;
}
quark_spi_api_WSServletProxy.prototype._getClass = quark_spi_api_WSServletProxy__getClass;

function quark_spi_api_WSServletProxy__getField(name) {
    return null;
}
quark_spi_api_WSServletProxy.prototype._getField = quark_spi_api_WSServletProxy__getField;

function quark_spi_api_WSServletProxy__setField(name, value) {}
quark_spi_api_WSServletProxy.prototype._setField = quark_spi_api_WSServletProxy__setField;


// CLASS quark_spi_api_TaskProxy_onExecute_Method

function quark_spi_api_TaskProxy_onExecute_Method() {
    quark_spi_api_TaskProxy_onExecute_Method.super_.call(this, "quark.void", "onExecute", ["quark.Runtime"]);
}
exports.quark_spi_api_TaskProxy_onExecute_Method = quark_spi_api_TaskProxy_onExecute_Method;
_qrt.util.inherits(quark_spi_api_TaskProxy_onExecute_Method, quark.reflect.Method);

function quark_spi_api_TaskProxy_onExecute_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_TaskProxy_onExecute_Method.prototype.__init_fields__ = quark_spi_api_TaskProxy_onExecute_Method__init_fields__;

function quark_spi_api_TaskProxy_onExecute_Method_invoke(object, args) {
    var obj = object;
    (obj).onExecute((args)[0]);
    return null;
}
quark_spi_api_TaskProxy_onExecute_Method.prototype.invoke = quark_spi_api_TaskProxy_onExecute_Method_invoke;

function quark_spi_api_TaskProxy_onExecute_Method__getClass() {
    return null;
}
quark_spi_api_TaskProxy_onExecute_Method.prototype._getClass = quark_spi_api_TaskProxy_onExecute_Method__getClass;

function quark_spi_api_TaskProxy_onExecute_Method__getField(name) {
    return null;
}
quark_spi_api_TaskProxy_onExecute_Method.prototype._getField = quark_spi_api_TaskProxy_onExecute_Method__getField;

function quark_spi_api_TaskProxy_onExecute_Method__setField(name, value) {}
quark_spi_api_TaskProxy_onExecute_Method.prototype._setField = quark_spi_api_TaskProxy_onExecute_Method__setField;

// CLASS quark_spi_api_TaskProxy

function quark_spi_api_TaskProxy() {
    quark_spi_api_TaskProxy.super_.call(this, "quark.spi_api.TaskProxy");
    (this).name = "quark.spi_api.TaskProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.Task", "task_impl"), new quark.reflect.Field("quark.Runtime", "real_runtime")];
    (this).methods = [new quark_spi_api_TaskProxy_onExecute_Method()];
}
exports.quark_spi_api_TaskProxy = quark_spi_api_TaskProxy;
_qrt.util.inherits(quark_spi_api_TaskProxy, quark.reflect.Class);

function quark_spi_api_TaskProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_TaskProxy.prototype.__init_fields__ = quark_spi_api_TaskProxy__init_fields__;
quark_spi_api_TaskProxy.singleton = new quark_spi_api_TaskProxy();
function quark_spi_api_TaskProxy_construct(args) {
    return new quark.spi_api.TaskProxy((args)[0], (args)[1]);
}
quark_spi_api_TaskProxy.prototype.construct = quark_spi_api_TaskProxy_construct;

function quark_spi_api_TaskProxy__getClass() {
    return null;
}
quark_spi_api_TaskProxy.prototype._getClass = quark_spi_api_TaskProxy__getClass;

function quark_spi_api_TaskProxy__getField(name) {
    return null;
}
quark_spi_api_TaskProxy.prototype._getField = quark_spi_api_TaskProxy__getField;

function quark_spi_api_TaskProxy__setField(name, value) {}
quark_spi_api_TaskProxy.prototype._setField = quark_spi_api_TaskProxy__setField;


// CLASS quark_spi_api_RuntimeProxy_open_Method

function quark_spi_api_RuntimeProxy_open_Method() {
    quark_spi_api_RuntimeProxy_open_Method.super_.call(this, "quark.void", "open", ["quark.String", "quark.WSHandler"]);
}
exports.quark_spi_api_RuntimeProxy_open_Method = quark_spi_api_RuntimeProxy_open_Method;
_qrt.util.inherits(quark_spi_api_RuntimeProxy_open_Method, quark.reflect.Method);

function quark_spi_api_RuntimeProxy_open_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_RuntimeProxy_open_Method.prototype.__init_fields__ = quark_spi_api_RuntimeProxy_open_Method__init_fields__;

function quark_spi_api_RuntimeProxy_open_Method_invoke(object, args) {
    var obj = object;
    (obj).open((args)[0], (args)[1]);
    return null;
}
quark_spi_api_RuntimeProxy_open_Method.prototype.invoke = quark_spi_api_RuntimeProxy_open_Method_invoke;

function quark_spi_api_RuntimeProxy_open_Method__getClass() {
    return null;
}
quark_spi_api_RuntimeProxy_open_Method.prototype._getClass = quark_spi_api_RuntimeProxy_open_Method__getClass;

function quark_spi_api_RuntimeProxy_open_Method__getField(name) {
    return null;
}
quark_spi_api_RuntimeProxy_open_Method.prototype._getField = quark_spi_api_RuntimeProxy_open_Method__getField;

function quark_spi_api_RuntimeProxy_open_Method__setField(name, value) {}
quark_spi_api_RuntimeProxy_open_Method.prototype._setField = quark_spi_api_RuntimeProxy_open_Method__setField;

// CLASS quark_spi_api_RuntimeProxy_request_Method

function quark_spi_api_RuntimeProxy_request_Method() {
    quark_spi_api_RuntimeProxy_request_Method.super_.call(this, "quark.void", "request", ["quark.HTTPRequest", "quark.HTTPHandler"]);
}
exports.quark_spi_api_RuntimeProxy_request_Method = quark_spi_api_RuntimeProxy_request_Method;
_qrt.util.inherits(quark_spi_api_RuntimeProxy_request_Method, quark.reflect.Method);

function quark_spi_api_RuntimeProxy_request_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_RuntimeProxy_request_Method.prototype.__init_fields__ = quark_spi_api_RuntimeProxy_request_Method__init_fields__;

function quark_spi_api_RuntimeProxy_request_Method_invoke(object, args) {
    var obj = object;
    (obj).request((args)[0], (args)[1]);
    return null;
}
quark_spi_api_RuntimeProxy_request_Method.prototype.invoke = quark_spi_api_RuntimeProxy_request_Method_invoke;

function quark_spi_api_RuntimeProxy_request_Method__getClass() {
    return null;
}
quark_spi_api_RuntimeProxy_request_Method.prototype._getClass = quark_spi_api_RuntimeProxy_request_Method__getClass;

function quark_spi_api_RuntimeProxy_request_Method__getField(name) {
    return null;
}
quark_spi_api_RuntimeProxy_request_Method.prototype._getField = quark_spi_api_RuntimeProxy_request_Method__getField;

function quark_spi_api_RuntimeProxy_request_Method__setField(name, value) {}
quark_spi_api_RuntimeProxy_request_Method.prototype._setField = quark_spi_api_RuntimeProxy_request_Method__setField;

// CLASS quark_spi_api_RuntimeProxy_schedule_Method

function quark_spi_api_RuntimeProxy_schedule_Method() {
    quark_spi_api_RuntimeProxy_schedule_Method.super_.call(this, "quark.void", "schedule", ["quark.Task", "quark.float"]);
}
exports.quark_spi_api_RuntimeProxy_schedule_Method = quark_spi_api_RuntimeProxy_schedule_Method;
_qrt.util.inherits(quark_spi_api_RuntimeProxy_schedule_Method, quark.reflect.Method);

function quark_spi_api_RuntimeProxy_schedule_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_RuntimeProxy_schedule_Method.prototype.__init_fields__ = quark_spi_api_RuntimeProxy_schedule_Method__init_fields__;

function quark_spi_api_RuntimeProxy_schedule_Method_invoke(object, args) {
    var obj = object;
    (obj).schedule((args)[0], (args)[1]);
    return null;
}
quark_spi_api_RuntimeProxy_schedule_Method.prototype.invoke = quark_spi_api_RuntimeProxy_schedule_Method_invoke;

function quark_spi_api_RuntimeProxy_schedule_Method__getClass() {
    return null;
}
quark_spi_api_RuntimeProxy_schedule_Method.prototype._getClass = quark_spi_api_RuntimeProxy_schedule_Method__getClass;

function quark_spi_api_RuntimeProxy_schedule_Method__getField(name) {
    return null;
}
quark_spi_api_RuntimeProxy_schedule_Method.prototype._getField = quark_spi_api_RuntimeProxy_schedule_Method__getField;

function quark_spi_api_RuntimeProxy_schedule_Method__setField(name, value) {}
quark_spi_api_RuntimeProxy_schedule_Method.prototype._setField = quark_spi_api_RuntimeProxy_schedule_Method__setField;

// CLASS quark_spi_api_RuntimeProxy_codec_Method

function quark_spi_api_RuntimeProxy_codec_Method() {
    quark_spi_api_RuntimeProxy_codec_Method.super_.call(this, "quark.Codec", "codec", []);
}
exports.quark_spi_api_RuntimeProxy_codec_Method = quark_spi_api_RuntimeProxy_codec_Method;
_qrt.util.inherits(quark_spi_api_RuntimeProxy_codec_Method, quark.reflect.Method);

function quark_spi_api_RuntimeProxy_codec_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_RuntimeProxy_codec_Method.prototype.__init_fields__ = quark_spi_api_RuntimeProxy_codec_Method__init_fields__;

function quark_spi_api_RuntimeProxy_codec_Method_invoke(object, args) {
    var obj = object;
    return (obj).codec();
}
quark_spi_api_RuntimeProxy_codec_Method.prototype.invoke = quark_spi_api_RuntimeProxy_codec_Method_invoke;

function quark_spi_api_RuntimeProxy_codec_Method__getClass() {
    return null;
}
quark_spi_api_RuntimeProxy_codec_Method.prototype._getClass = quark_spi_api_RuntimeProxy_codec_Method__getClass;

function quark_spi_api_RuntimeProxy_codec_Method__getField(name) {
    return null;
}
quark_spi_api_RuntimeProxy_codec_Method.prototype._getField = quark_spi_api_RuntimeProxy_codec_Method__getField;

function quark_spi_api_RuntimeProxy_codec_Method__setField(name, value) {}
quark_spi_api_RuntimeProxy_codec_Method.prototype._setField = quark_spi_api_RuntimeProxy_codec_Method__setField;

// CLASS quark_spi_api_RuntimeProxy_serveHTTP_Method

function quark_spi_api_RuntimeProxy_serveHTTP_Method() {
    quark_spi_api_RuntimeProxy_serveHTTP_Method.super_.call(this, "quark.void", "serveHTTP", ["quark.String", "quark.HTTPServlet"]);
}
exports.quark_spi_api_RuntimeProxy_serveHTTP_Method = quark_spi_api_RuntimeProxy_serveHTTP_Method;
_qrt.util.inherits(quark_spi_api_RuntimeProxy_serveHTTP_Method, quark.reflect.Method);

function quark_spi_api_RuntimeProxy_serveHTTP_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_RuntimeProxy_serveHTTP_Method.prototype.__init_fields__ = quark_spi_api_RuntimeProxy_serveHTTP_Method__init_fields__;

function quark_spi_api_RuntimeProxy_serveHTTP_Method_invoke(object, args) {
    var obj = object;
    (obj).serveHTTP((args)[0], (args)[1]);
    return null;
}
quark_spi_api_RuntimeProxy_serveHTTP_Method.prototype.invoke = quark_spi_api_RuntimeProxy_serveHTTP_Method_invoke;

function quark_spi_api_RuntimeProxy_serveHTTP_Method__getClass() {
    return null;
}
quark_spi_api_RuntimeProxy_serveHTTP_Method.prototype._getClass = quark_spi_api_RuntimeProxy_serveHTTP_Method__getClass;

function quark_spi_api_RuntimeProxy_serveHTTP_Method__getField(name) {
    return null;
}
quark_spi_api_RuntimeProxy_serveHTTP_Method.prototype._getField = quark_spi_api_RuntimeProxy_serveHTTP_Method__getField;

function quark_spi_api_RuntimeProxy_serveHTTP_Method__setField(name, value) {}
quark_spi_api_RuntimeProxy_serveHTTP_Method.prototype._setField = quark_spi_api_RuntimeProxy_serveHTTP_Method__setField;

// CLASS quark_spi_api_RuntimeProxy_serveWS_Method

function quark_spi_api_RuntimeProxy_serveWS_Method() {
    quark_spi_api_RuntimeProxy_serveWS_Method.super_.call(this, "quark.void", "serveWS", ["quark.String", "quark.WSServlet"]);
}
exports.quark_spi_api_RuntimeProxy_serveWS_Method = quark_spi_api_RuntimeProxy_serveWS_Method;
_qrt.util.inherits(quark_spi_api_RuntimeProxy_serveWS_Method, quark.reflect.Method);

function quark_spi_api_RuntimeProxy_serveWS_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_RuntimeProxy_serveWS_Method.prototype.__init_fields__ = quark_spi_api_RuntimeProxy_serveWS_Method__init_fields__;

function quark_spi_api_RuntimeProxy_serveWS_Method_invoke(object, args) {
    var obj = object;
    (obj).serveWS((args)[0], (args)[1]);
    return null;
}
quark_spi_api_RuntimeProxy_serveWS_Method.prototype.invoke = quark_spi_api_RuntimeProxy_serveWS_Method_invoke;

function quark_spi_api_RuntimeProxy_serveWS_Method__getClass() {
    return null;
}
quark_spi_api_RuntimeProxy_serveWS_Method.prototype._getClass = quark_spi_api_RuntimeProxy_serveWS_Method__getClass;

function quark_spi_api_RuntimeProxy_serveWS_Method__getField(name) {
    return null;
}
quark_spi_api_RuntimeProxy_serveWS_Method.prototype._getField = quark_spi_api_RuntimeProxy_serveWS_Method__getField;

function quark_spi_api_RuntimeProxy_serveWS_Method__setField(name, value) {}
quark_spi_api_RuntimeProxy_serveWS_Method.prototype._setField = quark_spi_api_RuntimeProxy_serveWS_Method__setField;

// CLASS quark_spi_api_RuntimeProxy_respond_Method

function quark_spi_api_RuntimeProxy_respond_Method() {
    quark_spi_api_RuntimeProxy_respond_Method.super_.call(this, "quark.void", "respond", ["quark.HTTPRequest", "quark.HTTPResponse"]);
}
exports.quark_spi_api_RuntimeProxy_respond_Method = quark_spi_api_RuntimeProxy_respond_Method;
_qrt.util.inherits(quark_spi_api_RuntimeProxy_respond_Method, quark.reflect.Method);

function quark_spi_api_RuntimeProxy_respond_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_RuntimeProxy_respond_Method.prototype.__init_fields__ = quark_spi_api_RuntimeProxy_respond_Method__init_fields__;

function quark_spi_api_RuntimeProxy_respond_Method_invoke(object, args) {
    var obj = object;
    (obj).respond((args)[0], (args)[1]);
    return null;
}
quark_spi_api_RuntimeProxy_respond_Method.prototype.invoke = quark_spi_api_RuntimeProxy_respond_Method_invoke;

function quark_spi_api_RuntimeProxy_respond_Method__getClass() {
    return null;
}
quark_spi_api_RuntimeProxy_respond_Method.prototype._getClass = quark_spi_api_RuntimeProxy_respond_Method__getClass;

function quark_spi_api_RuntimeProxy_respond_Method__getField(name) {
    return null;
}
quark_spi_api_RuntimeProxy_respond_Method.prototype._getField = quark_spi_api_RuntimeProxy_respond_Method__getField;

function quark_spi_api_RuntimeProxy_respond_Method__setField(name, value) {}
quark_spi_api_RuntimeProxy_respond_Method.prototype._setField = quark_spi_api_RuntimeProxy_respond_Method__setField;

// CLASS quark_spi_api_RuntimeProxy_fail_Method

function quark_spi_api_RuntimeProxy_fail_Method() {
    quark_spi_api_RuntimeProxy_fail_Method.super_.call(this, "quark.void", "fail", ["quark.String"]);
}
exports.quark_spi_api_RuntimeProxy_fail_Method = quark_spi_api_RuntimeProxy_fail_Method;
_qrt.util.inherits(quark_spi_api_RuntimeProxy_fail_Method, quark.reflect.Method);

function quark_spi_api_RuntimeProxy_fail_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_RuntimeProxy_fail_Method.prototype.__init_fields__ = quark_spi_api_RuntimeProxy_fail_Method__init_fields__;

function quark_spi_api_RuntimeProxy_fail_Method_invoke(object, args) {
    var obj = object;
    (obj).fail((args)[0]);
    return null;
}
quark_spi_api_RuntimeProxy_fail_Method.prototype.invoke = quark_spi_api_RuntimeProxy_fail_Method_invoke;

function quark_spi_api_RuntimeProxy_fail_Method__getClass() {
    return null;
}
quark_spi_api_RuntimeProxy_fail_Method.prototype._getClass = quark_spi_api_RuntimeProxy_fail_Method__getClass;

function quark_spi_api_RuntimeProxy_fail_Method__getField(name) {
    return null;
}
quark_spi_api_RuntimeProxy_fail_Method.prototype._getField = quark_spi_api_RuntimeProxy_fail_Method__getField;

function quark_spi_api_RuntimeProxy_fail_Method__setField(name, value) {}
quark_spi_api_RuntimeProxy_fail_Method.prototype._setField = quark_spi_api_RuntimeProxy_fail_Method__setField;

// CLASS quark_spi_api_RuntimeProxy_logger_Method

function quark_spi_api_RuntimeProxy_logger_Method() {
    quark_spi_api_RuntimeProxy_logger_Method.super_.call(this, "quark.Logger", "logger", ["quark.String"]);
}
exports.quark_spi_api_RuntimeProxy_logger_Method = quark_spi_api_RuntimeProxy_logger_Method;
_qrt.util.inherits(quark_spi_api_RuntimeProxy_logger_Method, quark.reflect.Method);

function quark_spi_api_RuntimeProxy_logger_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_RuntimeProxy_logger_Method.prototype.__init_fields__ = quark_spi_api_RuntimeProxy_logger_Method__init_fields__;

function quark_spi_api_RuntimeProxy_logger_Method_invoke(object, args) {
    var obj = object;
    return (obj).logger((args)[0]);
}
quark_spi_api_RuntimeProxy_logger_Method.prototype.invoke = quark_spi_api_RuntimeProxy_logger_Method_invoke;

function quark_spi_api_RuntimeProxy_logger_Method__getClass() {
    return null;
}
quark_spi_api_RuntimeProxy_logger_Method.prototype._getClass = quark_spi_api_RuntimeProxy_logger_Method__getClass;

function quark_spi_api_RuntimeProxy_logger_Method__getField(name) {
    return null;
}
quark_spi_api_RuntimeProxy_logger_Method.prototype._getField = quark_spi_api_RuntimeProxy_logger_Method__getField;

function quark_spi_api_RuntimeProxy_logger_Method__setField(name, value) {}
quark_spi_api_RuntimeProxy_logger_Method.prototype._setField = quark_spi_api_RuntimeProxy_logger_Method__setField;

// CLASS quark_spi_api_RuntimeProxy

function quark_spi_api_RuntimeProxy() {
    quark_spi_api_RuntimeProxy.super_.call(this, "quark.spi_api.RuntimeProxy");
    (this).name = "quark.spi_api.RuntimeProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.Runtime", "impl")];
    (this).methods = [new quark_spi_api_RuntimeProxy_open_Method(), new quark_spi_api_RuntimeProxy_request_Method(), new quark_spi_api_RuntimeProxy_schedule_Method(), new quark_spi_api_RuntimeProxy_codec_Method(), new quark_spi_api_RuntimeProxy_serveHTTP_Method(), new quark_spi_api_RuntimeProxy_serveWS_Method(), new quark_spi_api_RuntimeProxy_respond_Method(), new quark_spi_api_RuntimeProxy_fail_Method(), new quark_spi_api_RuntimeProxy_logger_Method()];
}
exports.quark_spi_api_RuntimeProxy = quark_spi_api_RuntimeProxy;
_qrt.util.inherits(quark_spi_api_RuntimeProxy, quark.reflect.Class);

function quark_spi_api_RuntimeProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_RuntimeProxy.prototype.__init_fields__ = quark_spi_api_RuntimeProxy__init_fields__;
quark_spi_api_RuntimeProxy.singleton = new quark_spi_api_RuntimeProxy();
function quark_spi_api_RuntimeProxy_construct(args) {
    return new quark.spi_api.RuntimeProxy((args)[0]);
}
quark_spi_api_RuntimeProxy.prototype.construct = quark_spi_api_RuntimeProxy_construct;

function quark_spi_api_RuntimeProxy__getClass() {
    return null;
}
quark_spi_api_RuntimeProxy.prototype._getClass = quark_spi_api_RuntimeProxy__getClass;

function quark_spi_api_RuntimeProxy__getField(name) {
    return null;
}
quark_spi_api_RuntimeProxy.prototype._getField = quark_spi_api_RuntimeProxy__getField;

function quark_spi_api_RuntimeProxy__setField(name, value) {}
quark_spi_api_RuntimeProxy.prototype._setField = quark_spi_api_RuntimeProxy__setField;


// CLASS quark_spi_api_tracing_Identificator_next_Method

function quark_spi_api_tracing_Identificator_next_Method() {
    quark_spi_api_tracing_Identificator_next_Method.super_.call(this, "quark.String", "next", ["quark.String"]);
}
exports.quark_spi_api_tracing_Identificator_next_Method = quark_spi_api_tracing_Identificator_next_Method;
_qrt.util.inherits(quark_spi_api_tracing_Identificator_next_Method, quark.reflect.Method);

function quark_spi_api_tracing_Identificator_next_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_Identificator_next_Method.prototype.__init_fields__ = quark_spi_api_tracing_Identificator_next_Method__init_fields__;

function quark_spi_api_tracing_Identificator_next_Method_invoke(object, args) {
    var obj = object;
    return (obj).next((args)[0]);
}
quark_spi_api_tracing_Identificator_next_Method.prototype.invoke = quark_spi_api_tracing_Identificator_next_Method_invoke;

function quark_spi_api_tracing_Identificator_next_Method__getClass() {
    return null;
}
quark_spi_api_tracing_Identificator_next_Method.prototype._getClass = quark_spi_api_tracing_Identificator_next_Method__getClass;

function quark_spi_api_tracing_Identificator_next_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_Identificator_next_Method.prototype._getField = quark_spi_api_tracing_Identificator_next_Method__getField;

function quark_spi_api_tracing_Identificator_next_Method__setField(name, value) {}
quark_spi_api_tracing_Identificator_next_Method.prototype._setField = quark_spi_api_tracing_Identificator_next_Method__setField;

// CLASS quark_spi_api_tracing_Identificator

function quark_spi_api_tracing_Identificator() {
    quark_spi_api_tracing_Identificator.super_.call(this, "quark.spi_api_tracing.Identificator");
    (this).name = "quark.spi_api_tracing.Identificator";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.concurrent.Lock", "lock"), new quark.reflect.Field("quark.int", "seq")];
    (this).methods = [new quark_spi_api_tracing_Identificator_next_Method()];
}
exports.quark_spi_api_tracing_Identificator = quark_spi_api_tracing_Identificator;
_qrt.util.inherits(quark_spi_api_tracing_Identificator, quark.reflect.Class);

function quark_spi_api_tracing_Identificator__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_Identificator.prototype.__init_fields__ = quark_spi_api_tracing_Identificator__init_fields__;
quark_spi_api_tracing_Identificator.singleton = new quark_spi_api_tracing_Identificator();
function quark_spi_api_tracing_Identificator_construct(args) {
    return new quark.spi_api_tracing.Identificator();
}
quark_spi_api_tracing_Identificator.prototype.construct = quark_spi_api_tracing_Identificator_construct;

function quark_spi_api_tracing_Identificator__getClass() {
    return null;
}
quark_spi_api_tracing_Identificator.prototype._getClass = quark_spi_api_tracing_Identificator__getClass;

function quark_spi_api_tracing_Identificator__getField(name) {
    return null;
}
quark_spi_api_tracing_Identificator.prototype._getField = quark_spi_api_tracing_Identificator__getField;

function quark_spi_api_tracing_Identificator__setField(name, value) {}
quark_spi_api_tracing_Identificator.prototype._setField = quark_spi_api_tracing_Identificator__setField;


// CLASS quark_spi_api_tracing_Identifiable

function quark_spi_api_tracing_Identifiable() {
    quark_spi_api_tracing_Identifiable.super_.call(this, "quark.spi_api_tracing.Identifiable");
    (this).name = "quark.spi_api_tracing.Identifiable";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log")];
    (this).methods = [];
}
exports.quark_spi_api_tracing_Identifiable = quark_spi_api_tracing_Identifiable;
_qrt.util.inherits(quark_spi_api_tracing_Identifiable, quark.reflect.Class);

function quark_spi_api_tracing_Identifiable__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_Identifiable.prototype.__init_fields__ = quark_spi_api_tracing_Identifiable__init_fields__;
quark_spi_api_tracing_Identifiable.singleton = new quark_spi_api_tracing_Identifiable();
function quark_spi_api_tracing_Identifiable_construct(args) {
    return new quark.spi_api_tracing.Identifiable((args)[0], (args)[1]);
}
quark_spi_api_tracing_Identifiable.prototype.construct = quark_spi_api_tracing_Identifiable_construct;

function quark_spi_api_tracing_Identifiable__getClass() {
    return null;
}
quark_spi_api_tracing_Identifiable.prototype._getClass = quark_spi_api_tracing_Identifiable__getClass;

function quark_spi_api_tracing_Identifiable__getField(name) {
    return null;
}
quark_spi_api_tracing_Identifiable.prototype._getField = quark_spi_api_tracing_Identifiable__getField;

function quark_spi_api_tracing_Identifiable__setField(name, value) {}
quark_spi_api_tracing_Identifiable.prototype._setField = quark_spi_api_tracing_Identifiable__setField;


// CLASS quark_spi_api_tracing_ServletProxy_onServletInit_Method

function quark_spi_api_tracing_ServletProxy_onServletInit_Method() {
    quark_spi_api_tracing_ServletProxy_onServletInit_Method.super_.call(this, "quark.void", "onServletInit", ["quark.String", "quark.Runtime"]);
}
exports.quark_spi_api_tracing_ServletProxy_onServletInit_Method = quark_spi_api_tracing_ServletProxy_onServletInit_Method;
_qrt.util.inherits(quark_spi_api_tracing_ServletProxy_onServletInit_Method, quark.reflect.Method);

function quark_spi_api_tracing_ServletProxy_onServletInit_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_ServletProxy_onServletInit_Method.prototype.__init_fields__ = quark_spi_api_tracing_ServletProxy_onServletInit_Method__init_fields__;

function quark_spi_api_tracing_ServletProxy_onServletInit_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletInit((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_ServletProxy_onServletInit_Method.prototype.invoke = quark_spi_api_tracing_ServletProxy_onServletInit_Method_invoke;

function quark_spi_api_tracing_ServletProxy_onServletInit_Method__getClass() {
    return null;
}
quark_spi_api_tracing_ServletProxy_onServletInit_Method.prototype._getClass = quark_spi_api_tracing_ServletProxy_onServletInit_Method__getClass;

function quark_spi_api_tracing_ServletProxy_onServletInit_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_ServletProxy_onServletInit_Method.prototype._getField = quark_spi_api_tracing_ServletProxy_onServletInit_Method__getField;

function quark_spi_api_tracing_ServletProxy_onServletInit_Method__setField(name, value) {}
quark_spi_api_tracing_ServletProxy_onServletInit_Method.prototype._setField = quark_spi_api_tracing_ServletProxy_onServletInit_Method__setField;

// CLASS quark_spi_api_tracing_ServletProxy_onServletError_Method

function quark_spi_api_tracing_ServletProxy_onServletError_Method() {
    quark_spi_api_tracing_ServletProxy_onServletError_Method.super_.call(this, "quark.void", "onServletError", ["quark.String", "quark.String"]);
}
exports.quark_spi_api_tracing_ServletProxy_onServletError_Method = quark_spi_api_tracing_ServletProxy_onServletError_Method;
_qrt.util.inherits(quark_spi_api_tracing_ServletProxy_onServletError_Method, quark.reflect.Method);

function quark_spi_api_tracing_ServletProxy_onServletError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_ServletProxy_onServletError_Method.prototype.__init_fields__ = quark_spi_api_tracing_ServletProxy_onServletError_Method__init_fields__;

function quark_spi_api_tracing_ServletProxy_onServletError_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletError((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_ServletProxy_onServletError_Method.prototype.invoke = quark_spi_api_tracing_ServletProxy_onServletError_Method_invoke;

function quark_spi_api_tracing_ServletProxy_onServletError_Method__getClass() {
    return null;
}
quark_spi_api_tracing_ServletProxy_onServletError_Method.prototype._getClass = quark_spi_api_tracing_ServletProxy_onServletError_Method__getClass;

function quark_spi_api_tracing_ServletProxy_onServletError_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_ServletProxy_onServletError_Method.prototype._getField = quark_spi_api_tracing_ServletProxy_onServletError_Method__getField;

function quark_spi_api_tracing_ServletProxy_onServletError_Method__setField(name, value) {}
quark_spi_api_tracing_ServletProxy_onServletError_Method.prototype._setField = quark_spi_api_tracing_ServletProxy_onServletError_Method__setField;

// CLASS quark_spi_api_tracing_ServletProxy_onServletEnd_Method

function quark_spi_api_tracing_ServletProxy_onServletEnd_Method() {
    quark_spi_api_tracing_ServletProxy_onServletEnd_Method.super_.call(this, "quark.void", "onServletEnd", ["quark.String"]);
}
exports.quark_spi_api_tracing_ServletProxy_onServletEnd_Method = quark_spi_api_tracing_ServletProxy_onServletEnd_Method;
_qrt.util.inherits(quark_spi_api_tracing_ServletProxy_onServletEnd_Method, quark.reflect.Method);

function quark_spi_api_tracing_ServletProxy_onServletEnd_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_ServletProxy_onServletEnd_Method.prototype.__init_fields__ = quark_spi_api_tracing_ServletProxy_onServletEnd_Method__init_fields__;

function quark_spi_api_tracing_ServletProxy_onServletEnd_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletEnd((args)[0]);
    return null;
}
quark_spi_api_tracing_ServletProxy_onServletEnd_Method.prototype.invoke = quark_spi_api_tracing_ServletProxy_onServletEnd_Method_invoke;

function quark_spi_api_tracing_ServletProxy_onServletEnd_Method__getClass() {
    return null;
}
quark_spi_api_tracing_ServletProxy_onServletEnd_Method.prototype._getClass = quark_spi_api_tracing_ServletProxy_onServletEnd_Method__getClass;

function quark_spi_api_tracing_ServletProxy_onServletEnd_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_ServletProxy_onServletEnd_Method.prototype._getField = quark_spi_api_tracing_ServletProxy_onServletEnd_Method__getField;

function quark_spi_api_tracing_ServletProxy_onServletEnd_Method__setField(name, value) {}
quark_spi_api_tracing_ServletProxy_onServletEnd_Method.prototype._setField = quark_spi_api_tracing_ServletProxy_onServletEnd_Method__setField;

// CLASS quark_spi_api_tracing_ServletProxy

function quark_spi_api_tracing_ServletProxy() {
    quark_spi_api_tracing_ServletProxy.super_.call(this, "quark.spi_api_tracing.ServletProxy");
    (this).name = "quark.spi_api_tracing.ServletProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.Servlet", "servlet_impl"), new quark.reflect.Field("quark.spi_api_tracing.RuntimeProxy", "real_runtime")];
    (this).methods = [new quark_spi_api_tracing_ServletProxy_onServletInit_Method(), new quark_spi_api_tracing_ServletProxy_onServletError_Method(), new quark_spi_api_tracing_ServletProxy_onServletEnd_Method()];
}
exports.quark_spi_api_tracing_ServletProxy = quark_spi_api_tracing_ServletProxy;
_qrt.util.inherits(quark_spi_api_tracing_ServletProxy, quark.reflect.Class);

function quark_spi_api_tracing_ServletProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_ServletProxy.prototype.__init_fields__ = quark_spi_api_tracing_ServletProxy__init_fields__;
quark_spi_api_tracing_ServletProxy.singleton = new quark_spi_api_tracing_ServletProxy();
function quark_spi_api_tracing_ServletProxy_construct(args) {
    return new quark.spi_api_tracing.ServletProxy((args)[0], (args)[1], (args)[2], (args)[3]);
}
quark_spi_api_tracing_ServletProxy.prototype.construct = quark_spi_api_tracing_ServletProxy_construct;

function quark_spi_api_tracing_ServletProxy__getClass() {
    return null;
}
quark_spi_api_tracing_ServletProxy.prototype._getClass = quark_spi_api_tracing_ServletProxy__getClass;

function quark_spi_api_tracing_ServletProxy__getField(name) {
    return null;
}
quark_spi_api_tracing_ServletProxy.prototype._getField = quark_spi_api_tracing_ServletProxy__getField;

function quark_spi_api_tracing_ServletProxy__setField(name, value) {}
quark_spi_api_tracing_ServletProxy.prototype._setField = quark_spi_api_tracing_ServletProxy__setField;


// CLASS quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method

function quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method() {
    quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method.super_.call(this, "quark.String", "getUrl", []);
}
exports.quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method = quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method__init_fields__;

function quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method_invoke(object, args) {
    var obj = object;
    return (obj).getUrl();
}
quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method.prototype.invoke = quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method_invoke;

function quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method.prototype._getClass = quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method__getClass;

function quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method.prototype._getField = quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method__getField;

function quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method.prototype._setField = quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method__setField;

// CLASS quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method

function quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method() {
    quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method.super_.call(this, "quark.void", "setMethod", ["quark.String"]);
}
exports.quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method = quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method__init_fields__;

function quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method_invoke(object, args) {
    var obj = object;
    (obj).setMethod((args)[0]);
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method.prototype.invoke = quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method_invoke;

function quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method.prototype._getClass = quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method__getClass;

function quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method.prototype._getField = quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method__getField;

function quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method.prototype._setField = quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method__setField;

// CLASS quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method

function quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method() {
    quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method.super_.call(this, "quark.String", "getMethod", []);
}
exports.quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method = quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method__init_fields__;

function quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method_invoke(object, args) {
    var obj = object;
    return (obj).getMethod();
}
quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method.prototype.invoke = quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method_invoke;

function quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method.prototype._getClass = quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method__getClass;

function quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method.prototype._getField = quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method__getField;

function quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method.prototype._setField = quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method__setField;

// CLASS quark_spi_api_tracing_HTTPRequestProxy_setBody_Method

function quark_spi_api_tracing_HTTPRequestProxy_setBody_Method() {
    quark_spi_api_tracing_HTTPRequestProxy_setBody_Method.super_.call(this, "quark.void", "setBody", ["quark.String"]);
}
exports.quark_spi_api_tracing_HTTPRequestProxy_setBody_Method = quark_spi_api_tracing_HTTPRequestProxy_setBody_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPRequestProxy_setBody_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPRequestProxy_setBody_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPRequestProxy_setBody_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPRequestProxy_setBody_Method__init_fields__;

function quark_spi_api_tracing_HTTPRequestProxy_setBody_Method_invoke(object, args) {
    var obj = object;
    (obj).setBody((args)[0]);
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_setBody_Method.prototype.invoke = quark_spi_api_tracing_HTTPRequestProxy_setBody_Method_invoke;

function quark_spi_api_tracing_HTTPRequestProxy_setBody_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_setBody_Method.prototype._getClass = quark_spi_api_tracing_HTTPRequestProxy_setBody_Method__getClass;

function quark_spi_api_tracing_HTTPRequestProxy_setBody_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_setBody_Method.prototype._getField = quark_spi_api_tracing_HTTPRequestProxy_setBody_Method__getField;

function quark_spi_api_tracing_HTTPRequestProxy_setBody_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPRequestProxy_setBody_Method.prototype._setField = quark_spi_api_tracing_HTTPRequestProxy_setBody_Method__setField;

// CLASS quark_spi_api_tracing_HTTPRequestProxy_getBody_Method

function quark_spi_api_tracing_HTTPRequestProxy_getBody_Method() {
    quark_spi_api_tracing_HTTPRequestProxy_getBody_Method.super_.call(this, "quark.String", "getBody", []);
}
exports.quark_spi_api_tracing_HTTPRequestProxy_getBody_Method = quark_spi_api_tracing_HTTPRequestProxy_getBody_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPRequestProxy_getBody_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPRequestProxy_getBody_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPRequestProxy_getBody_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPRequestProxy_getBody_Method__init_fields__;

function quark_spi_api_tracing_HTTPRequestProxy_getBody_Method_invoke(object, args) {
    var obj = object;
    return (obj).getBody();
}
quark_spi_api_tracing_HTTPRequestProxy_getBody_Method.prototype.invoke = quark_spi_api_tracing_HTTPRequestProxy_getBody_Method_invoke;

function quark_spi_api_tracing_HTTPRequestProxy_getBody_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_getBody_Method.prototype._getClass = quark_spi_api_tracing_HTTPRequestProxy_getBody_Method__getClass;

function quark_spi_api_tracing_HTTPRequestProxy_getBody_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_getBody_Method.prototype._getField = quark_spi_api_tracing_HTTPRequestProxy_getBody_Method__getField;

function quark_spi_api_tracing_HTTPRequestProxy_getBody_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPRequestProxy_getBody_Method.prototype._setField = quark_spi_api_tracing_HTTPRequestProxy_getBody_Method__setField;

// CLASS quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method

function quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method() {
    quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method.super_.call(this, "quark.void", "setHeader", ["quark.String", "quark.String"]);
}
exports.quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method = quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method__init_fields__;

function quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method_invoke(object, args) {
    var obj = object;
    (obj).setHeader((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method.prototype.invoke = quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method_invoke;

function quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method.prototype._getClass = quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method__getClass;

function quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method.prototype._getField = quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method__getField;

function quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method.prototype._setField = quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method__setField;

// CLASS quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method

function quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method() {
    quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method.super_.call(this, "quark.String", "getHeader", ["quark.String"]);
}
exports.quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method = quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method__init_fields__;

function quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method_invoke(object, args) {
    var obj = object;
    return (obj).getHeader((args)[0]);
}
quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method.prototype.invoke = quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method_invoke;

function quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method.prototype._getClass = quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method__getClass;

function quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method.prototype._getField = quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method__getField;

function quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method.prototype._setField = quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method__setField;

// CLASS quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method

function quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method() {
    quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method.super_.call(this, "quark.List<quark.String>", "getHeaders", []);
}
exports.quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method = quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method__init_fields__;

function quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method_invoke(object, args) {
    var obj = object;
    return (obj).getHeaders();
}
quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method.prototype.invoke = quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method_invoke;

function quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method.prototype._getClass = quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method__getClass;

function quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method.prototype._getField = quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method__getField;

function quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method.prototype._setField = quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method__setField;

// CLASS quark_spi_api_tracing_HTTPRequestProxy

function quark_spi_api_tracing_HTTPRequestProxy() {
    quark_spi_api_tracing_HTTPRequestProxy.super_.call(this, "quark.spi_api_tracing.HTTPRequestProxy");
    (this).name = "quark.spi_api_tracing.HTTPRequestProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.HTTPRequest", "request_impl")];
    (this).methods = [new quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method(), new quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method(), new quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method(), new quark_spi_api_tracing_HTTPRequestProxy_setBody_Method(), new quark_spi_api_tracing_HTTPRequestProxy_getBody_Method(), new quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method(), new quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method(), new quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method()];
}
exports.quark_spi_api_tracing_HTTPRequestProxy = quark_spi_api_tracing_HTTPRequestProxy;
_qrt.util.inherits(quark_spi_api_tracing_HTTPRequestProxy, quark.reflect.Class);

function quark_spi_api_tracing_HTTPRequestProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPRequestProxy.prototype.__init_fields__ = quark_spi_api_tracing_HTTPRequestProxy__init_fields__;
quark_spi_api_tracing_HTTPRequestProxy.singleton = new quark_spi_api_tracing_HTTPRequestProxy();
function quark_spi_api_tracing_HTTPRequestProxy_construct(args) {
    return new quark.spi_api_tracing.HTTPRequestProxy((args)[0], (args)[1]);
}
quark_spi_api_tracing_HTTPRequestProxy.prototype.construct = quark_spi_api_tracing_HTTPRequestProxy_construct;

function quark_spi_api_tracing_HTTPRequestProxy__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy.prototype._getClass = quark_spi_api_tracing_HTTPRequestProxy__getClass;

function quark_spi_api_tracing_HTTPRequestProxy__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPRequestProxy.prototype._getField = quark_spi_api_tracing_HTTPRequestProxy__getField;

function quark_spi_api_tracing_HTTPRequestProxy__setField(name, value) {}
quark_spi_api_tracing_HTTPRequestProxy.prototype._setField = quark_spi_api_tracing_HTTPRequestProxy__setField;


// CLASS quark_spi_api_tracing_HTTPResponseProxy_getCode_Method

function quark_spi_api_tracing_HTTPResponseProxy_getCode_Method() {
    quark_spi_api_tracing_HTTPResponseProxy_getCode_Method.super_.call(this, "quark.int", "getCode", []);
}
exports.quark_spi_api_tracing_HTTPResponseProxy_getCode_Method = quark_spi_api_tracing_HTTPResponseProxy_getCode_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPResponseProxy_getCode_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPResponseProxy_getCode_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPResponseProxy_getCode_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPResponseProxy_getCode_Method__init_fields__;

function quark_spi_api_tracing_HTTPResponseProxy_getCode_Method_invoke(object, args) {
    var obj = object;
    return (obj).getCode();
}
quark_spi_api_tracing_HTTPResponseProxy_getCode_Method.prototype.invoke = quark_spi_api_tracing_HTTPResponseProxy_getCode_Method_invoke;

function quark_spi_api_tracing_HTTPResponseProxy_getCode_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_getCode_Method.prototype._getClass = quark_spi_api_tracing_HTTPResponseProxy_getCode_Method__getClass;

function quark_spi_api_tracing_HTTPResponseProxy_getCode_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_getCode_Method.prototype._getField = quark_spi_api_tracing_HTTPResponseProxy_getCode_Method__getField;

function quark_spi_api_tracing_HTTPResponseProxy_getCode_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPResponseProxy_getCode_Method.prototype._setField = quark_spi_api_tracing_HTTPResponseProxy_getCode_Method__setField;

// CLASS quark_spi_api_tracing_HTTPResponseProxy_setCode_Method

function quark_spi_api_tracing_HTTPResponseProxy_setCode_Method() {
    quark_spi_api_tracing_HTTPResponseProxy_setCode_Method.super_.call(this, "quark.void", "setCode", ["quark.int"]);
}
exports.quark_spi_api_tracing_HTTPResponseProxy_setCode_Method = quark_spi_api_tracing_HTTPResponseProxy_setCode_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPResponseProxy_setCode_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPResponseProxy_setCode_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPResponseProxy_setCode_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPResponseProxy_setCode_Method__init_fields__;

function quark_spi_api_tracing_HTTPResponseProxy_setCode_Method_invoke(object, args) {
    var obj = object;
    (obj).setCode((args)[0]);
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_setCode_Method.prototype.invoke = quark_spi_api_tracing_HTTPResponseProxy_setCode_Method_invoke;

function quark_spi_api_tracing_HTTPResponseProxy_setCode_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_setCode_Method.prototype._getClass = quark_spi_api_tracing_HTTPResponseProxy_setCode_Method__getClass;

function quark_spi_api_tracing_HTTPResponseProxy_setCode_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_setCode_Method.prototype._getField = quark_spi_api_tracing_HTTPResponseProxy_setCode_Method__getField;

function quark_spi_api_tracing_HTTPResponseProxy_setCode_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPResponseProxy_setCode_Method.prototype._setField = quark_spi_api_tracing_HTTPResponseProxy_setCode_Method__setField;

// CLASS quark_spi_api_tracing_HTTPResponseProxy_setBody_Method

function quark_spi_api_tracing_HTTPResponseProxy_setBody_Method() {
    quark_spi_api_tracing_HTTPResponseProxy_setBody_Method.super_.call(this, "quark.void", "setBody", ["quark.String"]);
}
exports.quark_spi_api_tracing_HTTPResponseProxy_setBody_Method = quark_spi_api_tracing_HTTPResponseProxy_setBody_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPResponseProxy_setBody_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPResponseProxy_setBody_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPResponseProxy_setBody_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPResponseProxy_setBody_Method__init_fields__;

function quark_spi_api_tracing_HTTPResponseProxy_setBody_Method_invoke(object, args) {
    var obj = object;
    (obj).setBody((args)[0]);
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_setBody_Method.prototype.invoke = quark_spi_api_tracing_HTTPResponseProxy_setBody_Method_invoke;

function quark_spi_api_tracing_HTTPResponseProxy_setBody_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_setBody_Method.prototype._getClass = quark_spi_api_tracing_HTTPResponseProxy_setBody_Method__getClass;

function quark_spi_api_tracing_HTTPResponseProxy_setBody_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_setBody_Method.prototype._getField = quark_spi_api_tracing_HTTPResponseProxy_setBody_Method__getField;

function quark_spi_api_tracing_HTTPResponseProxy_setBody_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPResponseProxy_setBody_Method.prototype._setField = quark_spi_api_tracing_HTTPResponseProxy_setBody_Method__setField;

// CLASS quark_spi_api_tracing_HTTPResponseProxy_getBody_Method

function quark_spi_api_tracing_HTTPResponseProxy_getBody_Method() {
    quark_spi_api_tracing_HTTPResponseProxy_getBody_Method.super_.call(this, "quark.String", "getBody", []);
}
exports.quark_spi_api_tracing_HTTPResponseProxy_getBody_Method = quark_spi_api_tracing_HTTPResponseProxy_getBody_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPResponseProxy_getBody_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPResponseProxy_getBody_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPResponseProxy_getBody_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPResponseProxy_getBody_Method__init_fields__;

function quark_spi_api_tracing_HTTPResponseProxy_getBody_Method_invoke(object, args) {
    var obj = object;
    return (obj).getBody();
}
quark_spi_api_tracing_HTTPResponseProxy_getBody_Method.prototype.invoke = quark_spi_api_tracing_HTTPResponseProxy_getBody_Method_invoke;

function quark_spi_api_tracing_HTTPResponseProxy_getBody_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_getBody_Method.prototype._getClass = quark_spi_api_tracing_HTTPResponseProxy_getBody_Method__getClass;

function quark_spi_api_tracing_HTTPResponseProxy_getBody_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_getBody_Method.prototype._getField = quark_spi_api_tracing_HTTPResponseProxy_getBody_Method__getField;

function quark_spi_api_tracing_HTTPResponseProxy_getBody_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPResponseProxy_getBody_Method.prototype._setField = quark_spi_api_tracing_HTTPResponseProxy_getBody_Method__setField;

// CLASS quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method

function quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method() {
    quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method.super_.call(this, "quark.void", "setHeader", ["quark.String", "quark.String"]);
}
exports.quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method = quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method__init_fields__;

function quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method_invoke(object, args) {
    var obj = object;
    (obj).setHeader((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method.prototype.invoke = quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method_invoke;

function quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method.prototype._getClass = quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method__getClass;

function quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method.prototype._getField = quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method__getField;

function quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method.prototype._setField = quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method__setField;

// CLASS quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method

function quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method() {
    quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method.super_.call(this, "quark.String", "getHeader", ["quark.String"]);
}
exports.quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method = quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method__init_fields__;

function quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method_invoke(object, args) {
    var obj = object;
    return (obj).getHeader((args)[0]);
}
quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method.prototype.invoke = quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method_invoke;

function quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method.prototype._getClass = quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method__getClass;

function quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method.prototype._getField = quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method__getField;

function quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method.prototype._setField = quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method__setField;

// CLASS quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method

function quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method() {
    quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method.super_.call(this, "quark.List<quark.String>", "getHeaders", []);
}
exports.quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method = quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method__init_fields__;

function quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method_invoke(object, args) {
    var obj = object;
    return (obj).getHeaders();
}
quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method.prototype.invoke = quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method_invoke;

function quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method.prototype._getClass = quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method__getClass;

function quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method.prototype._getField = quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method__getField;

function quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method.prototype._setField = quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method__setField;

// CLASS quark_spi_api_tracing_HTTPResponseProxy

function quark_spi_api_tracing_HTTPResponseProxy() {
    quark_spi_api_tracing_HTTPResponseProxy.super_.call(this, "quark.spi_api_tracing.HTTPResponseProxy");
    (this).name = "quark.spi_api_tracing.HTTPResponseProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.HTTPResponse", "response_impl")];
    (this).methods = [new quark_spi_api_tracing_HTTPResponseProxy_getCode_Method(), new quark_spi_api_tracing_HTTPResponseProxy_setCode_Method(), new quark_spi_api_tracing_HTTPResponseProxy_setBody_Method(), new quark_spi_api_tracing_HTTPResponseProxy_getBody_Method(), new quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method(), new quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method(), new quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method()];
}
exports.quark_spi_api_tracing_HTTPResponseProxy = quark_spi_api_tracing_HTTPResponseProxy;
_qrt.util.inherits(quark_spi_api_tracing_HTTPResponseProxy, quark.reflect.Class);

function quark_spi_api_tracing_HTTPResponseProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPResponseProxy.prototype.__init_fields__ = quark_spi_api_tracing_HTTPResponseProxy__init_fields__;
quark_spi_api_tracing_HTTPResponseProxy.singleton = new quark_spi_api_tracing_HTTPResponseProxy();
function quark_spi_api_tracing_HTTPResponseProxy_construct(args) {
    return new quark.spi_api_tracing.HTTPResponseProxy((args)[0], (args)[1]);
}
quark_spi_api_tracing_HTTPResponseProxy.prototype.construct = quark_spi_api_tracing_HTTPResponseProxy_construct;

function quark_spi_api_tracing_HTTPResponseProxy__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy.prototype._getClass = quark_spi_api_tracing_HTTPResponseProxy__getClass;

function quark_spi_api_tracing_HTTPResponseProxy__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPResponseProxy.prototype._getField = quark_spi_api_tracing_HTTPResponseProxy__getField;

function quark_spi_api_tracing_HTTPResponseProxy__setField(name, value) {}
quark_spi_api_tracing_HTTPResponseProxy.prototype._setField = quark_spi_api_tracing_HTTPResponseProxy__setField;


// CLASS quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method

function quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method() {
    quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method.super_.call(this, "quark.void", "onHTTPRequest", ["quark.HTTPRequest", "quark.HTTPResponse"]);
}
exports.quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method = quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method__init_fields__;

function quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPRequest((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method.prototype.invoke = quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method_invoke;

function quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method.prototype._getClass = quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method__getClass;

function quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method.prototype._getField = quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method__getField;

function quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method.prototype._setField = quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method__setField;

// CLASS quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method

function quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method() {
    quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method.super_.call(this, "quark.void", "onServletInit", ["quark.String", "quark.Runtime"]);
}
exports.quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method = quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method__init_fields__;

function quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletInit((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method.prototype.invoke = quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method_invoke;

function quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method.prototype._getClass = quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method__getClass;

function quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method.prototype._getField = quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method__getField;

function quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method.prototype._setField = quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method__setField;

// CLASS quark_spi_api_tracing_HTTPServletProxy_onServletError_Method

function quark_spi_api_tracing_HTTPServletProxy_onServletError_Method() {
    quark_spi_api_tracing_HTTPServletProxy_onServletError_Method.super_.call(this, "quark.void", "onServletError", ["quark.String", "quark.String"]);
}
exports.quark_spi_api_tracing_HTTPServletProxy_onServletError_Method = quark_spi_api_tracing_HTTPServletProxy_onServletError_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPServletProxy_onServletError_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPServletProxy_onServletError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPServletProxy_onServletError_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPServletProxy_onServletError_Method__init_fields__;

function quark_spi_api_tracing_HTTPServletProxy_onServletError_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletError((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onServletError_Method.prototype.invoke = quark_spi_api_tracing_HTTPServletProxy_onServletError_Method_invoke;

function quark_spi_api_tracing_HTTPServletProxy_onServletError_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onServletError_Method.prototype._getClass = quark_spi_api_tracing_HTTPServletProxy_onServletError_Method__getClass;

function quark_spi_api_tracing_HTTPServletProxy_onServletError_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onServletError_Method.prototype._getField = quark_spi_api_tracing_HTTPServletProxy_onServletError_Method__getField;

function quark_spi_api_tracing_HTTPServletProxy_onServletError_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPServletProxy_onServletError_Method.prototype._setField = quark_spi_api_tracing_HTTPServletProxy_onServletError_Method__setField;

// CLASS quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method

function quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method() {
    quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method.super_.call(this, "quark.void", "onServletEnd", ["quark.String"]);
}
exports.quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method = quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method__init_fields__;

function quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletEnd((args)[0]);
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method.prototype.invoke = quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method_invoke;

function quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method.prototype._getClass = quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method__getClass;

function quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method.prototype._getField = quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method__getField;

function quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method.prototype._setField = quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method__setField;

// CLASS quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method

function quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method() {
    quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method.super_.call(this, "quark.void", "serveHTTP", ["quark.String"]);
}
exports.quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method = quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method__init_fields__;

function quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method_invoke(object, args) {
    var obj = object;
    (obj).serveHTTP((args)[0]);
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method.prototype.invoke = quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method_invoke;

function quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method.prototype._getClass = quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method__getClass;

function quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method.prototype._getField = quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method__getField;

function quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method.prototype._setField = quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method__setField;

// CLASS quark_spi_api_tracing_HTTPServletProxy

function quark_spi_api_tracing_HTTPServletProxy() {
    quark_spi_api_tracing_HTTPServletProxy.super_.call(this, "quark.spi_api_tracing.HTTPServletProxy");
    (this).name = "quark.spi_api_tracing.HTTPServletProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.Servlet", "servlet_impl"), new quark.reflect.Field("quark.spi_api_tracing.RuntimeProxy", "real_runtime"), new quark.reflect.Field("quark.HTTPServlet", "http_servlet_impl")];
    (this).methods = [new quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method(), new quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method(), new quark_spi_api_tracing_HTTPServletProxy_onServletError_Method(), new quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method(), new quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method()];
}
exports.quark_spi_api_tracing_HTTPServletProxy = quark_spi_api_tracing_HTTPServletProxy;
_qrt.util.inherits(quark_spi_api_tracing_HTTPServletProxy, quark.reflect.Class);

function quark_spi_api_tracing_HTTPServletProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPServletProxy.prototype.__init_fields__ = quark_spi_api_tracing_HTTPServletProxy__init_fields__;
quark_spi_api_tracing_HTTPServletProxy.singleton = new quark_spi_api_tracing_HTTPServletProxy();
function quark_spi_api_tracing_HTTPServletProxy_construct(args) {
    return new quark.spi_api_tracing.HTTPServletProxy((args)[0], (args)[1], (args)[2]);
}
quark_spi_api_tracing_HTTPServletProxy.prototype.construct = quark_spi_api_tracing_HTTPServletProxy_construct;

function quark_spi_api_tracing_HTTPServletProxy__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy.prototype._getClass = quark_spi_api_tracing_HTTPServletProxy__getClass;

function quark_spi_api_tracing_HTTPServletProxy__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPServletProxy.prototype._getField = quark_spi_api_tracing_HTTPServletProxy__getField;

function quark_spi_api_tracing_HTTPServletProxy__setField(name, value) {}
quark_spi_api_tracing_HTTPServletProxy.prototype._setField = quark_spi_api_tracing_HTTPServletProxy__setField;


// CLASS quark_spi_api_tracing_WSServletProxy_onWSConnect_Method

function quark_spi_api_tracing_WSServletProxy_onWSConnect_Method() {
    quark_spi_api_tracing_WSServletProxy_onWSConnect_Method.super_.call(this, "quark.WSHandler", "onWSConnect", ["quark.HTTPRequest"]);
}
exports.quark_spi_api_tracing_WSServletProxy_onWSConnect_Method = quark_spi_api_tracing_WSServletProxy_onWSConnect_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSServletProxy_onWSConnect_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSServletProxy_onWSConnect_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSServletProxy_onWSConnect_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSServletProxy_onWSConnect_Method__init_fields__;

function quark_spi_api_tracing_WSServletProxy_onWSConnect_Method_invoke(object, args) {
    var obj = object;
    return (obj).onWSConnect((args)[0]);
}
quark_spi_api_tracing_WSServletProxy_onWSConnect_Method.prototype.invoke = quark_spi_api_tracing_WSServletProxy_onWSConnect_Method_invoke;

function quark_spi_api_tracing_WSServletProxy_onWSConnect_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSServletProxy_onWSConnect_Method.prototype._getClass = quark_spi_api_tracing_WSServletProxy_onWSConnect_Method__getClass;

function quark_spi_api_tracing_WSServletProxy_onWSConnect_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSServletProxy_onWSConnect_Method.prototype._getField = quark_spi_api_tracing_WSServletProxy_onWSConnect_Method__getField;

function quark_spi_api_tracing_WSServletProxy_onWSConnect_Method__setField(name, value) {}
quark_spi_api_tracing_WSServletProxy_onWSConnect_Method.prototype._setField = quark_spi_api_tracing_WSServletProxy_onWSConnect_Method__setField;

// CLASS quark_spi_api_tracing_WSServletProxy_onServletInit_Method

function quark_spi_api_tracing_WSServletProxy_onServletInit_Method() {
    quark_spi_api_tracing_WSServletProxy_onServletInit_Method.super_.call(this, "quark.void", "onServletInit", ["quark.String", "quark.Runtime"]);
}
exports.quark_spi_api_tracing_WSServletProxy_onServletInit_Method = quark_spi_api_tracing_WSServletProxy_onServletInit_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSServletProxy_onServletInit_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSServletProxy_onServletInit_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSServletProxy_onServletInit_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSServletProxy_onServletInit_Method__init_fields__;

function quark_spi_api_tracing_WSServletProxy_onServletInit_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletInit((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_WSServletProxy_onServletInit_Method.prototype.invoke = quark_spi_api_tracing_WSServletProxy_onServletInit_Method_invoke;

function quark_spi_api_tracing_WSServletProxy_onServletInit_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSServletProxy_onServletInit_Method.prototype._getClass = quark_spi_api_tracing_WSServletProxy_onServletInit_Method__getClass;

function quark_spi_api_tracing_WSServletProxy_onServletInit_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSServletProxy_onServletInit_Method.prototype._getField = quark_spi_api_tracing_WSServletProxy_onServletInit_Method__getField;

function quark_spi_api_tracing_WSServletProxy_onServletInit_Method__setField(name, value) {}
quark_spi_api_tracing_WSServletProxy_onServletInit_Method.prototype._setField = quark_spi_api_tracing_WSServletProxy_onServletInit_Method__setField;

// CLASS quark_spi_api_tracing_WSServletProxy_onServletError_Method

function quark_spi_api_tracing_WSServletProxy_onServletError_Method() {
    quark_spi_api_tracing_WSServletProxy_onServletError_Method.super_.call(this, "quark.void", "onServletError", ["quark.String", "quark.String"]);
}
exports.quark_spi_api_tracing_WSServletProxy_onServletError_Method = quark_spi_api_tracing_WSServletProxy_onServletError_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSServletProxy_onServletError_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSServletProxy_onServletError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSServletProxy_onServletError_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSServletProxy_onServletError_Method__init_fields__;

function quark_spi_api_tracing_WSServletProxy_onServletError_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletError((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_WSServletProxy_onServletError_Method.prototype.invoke = quark_spi_api_tracing_WSServletProxy_onServletError_Method_invoke;

function quark_spi_api_tracing_WSServletProxy_onServletError_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSServletProxy_onServletError_Method.prototype._getClass = quark_spi_api_tracing_WSServletProxy_onServletError_Method__getClass;

function quark_spi_api_tracing_WSServletProxy_onServletError_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSServletProxy_onServletError_Method.prototype._getField = quark_spi_api_tracing_WSServletProxy_onServletError_Method__getField;

function quark_spi_api_tracing_WSServletProxy_onServletError_Method__setField(name, value) {}
quark_spi_api_tracing_WSServletProxy_onServletError_Method.prototype._setField = quark_spi_api_tracing_WSServletProxy_onServletError_Method__setField;

// CLASS quark_spi_api_tracing_WSServletProxy_onServletEnd_Method

function quark_spi_api_tracing_WSServletProxy_onServletEnd_Method() {
    quark_spi_api_tracing_WSServletProxy_onServletEnd_Method.super_.call(this, "quark.void", "onServletEnd", ["quark.String"]);
}
exports.quark_spi_api_tracing_WSServletProxy_onServletEnd_Method = quark_spi_api_tracing_WSServletProxy_onServletEnd_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSServletProxy_onServletEnd_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSServletProxy_onServletEnd_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSServletProxy_onServletEnd_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSServletProxy_onServletEnd_Method__init_fields__;

function quark_spi_api_tracing_WSServletProxy_onServletEnd_Method_invoke(object, args) {
    var obj = object;
    (obj).onServletEnd((args)[0]);
    return null;
}
quark_spi_api_tracing_WSServletProxy_onServletEnd_Method.prototype.invoke = quark_spi_api_tracing_WSServletProxy_onServletEnd_Method_invoke;

function quark_spi_api_tracing_WSServletProxy_onServletEnd_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSServletProxy_onServletEnd_Method.prototype._getClass = quark_spi_api_tracing_WSServletProxy_onServletEnd_Method__getClass;

function quark_spi_api_tracing_WSServletProxy_onServletEnd_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSServletProxy_onServletEnd_Method.prototype._getField = quark_spi_api_tracing_WSServletProxy_onServletEnd_Method__getField;

function quark_spi_api_tracing_WSServletProxy_onServletEnd_Method__setField(name, value) {}
quark_spi_api_tracing_WSServletProxy_onServletEnd_Method.prototype._setField = quark_spi_api_tracing_WSServletProxy_onServletEnd_Method__setField;

// CLASS quark_spi_api_tracing_WSServletProxy_serveWS_Method

function quark_spi_api_tracing_WSServletProxy_serveWS_Method() {
    quark_spi_api_tracing_WSServletProxy_serveWS_Method.super_.call(this, "quark.void", "serveWS", ["quark.String"]);
}
exports.quark_spi_api_tracing_WSServletProxy_serveWS_Method = quark_spi_api_tracing_WSServletProxy_serveWS_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSServletProxy_serveWS_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSServletProxy_serveWS_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSServletProxy_serveWS_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSServletProxy_serveWS_Method__init_fields__;

function quark_spi_api_tracing_WSServletProxy_serveWS_Method_invoke(object, args) {
    var obj = object;
    (obj).serveWS((args)[0]);
    return null;
}
quark_spi_api_tracing_WSServletProxy_serveWS_Method.prototype.invoke = quark_spi_api_tracing_WSServletProxy_serveWS_Method_invoke;

function quark_spi_api_tracing_WSServletProxy_serveWS_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSServletProxy_serveWS_Method.prototype._getClass = quark_spi_api_tracing_WSServletProxy_serveWS_Method__getClass;

function quark_spi_api_tracing_WSServletProxy_serveWS_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSServletProxy_serveWS_Method.prototype._getField = quark_spi_api_tracing_WSServletProxy_serveWS_Method__getField;

function quark_spi_api_tracing_WSServletProxy_serveWS_Method__setField(name, value) {}
quark_spi_api_tracing_WSServletProxy_serveWS_Method.prototype._setField = quark_spi_api_tracing_WSServletProxy_serveWS_Method__setField;

// CLASS quark_spi_api_tracing_WSServletProxy

function quark_spi_api_tracing_WSServletProxy() {
    quark_spi_api_tracing_WSServletProxy.super_.call(this, "quark.spi_api_tracing.WSServletProxy");
    (this).name = "quark.spi_api_tracing.WSServletProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.Servlet", "servlet_impl"), new quark.reflect.Field("quark.spi_api_tracing.RuntimeProxy", "real_runtime"), new quark.reflect.Field("quark.WSServlet", "ws_servlet_impl")];
    (this).methods = [new quark_spi_api_tracing_WSServletProxy_onWSConnect_Method(), new quark_spi_api_tracing_WSServletProxy_onServletInit_Method(), new quark_spi_api_tracing_WSServletProxy_onServletError_Method(), new quark_spi_api_tracing_WSServletProxy_onServletEnd_Method(), new quark_spi_api_tracing_WSServletProxy_serveWS_Method()];
}
exports.quark_spi_api_tracing_WSServletProxy = quark_spi_api_tracing_WSServletProxy;
_qrt.util.inherits(quark_spi_api_tracing_WSServletProxy, quark.reflect.Class);

function quark_spi_api_tracing_WSServletProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSServletProxy.prototype.__init_fields__ = quark_spi_api_tracing_WSServletProxy__init_fields__;
quark_spi_api_tracing_WSServletProxy.singleton = new quark_spi_api_tracing_WSServletProxy();
function quark_spi_api_tracing_WSServletProxy_construct(args) {
    return new quark.spi_api_tracing.WSServletProxy((args)[0], (args)[1], (args)[2]);
}
quark_spi_api_tracing_WSServletProxy.prototype.construct = quark_spi_api_tracing_WSServletProxy_construct;

function quark_spi_api_tracing_WSServletProxy__getClass() {
    return null;
}
quark_spi_api_tracing_WSServletProxy.prototype._getClass = quark_spi_api_tracing_WSServletProxy__getClass;

function quark_spi_api_tracing_WSServletProxy__getField(name) {
    return null;
}
quark_spi_api_tracing_WSServletProxy.prototype._getField = quark_spi_api_tracing_WSServletProxy__getField;

function quark_spi_api_tracing_WSServletProxy__setField(name, value) {}
quark_spi_api_tracing_WSServletProxy.prototype._setField = quark_spi_api_tracing_WSServletProxy__setField;


// CLASS quark_spi_api_tracing_TaskProxy_onExecute_Method

function quark_spi_api_tracing_TaskProxy_onExecute_Method() {
    quark_spi_api_tracing_TaskProxy_onExecute_Method.super_.call(this, "quark.void", "onExecute", ["quark.Runtime"]);
}
exports.quark_spi_api_tracing_TaskProxy_onExecute_Method = quark_spi_api_tracing_TaskProxy_onExecute_Method;
_qrt.util.inherits(quark_spi_api_tracing_TaskProxy_onExecute_Method, quark.reflect.Method);

function quark_spi_api_tracing_TaskProxy_onExecute_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_TaskProxy_onExecute_Method.prototype.__init_fields__ = quark_spi_api_tracing_TaskProxy_onExecute_Method__init_fields__;

function quark_spi_api_tracing_TaskProxy_onExecute_Method_invoke(object, args) {
    var obj = object;
    (obj).onExecute((args)[0]);
    return null;
}
quark_spi_api_tracing_TaskProxy_onExecute_Method.prototype.invoke = quark_spi_api_tracing_TaskProxy_onExecute_Method_invoke;

function quark_spi_api_tracing_TaskProxy_onExecute_Method__getClass() {
    return null;
}
quark_spi_api_tracing_TaskProxy_onExecute_Method.prototype._getClass = quark_spi_api_tracing_TaskProxy_onExecute_Method__getClass;

function quark_spi_api_tracing_TaskProxy_onExecute_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_TaskProxy_onExecute_Method.prototype._getField = quark_spi_api_tracing_TaskProxy_onExecute_Method__getField;

function quark_spi_api_tracing_TaskProxy_onExecute_Method__setField(name, value) {}
quark_spi_api_tracing_TaskProxy_onExecute_Method.prototype._setField = quark_spi_api_tracing_TaskProxy_onExecute_Method__setField;

// CLASS quark_spi_api_tracing_TaskProxy

function quark_spi_api_tracing_TaskProxy() {
    quark_spi_api_tracing_TaskProxy.super_.call(this, "quark.spi_api_tracing.TaskProxy");
    (this).name = "quark.spi_api_tracing.TaskProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.Task", "task_impl"), new quark.reflect.Field("quark.spi_api_tracing.RuntimeProxy", "real_runtime")];
    (this).methods = [new quark_spi_api_tracing_TaskProxy_onExecute_Method()];
}
exports.quark_spi_api_tracing_TaskProxy = quark_spi_api_tracing_TaskProxy;
_qrt.util.inherits(quark_spi_api_tracing_TaskProxy, quark.reflect.Class);

function quark_spi_api_tracing_TaskProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_TaskProxy.prototype.__init_fields__ = quark_spi_api_tracing_TaskProxy__init_fields__;
quark_spi_api_tracing_TaskProxy.singleton = new quark_spi_api_tracing_TaskProxy();
function quark_spi_api_tracing_TaskProxy_construct(args) {
    return new quark.spi_api_tracing.TaskProxy((args)[0], (args)[1], (args)[2]);
}
quark_spi_api_tracing_TaskProxy.prototype.construct = quark_spi_api_tracing_TaskProxy_construct;

function quark_spi_api_tracing_TaskProxy__getClass() {
    return null;
}
quark_spi_api_tracing_TaskProxy.prototype._getClass = quark_spi_api_tracing_TaskProxy__getClass;

function quark_spi_api_tracing_TaskProxy__getField(name) {
    return null;
}
quark_spi_api_tracing_TaskProxy.prototype._getField = quark_spi_api_tracing_TaskProxy__getField;

function quark_spi_api_tracing_TaskProxy__setField(name, value) {}
quark_spi_api_tracing_TaskProxy.prototype._setField = quark_spi_api_tracing_TaskProxy__setField;


// CLASS quark_spi_api_tracing_WebSocketProxy_send_Method

function quark_spi_api_tracing_WebSocketProxy_send_Method() {
    quark_spi_api_tracing_WebSocketProxy_send_Method.super_.call(this, "quark.bool", "send", ["quark.String"]);
}
exports.quark_spi_api_tracing_WebSocketProxy_send_Method = quark_spi_api_tracing_WebSocketProxy_send_Method;
_qrt.util.inherits(quark_spi_api_tracing_WebSocketProxy_send_Method, quark.reflect.Method);

function quark_spi_api_tracing_WebSocketProxy_send_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WebSocketProxy_send_Method.prototype.__init_fields__ = quark_spi_api_tracing_WebSocketProxy_send_Method__init_fields__;

function quark_spi_api_tracing_WebSocketProxy_send_Method_invoke(object, args) {
    var obj = object;
    return (obj).send((args)[0]);
}
quark_spi_api_tracing_WebSocketProxy_send_Method.prototype.invoke = quark_spi_api_tracing_WebSocketProxy_send_Method_invoke;

function quark_spi_api_tracing_WebSocketProxy_send_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WebSocketProxy_send_Method.prototype._getClass = quark_spi_api_tracing_WebSocketProxy_send_Method__getClass;

function quark_spi_api_tracing_WebSocketProxy_send_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WebSocketProxy_send_Method.prototype._getField = quark_spi_api_tracing_WebSocketProxy_send_Method__getField;

function quark_spi_api_tracing_WebSocketProxy_send_Method__setField(name, value) {}
quark_spi_api_tracing_WebSocketProxy_send_Method.prototype._setField = quark_spi_api_tracing_WebSocketProxy_send_Method__setField;

// CLASS quark_spi_api_tracing_WebSocketProxy_sendBinary_Method

function quark_spi_api_tracing_WebSocketProxy_sendBinary_Method() {
    quark_spi_api_tracing_WebSocketProxy_sendBinary_Method.super_.call(this, "quark.bool", "sendBinary", ["quark.Buffer"]);
}
exports.quark_spi_api_tracing_WebSocketProxy_sendBinary_Method = quark_spi_api_tracing_WebSocketProxy_sendBinary_Method;
_qrt.util.inherits(quark_spi_api_tracing_WebSocketProxy_sendBinary_Method, quark.reflect.Method);

function quark_spi_api_tracing_WebSocketProxy_sendBinary_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WebSocketProxy_sendBinary_Method.prototype.__init_fields__ = quark_spi_api_tracing_WebSocketProxy_sendBinary_Method__init_fields__;

function quark_spi_api_tracing_WebSocketProxy_sendBinary_Method_invoke(object, args) {
    var obj = object;
    return (obj).sendBinary((args)[0]);
}
quark_spi_api_tracing_WebSocketProxy_sendBinary_Method.prototype.invoke = quark_spi_api_tracing_WebSocketProxy_sendBinary_Method_invoke;

function quark_spi_api_tracing_WebSocketProxy_sendBinary_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WebSocketProxy_sendBinary_Method.prototype._getClass = quark_spi_api_tracing_WebSocketProxy_sendBinary_Method__getClass;

function quark_spi_api_tracing_WebSocketProxy_sendBinary_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WebSocketProxy_sendBinary_Method.prototype._getField = quark_spi_api_tracing_WebSocketProxy_sendBinary_Method__getField;

function quark_spi_api_tracing_WebSocketProxy_sendBinary_Method__setField(name, value) {}
quark_spi_api_tracing_WebSocketProxy_sendBinary_Method.prototype._setField = quark_spi_api_tracing_WebSocketProxy_sendBinary_Method__setField;

// CLASS quark_spi_api_tracing_WebSocketProxy_close_Method

function quark_spi_api_tracing_WebSocketProxy_close_Method() {
    quark_spi_api_tracing_WebSocketProxy_close_Method.super_.call(this, "quark.bool", "close", []);
}
exports.quark_spi_api_tracing_WebSocketProxy_close_Method = quark_spi_api_tracing_WebSocketProxy_close_Method;
_qrt.util.inherits(quark_spi_api_tracing_WebSocketProxy_close_Method, quark.reflect.Method);

function quark_spi_api_tracing_WebSocketProxy_close_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WebSocketProxy_close_Method.prototype.__init_fields__ = quark_spi_api_tracing_WebSocketProxy_close_Method__init_fields__;

function quark_spi_api_tracing_WebSocketProxy_close_Method_invoke(object, args) {
    var obj = object;
    return (obj).close();
}
quark_spi_api_tracing_WebSocketProxy_close_Method.prototype.invoke = quark_spi_api_tracing_WebSocketProxy_close_Method_invoke;

function quark_spi_api_tracing_WebSocketProxy_close_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WebSocketProxy_close_Method.prototype._getClass = quark_spi_api_tracing_WebSocketProxy_close_Method__getClass;

function quark_spi_api_tracing_WebSocketProxy_close_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WebSocketProxy_close_Method.prototype._getField = quark_spi_api_tracing_WebSocketProxy_close_Method__getField;

function quark_spi_api_tracing_WebSocketProxy_close_Method__setField(name, value) {}
quark_spi_api_tracing_WebSocketProxy_close_Method.prototype._setField = quark_spi_api_tracing_WebSocketProxy_close_Method__setField;

// CLASS quark_spi_api_tracing_WebSocketProxy

function quark_spi_api_tracing_WebSocketProxy() {
    quark_spi_api_tracing_WebSocketProxy.super_.call(this, "quark.spi_api_tracing.WebSocketProxy");
    (this).name = "quark.spi_api_tracing.WebSocketProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.WebSocket", "socket_impl")];
    (this).methods = [new quark_spi_api_tracing_WebSocketProxy_send_Method(), new quark_spi_api_tracing_WebSocketProxy_sendBinary_Method(), new quark_spi_api_tracing_WebSocketProxy_close_Method()];
}
exports.quark_spi_api_tracing_WebSocketProxy = quark_spi_api_tracing_WebSocketProxy;
_qrt.util.inherits(quark_spi_api_tracing_WebSocketProxy, quark.reflect.Class);

function quark_spi_api_tracing_WebSocketProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WebSocketProxy.prototype.__init_fields__ = quark_spi_api_tracing_WebSocketProxy__init_fields__;
quark_spi_api_tracing_WebSocketProxy.singleton = new quark_spi_api_tracing_WebSocketProxy();
function quark_spi_api_tracing_WebSocketProxy_construct(args) {
    return new quark.spi_api_tracing.WebSocketProxy((args)[0], (args)[1]);
}
quark_spi_api_tracing_WebSocketProxy.prototype.construct = quark_spi_api_tracing_WebSocketProxy_construct;

function quark_spi_api_tracing_WebSocketProxy__getClass() {
    return null;
}
quark_spi_api_tracing_WebSocketProxy.prototype._getClass = quark_spi_api_tracing_WebSocketProxy__getClass;

function quark_spi_api_tracing_WebSocketProxy__getField(name) {
    return null;
}
quark_spi_api_tracing_WebSocketProxy.prototype._getField = quark_spi_api_tracing_WebSocketProxy__getField;

function quark_spi_api_tracing_WebSocketProxy__setField(name, value) {}
quark_spi_api_tracing_WebSocketProxy.prototype._setField = quark_spi_api_tracing_WebSocketProxy__setField;


// CLASS quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method

function quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method() {
    quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method.super_.call(this, "quark.spi_api_tracing.WebSocketProxy", "_wrap_socket", ["quark.WebSocket"]);
}
exports.quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method = quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method__init_fields__;

function quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method_invoke(object, args) {
    var obj = object;
    return (obj)._wrap_socket((args)[0]);
}
quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method.prototype.invoke = quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method_invoke;

function quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method.prototype._getClass = quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method__getClass;

function quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method.prototype._getField = quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method__getField;

function quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method__setField(name, value) {}
quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method.prototype._setField = quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method__setField;

// CLASS quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method

function quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method() {
    quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method.super_.call(this, "quark.void", "onWSInit", ["quark.WebSocket"]);
}
exports.quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method = quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method__init_fields__;

function quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSInit((args)[0]);
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method.prototype.invoke = quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method_invoke;

function quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method.prototype._getClass = quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method__getClass;

function quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method.prototype._getField = quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method__getField;

function quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method__setField(name, value) {}
quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method.prototype._setField = quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method__setField;

// CLASS quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method

function quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method() {
    quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method.super_.call(this, "quark.void", "onWSConnected", ["quark.WebSocket"]);
}
exports.quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method = quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method__init_fields__;

function quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSConnected((args)[0]);
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method.prototype.invoke = quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method_invoke;

function quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method.prototype._getClass = quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method__getClass;

function quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method.prototype._getField = quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method__getField;

function quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method__setField(name, value) {}
quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method.prototype._setField = quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method__setField;

// CLASS quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method

function quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method() {
    quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method.super_.call(this, "quark.void", "onWSMessage", ["quark.WebSocket", "quark.String"]);
}
exports.quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method = quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method__init_fields__;

function quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSMessage((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method.prototype.invoke = quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method_invoke;

function quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method.prototype._getClass = quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method__getClass;

function quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method.prototype._getField = quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method__getField;

function quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method__setField(name, value) {}
quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method.prototype._setField = quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method__setField;

// CLASS quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method

function quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method() {
    quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method.super_.call(this, "quark.void", "onWSBinary", ["quark.WebSocket", "quark.Buffer"]);
}
exports.quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method = quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method__init_fields__;

function quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSBinary((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method.prototype.invoke = quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method_invoke;

function quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method.prototype._getClass = quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method__getClass;

function quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method.prototype._getField = quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method__getField;

function quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method__setField(name, value) {}
quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method.prototype._setField = quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method__setField;

// CLASS quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method

function quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method() {
    quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method.super_.call(this, "quark.void", "onWSClosed", ["quark.WebSocket"]);
}
exports.quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method = quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method__init_fields__;

function quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSClosed((args)[0]);
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method.prototype.invoke = quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method_invoke;

function quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method.prototype._getClass = quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method__getClass;

function quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method.prototype._getField = quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method__getField;

function quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method__setField(name, value) {}
quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method.prototype._setField = quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method__setField;

// CLASS quark_spi_api_tracing_WSHandlerProxy_onWSError_Method

function quark_spi_api_tracing_WSHandlerProxy_onWSError_Method() {
    quark_spi_api_tracing_WSHandlerProxy_onWSError_Method.super_.call(this, "quark.void", "onWSError", ["quark.WebSocket"]);
}
exports.quark_spi_api_tracing_WSHandlerProxy_onWSError_Method = quark_spi_api_tracing_WSHandlerProxy_onWSError_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSHandlerProxy_onWSError_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSHandlerProxy_onWSError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSHandlerProxy_onWSError_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSHandlerProxy_onWSError_Method__init_fields__;

function quark_spi_api_tracing_WSHandlerProxy_onWSError_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSError((args)[0]);
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSError_Method.prototype.invoke = quark_spi_api_tracing_WSHandlerProxy_onWSError_Method_invoke;

function quark_spi_api_tracing_WSHandlerProxy_onWSError_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSError_Method.prototype._getClass = quark_spi_api_tracing_WSHandlerProxy_onWSError_Method__getClass;

function quark_spi_api_tracing_WSHandlerProxy_onWSError_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSError_Method.prototype._getField = quark_spi_api_tracing_WSHandlerProxy_onWSError_Method__getField;

function quark_spi_api_tracing_WSHandlerProxy_onWSError_Method__setField(name, value) {}
quark_spi_api_tracing_WSHandlerProxy_onWSError_Method.prototype._setField = quark_spi_api_tracing_WSHandlerProxy_onWSError_Method__setField;

// CLASS quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method

function quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method() {
    quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method.super_.call(this, "quark.void", "onWSFinal", ["quark.WebSocket"]);
}
exports.quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method = quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method;
_qrt.util.inherits(quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method, quark.reflect.Method);

function quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method.prototype.__init_fields__ = quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method__init_fields__;

function quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method_invoke(object, args) {
    var obj = object;
    (obj).onWSFinal((args)[0]);
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method.prototype.invoke = quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method_invoke;

function quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method__getClass() {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method.prototype._getClass = quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method__getClass;

function quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method.prototype._getField = quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method__getField;

function quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method__setField(name, value) {}
quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method.prototype._setField = quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method__setField;

// CLASS quark_spi_api_tracing_WSHandlerProxy

function quark_spi_api_tracing_WSHandlerProxy() {
    quark_spi_api_tracing_WSHandlerProxy.super_.call(this, "quark.spi_api_tracing.WSHandlerProxy");
    (this).name = "quark.spi_api_tracing.WSHandlerProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.WSHandler", "handler_impl"), new quark.reflect.Field("quark.spi_api_tracing.WebSocketProxy", "_wrapped_socket")];
    (this).methods = [new quark_spi_api_tracing_WSHandlerProxy__wrap_socket_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSError_Method(), new quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method()];
}
exports.quark_spi_api_tracing_WSHandlerProxy = quark_spi_api_tracing_WSHandlerProxy;
_qrt.util.inherits(quark_spi_api_tracing_WSHandlerProxy, quark.reflect.Class);

function quark_spi_api_tracing_WSHandlerProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_WSHandlerProxy.prototype.__init_fields__ = quark_spi_api_tracing_WSHandlerProxy__init_fields__;
quark_spi_api_tracing_WSHandlerProxy.singleton = new quark_spi_api_tracing_WSHandlerProxy();
function quark_spi_api_tracing_WSHandlerProxy_construct(args) {
    return new quark.spi_api_tracing.WSHandlerProxy((args)[0], (args)[1]);
}
quark_spi_api_tracing_WSHandlerProxy.prototype.construct = quark_spi_api_tracing_WSHandlerProxy_construct;

function quark_spi_api_tracing_WSHandlerProxy__getClass() {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy.prototype._getClass = quark_spi_api_tracing_WSHandlerProxy__getClass;

function quark_spi_api_tracing_WSHandlerProxy__getField(name) {
    return null;
}
quark_spi_api_tracing_WSHandlerProxy.prototype._getField = quark_spi_api_tracing_WSHandlerProxy__getField;

function quark_spi_api_tracing_WSHandlerProxy__setField(name, value) {}
quark_spi_api_tracing_WSHandlerProxy.prototype._setField = quark_spi_api_tracing_WSHandlerProxy__setField;


// CLASS quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method() {
    quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method.super_.call(this, "quark.void", "onHTTPInit", ["quark.HTTPRequest"]);
}
exports.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method__init_fields__;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPInit((args)[0]);
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method.prototype.invoke = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method_invoke;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method.prototype._getClass = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method__getClass;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method.prototype._getField = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method__getField;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method.prototype._setField = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method__setField;

// CLASS quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method() {
    quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method.super_.call(this, "quark.void", "onHTTPResponse", ["quark.HTTPRequest", "quark.HTTPResponse"]);
}
exports.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method__init_fields__;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPResponse((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method.prototype.invoke = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method_invoke;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method.prototype._getClass = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method__getClass;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method.prototype._getField = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method__getField;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method.prototype._setField = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method__setField;

// CLASS quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method() {
    quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method.super_.call(this, "quark.void", "onHTTPError", ["quark.HTTPRequest", "quark.String"]);
}
exports.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method__init_fields__;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPError((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method.prototype.invoke = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method_invoke;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method.prototype._getClass = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method__getClass;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method.prototype._getField = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method__getField;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method.prototype._setField = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method__setField;

// CLASS quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method() {
    quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method.super_.call(this, "quark.void", "onHTTPFinal", ["quark.HTTPRequest"]);
}
exports.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method;
_qrt.util.inherits(quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method, quark.reflect.Method);

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method.prototype.__init_fields__ = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method__init_fields__;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method_invoke(object, args) {
    var obj = object;
    (obj).onHTTPFinal((args)[0]);
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method.prototype.invoke = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method_invoke;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method.prototype._getClass = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method__getClass;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method.prototype._getField = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method__getField;

function quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method__setField(name, value) {}
quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method.prototype._setField = quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method__setField;

// CLASS quark_spi_api_tracing_HTTPHandlerProxy

function quark_spi_api_tracing_HTTPHandlerProxy() {
    quark_spi_api_tracing_HTTPHandlerProxy.super_.call(this, "quark.spi_api_tracing.HTTPHandlerProxy");
    (this).name = "quark.spi_api_tracing.HTTPHandlerProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.HTTPHandler", "handler_impl"), new quark.reflect.Field("quark.spi_api_tracing.HTTPRequestProxy", "wrapped_request")];
    (this).methods = [new quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method(), new quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method(), new quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method(), new quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method()];
}
exports.quark_spi_api_tracing_HTTPHandlerProxy = quark_spi_api_tracing_HTTPHandlerProxy;
_qrt.util.inherits(quark_spi_api_tracing_HTTPHandlerProxy, quark.reflect.Class);

function quark_spi_api_tracing_HTTPHandlerProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_HTTPHandlerProxy.prototype.__init_fields__ = quark_spi_api_tracing_HTTPHandlerProxy__init_fields__;
quark_spi_api_tracing_HTTPHandlerProxy.singleton = new quark_spi_api_tracing_HTTPHandlerProxy();
function quark_spi_api_tracing_HTTPHandlerProxy_construct(args) {
    return new quark.spi_api_tracing.HTTPHandlerProxy((args)[0], (args)[1], (args)[2]);
}
quark_spi_api_tracing_HTTPHandlerProxy.prototype.construct = quark_spi_api_tracing_HTTPHandlerProxy_construct;

function quark_spi_api_tracing_HTTPHandlerProxy__getClass() {
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy.prototype._getClass = quark_spi_api_tracing_HTTPHandlerProxy__getClass;

function quark_spi_api_tracing_HTTPHandlerProxy__getField(name) {
    return null;
}
quark_spi_api_tracing_HTTPHandlerProxy.prototype._getField = quark_spi_api_tracing_HTTPHandlerProxy__getField;

function quark_spi_api_tracing_HTTPHandlerProxy__setField(name, value) {}
quark_spi_api_tracing_HTTPHandlerProxy.prototype._setField = quark_spi_api_tracing_HTTPHandlerProxy__setField;


// CLASS quark_spi_api_tracing_RuntimeProxy_open_Method

function quark_spi_api_tracing_RuntimeProxy_open_Method() {
    quark_spi_api_tracing_RuntimeProxy_open_Method.super_.call(this, "quark.void", "open", ["quark.String", "quark.WSHandler"]);
}
exports.quark_spi_api_tracing_RuntimeProxy_open_Method = quark_spi_api_tracing_RuntimeProxy_open_Method;
_qrt.util.inherits(quark_spi_api_tracing_RuntimeProxy_open_Method, quark.reflect.Method);

function quark_spi_api_tracing_RuntimeProxy_open_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_RuntimeProxy_open_Method.prototype.__init_fields__ = quark_spi_api_tracing_RuntimeProxy_open_Method__init_fields__;

function quark_spi_api_tracing_RuntimeProxy_open_Method_invoke(object, args) {
    var obj = object;
    (obj).open((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_RuntimeProxy_open_Method.prototype.invoke = quark_spi_api_tracing_RuntimeProxy_open_Method_invoke;

function quark_spi_api_tracing_RuntimeProxy_open_Method__getClass() {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_open_Method.prototype._getClass = quark_spi_api_tracing_RuntimeProxy_open_Method__getClass;

function quark_spi_api_tracing_RuntimeProxy_open_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_open_Method.prototype._getField = quark_spi_api_tracing_RuntimeProxy_open_Method__getField;

function quark_spi_api_tracing_RuntimeProxy_open_Method__setField(name, value) {}
quark_spi_api_tracing_RuntimeProxy_open_Method.prototype._setField = quark_spi_api_tracing_RuntimeProxy_open_Method__setField;

// CLASS quark_spi_api_tracing_RuntimeProxy_request_Method

function quark_spi_api_tracing_RuntimeProxy_request_Method() {
    quark_spi_api_tracing_RuntimeProxy_request_Method.super_.call(this, "quark.void", "request", ["quark.HTTPRequest", "quark.HTTPHandler"]);
}
exports.quark_spi_api_tracing_RuntimeProxy_request_Method = quark_spi_api_tracing_RuntimeProxy_request_Method;
_qrt.util.inherits(quark_spi_api_tracing_RuntimeProxy_request_Method, quark.reflect.Method);

function quark_spi_api_tracing_RuntimeProxy_request_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_RuntimeProxy_request_Method.prototype.__init_fields__ = quark_spi_api_tracing_RuntimeProxy_request_Method__init_fields__;

function quark_spi_api_tracing_RuntimeProxy_request_Method_invoke(object, args) {
    var obj = object;
    (obj).request((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_RuntimeProxy_request_Method.prototype.invoke = quark_spi_api_tracing_RuntimeProxy_request_Method_invoke;

function quark_spi_api_tracing_RuntimeProxy_request_Method__getClass() {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_request_Method.prototype._getClass = quark_spi_api_tracing_RuntimeProxy_request_Method__getClass;

function quark_spi_api_tracing_RuntimeProxy_request_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_request_Method.prototype._getField = quark_spi_api_tracing_RuntimeProxy_request_Method__getField;

function quark_spi_api_tracing_RuntimeProxy_request_Method__setField(name, value) {}
quark_spi_api_tracing_RuntimeProxy_request_Method.prototype._setField = quark_spi_api_tracing_RuntimeProxy_request_Method__setField;

// CLASS quark_spi_api_tracing_RuntimeProxy_schedule_Method

function quark_spi_api_tracing_RuntimeProxy_schedule_Method() {
    quark_spi_api_tracing_RuntimeProxy_schedule_Method.super_.call(this, "quark.void", "schedule", ["quark.Task", "quark.float"]);
}
exports.quark_spi_api_tracing_RuntimeProxy_schedule_Method = quark_spi_api_tracing_RuntimeProxy_schedule_Method;
_qrt.util.inherits(quark_spi_api_tracing_RuntimeProxy_schedule_Method, quark.reflect.Method);

function quark_spi_api_tracing_RuntimeProxy_schedule_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_RuntimeProxy_schedule_Method.prototype.__init_fields__ = quark_spi_api_tracing_RuntimeProxy_schedule_Method__init_fields__;

function quark_spi_api_tracing_RuntimeProxy_schedule_Method_invoke(object, args) {
    var obj = object;
    (obj).schedule((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_RuntimeProxy_schedule_Method.prototype.invoke = quark_spi_api_tracing_RuntimeProxy_schedule_Method_invoke;

function quark_spi_api_tracing_RuntimeProxy_schedule_Method__getClass() {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_schedule_Method.prototype._getClass = quark_spi_api_tracing_RuntimeProxy_schedule_Method__getClass;

function quark_spi_api_tracing_RuntimeProxy_schedule_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_schedule_Method.prototype._getField = quark_spi_api_tracing_RuntimeProxy_schedule_Method__getField;

function quark_spi_api_tracing_RuntimeProxy_schedule_Method__setField(name, value) {}
quark_spi_api_tracing_RuntimeProxy_schedule_Method.prototype._setField = quark_spi_api_tracing_RuntimeProxy_schedule_Method__setField;

// CLASS quark_spi_api_tracing_RuntimeProxy_codec_Method

function quark_spi_api_tracing_RuntimeProxy_codec_Method() {
    quark_spi_api_tracing_RuntimeProxy_codec_Method.super_.call(this, "quark.Codec", "codec", []);
}
exports.quark_spi_api_tracing_RuntimeProxy_codec_Method = quark_spi_api_tracing_RuntimeProxy_codec_Method;
_qrt.util.inherits(quark_spi_api_tracing_RuntimeProxy_codec_Method, quark.reflect.Method);

function quark_spi_api_tracing_RuntimeProxy_codec_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_RuntimeProxy_codec_Method.prototype.__init_fields__ = quark_spi_api_tracing_RuntimeProxy_codec_Method__init_fields__;

function quark_spi_api_tracing_RuntimeProxy_codec_Method_invoke(object, args) {
    var obj = object;
    return (obj).codec();
}
quark_spi_api_tracing_RuntimeProxy_codec_Method.prototype.invoke = quark_spi_api_tracing_RuntimeProxy_codec_Method_invoke;

function quark_spi_api_tracing_RuntimeProxy_codec_Method__getClass() {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_codec_Method.prototype._getClass = quark_spi_api_tracing_RuntimeProxy_codec_Method__getClass;

function quark_spi_api_tracing_RuntimeProxy_codec_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_codec_Method.prototype._getField = quark_spi_api_tracing_RuntimeProxy_codec_Method__getField;

function quark_spi_api_tracing_RuntimeProxy_codec_Method__setField(name, value) {}
quark_spi_api_tracing_RuntimeProxy_codec_Method.prototype._setField = quark_spi_api_tracing_RuntimeProxy_codec_Method__setField;

// CLASS quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method

function quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method() {
    quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method.super_.call(this, "quark.void", "serveHTTP", ["quark.String", "quark.HTTPServlet"]);
}
exports.quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method = quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method;
_qrt.util.inherits(quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method, quark.reflect.Method);

function quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method.prototype.__init_fields__ = quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method__init_fields__;

function quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method_invoke(object, args) {
    var obj = object;
    (obj).serveHTTP((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method.prototype.invoke = quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method_invoke;

function quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method__getClass() {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method.prototype._getClass = quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method__getClass;

function quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method.prototype._getField = quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method__getField;

function quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method__setField(name, value) {}
quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method.prototype._setField = quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method__setField;

// CLASS quark_spi_api_tracing_RuntimeProxy_serveWS_Method

function quark_spi_api_tracing_RuntimeProxy_serveWS_Method() {
    quark_spi_api_tracing_RuntimeProxy_serveWS_Method.super_.call(this, "quark.void", "serveWS", ["quark.String", "quark.WSServlet"]);
}
exports.quark_spi_api_tracing_RuntimeProxy_serveWS_Method = quark_spi_api_tracing_RuntimeProxy_serveWS_Method;
_qrt.util.inherits(quark_spi_api_tracing_RuntimeProxy_serveWS_Method, quark.reflect.Method);

function quark_spi_api_tracing_RuntimeProxy_serveWS_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_RuntimeProxy_serveWS_Method.prototype.__init_fields__ = quark_spi_api_tracing_RuntimeProxy_serveWS_Method__init_fields__;

function quark_spi_api_tracing_RuntimeProxy_serveWS_Method_invoke(object, args) {
    var obj = object;
    (obj).serveWS((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_RuntimeProxy_serveWS_Method.prototype.invoke = quark_spi_api_tracing_RuntimeProxy_serveWS_Method_invoke;

function quark_spi_api_tracing_RuntimeProxy_serveWS_Method__getClass() {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_serveWS_Method.prototype._getClass = quark_spi_api_tracing_RuntimeProxy_serveWS_Method__getClass;

function quark_spi_api_tracing_RuntimeProxy_serveWS_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_serveWS_Method.prototype._getField = quark_spi_api_tracing_RuntimeProxy_serveWS_Method__getField;

function quark_spi_api_tracing_RuntimeProxy_serveWS_Method__setField(name, value) {}
quark_spi_api_tracing_RuntimeProxy_serveWS_Method.prototype._setField = quark_spi_api_tracing_RuntimeProxy_serveWS_Method__setField;

// CLASS quark_spi_api_tracing_RuntimeProxy_respond_Method

function quark_spi_api_tracing_RuntimeProxy_respond_Method() {
    quark_spi_api_tracing_RuntimeProxy_respond_Method.super_.call(this, "quark.void", "respond", ["quark.HTTPRequest", "quark.HTTPResponse"]);
}
exports.quark_spi_api_tracing_RuntimeProxy_respond_Method = quark_spi_api_tracing_RuntimeProxy_respond_Method;
_qrt.util.inherits(quark_spi_api_tracing_RuntimeProxy_respond_Method, quark.reflect.Method);

function quark_spi_api_tracing_RuntimeProxy_respond_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_RuntimeProxy_respond_Method.prototype.__init_fields__ = quark_spi_api_tracing_RuntimeProxy_respond_Method__init_fields__;

function quark_spi_api_tracing_RuntimeProxy_respond_Method_invoke(object, args) {
    var obj = object;
    (obj).respond((args)[0], (args)[1]);
    return null;
}
quark_spi_api_tracing_RuntimeProxy_respond_Method.prototype.invoke = quark_spi_api_tracing_RuntimeProxy_respond_Method_invoke;

function quark_spi_api_tracing_RuntimeProxy_respond_Method__getClass() {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_respond_Method.prototype._getClass = quark_spi_api_tracing_RuntimeProxy_respond_Method__getClass;

function quark_spi_api_tracing_RuntimeProxy_respond_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_respond_Method.prototype._getField = quark_spi_api_tracing_RuntimeProxy_respond_Method__getField;

function quark_spi_api_tracing_RuntimeProxy_respond_Method__setField(name, value) {}
quark_spi_api_tracing_RuntimeProxy_respond_Method.prototype._setField = quark_spi_api_tracing_RuntimeProxy_respond_Method__setField;

// CLASS quark_spi_api_tracing_RuntimeProxy_fail_Method

function quark_spi_api_tracing_RuntimeProxy_fail_Method() {
    quark_spi_api_tracing_RuntimeProxy_fail_Method.super_.call(this, "quark.void", "fail", ["quark.String"]);
}
exports.quark_spi_api_tracing_RuntimeProxy_fail_Method = quark_spi_api_tracing_RuntimeProxy_fail_Method;
_qrt.util.inherits(quark_spi_api_tracing_RuntimeProxy_fail_Method, quark.reflect.Method);

function quark_spi_api_tracing_RuntimeProxy_fail_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_RuntimeProxy_fail_Method.prototype.__init_fields__ = quark_spi_api_tracing_RuntimeProxy_fail_Method__init_fields__;

function quark_spi_api_tracing_RuntimeProxy_fail_Method_invoke(object, args) {
    var obj = object;
    (obj).fail((args)[0]);
    return null;
}
quark_spi_api_tracing_RuntimeProxy_fail_Method.prototype.invoke = quark_spi_api_tracing_RuntimeProxy_fail_Method_invoke;

function quark_spi_api_tracing_RuntimeProxy_fail_Method__getClass() {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_fail_Method.prototype._getClass = quark_spi_api_tracing_RuntimeProxy_fail_Method__getClass;

function quark_spi_api_tracing_RuntimeProxy_fail_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_fail_Method.prototype._getField = quark_spi_api_tracing_RuntimeProxy_fail_Method__getField;

function quark_spi_api_tracing_RuntimeProxy_fail_Method__setField(name, value) {}
quark_spi_api_tracing_RuntimeProxy_fail_Method.prototype._setField = quark_spi_api_tracing_RuntimeProxy_fail_Method__setField;

// CLASS quark_spi_api_tracing_RuntimeProxy_logger_Method

function quark_spi_api_tracing_RuntimeProxy_logger_Method() {
    quark_spi_api_tracing_RuntimeProxy_logger_Method.super_.call(this, "quark.Logger", "logger", ["quark.String"]);
}
exports.quark_spi_api_tracing_RuntimeProxy_logger_Method = quark_spi_api_tracing_RuntimeProxy_logger_Method;
_qrt.util.inherits(quark_spi_api_tracing_RuntimeProxy_logger_Method, quark.reflect.Method);

function quark_spi_api_tracing_RuntimeProxy_logger_Method__init_fields__() {
    quark.reflect.Method.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_RuntimeProxy_logger_Method.prototype.__init_fields__ = quark_spi_api_tracing_RuntimeProxy_logger_Method__init_fields__;

function quark_spi_api_tracing_RuntimeProxy_logger_Method_invoke(object, args) {
    var obj = object;
    return (obj).logger((args)[0]);
}
quark_spi_api_tracing_RuntimeProxy_logger_Method.prototype.invoke = quark_spi_api_tracing_RuntimeProxy_logger_Method_invoke;

function quark_spi_api_tracing_RuntimeProxy_logger_Method__getClass() {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_logger_Method.prototype._getClass = quark_spi_api_tracing_RuntimeProxy_logger_Method__getClass;

function quark_spi_api_tracing_RuntimeProxy_logger_Method__getField(name) {
    return null;
}
quark_spi_api_tracing_RuntimeProxy_logger_Method.prototype._getField = quark_spi_api_tracing_RuntimeProxy_logger_Method__getField;

function quark_spi_api_tracing_RuntimeProxy_logger_Method__setField(name, value) {}
quark_spi_api_tracing_RuntimeProxy_logger_Method.prototype._setField = quark_spi_api_tracing_RuntimeProxy_logger_Method__setField;

// CLASS quark_spi_api_tracing_RuntimeProxy

function quark_spi_api_tracing_RuntimeProxy() {
    quark_spi_api_tracing_RuntimeProxy.super_.call(this, "quark.spi_api_tracing.RuntimeProxy");
    (this).name = "quark.spi_api_tracing.RuntimeProxy";
    (this).parameters = [];
    (this).fields = [new quark.reflect.Field("quark.spi_api_tracing.Identificator", "namer"), new quark.reflect.Field("quark.String", "id"), new quark.reflect.Field("quark.Logger", "log"), new quark.reflect.Field("quark.Runtime", "impl")];
    (this).methods = [new quark_spi_api_tracing_RuntimeProxy_open_Method(), new quark_spi_api_tracing_RuntimeProxy_request_Method(), new quark_spi_api_tracing_RuntimeProxy_schedule_Method(), new quark_spi_api_tracing_RuntimeProxy_codec_Method(), new quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method(), new quark_spi_api_tracing_RuntimeProxy_serveWS_Method(), new quark_spi_api_tracing_RuntimeProxy_respond_Method(), new quark_spi_api_tracing_RuntimeProxy_fail_Method(), new quark_spi_api_tracing_RuntimeProxy_logger_Method()];
}
exports.quark_spi_api_tracing_RuntimeProxy = quark_spi_api_tracing_RuntimeProxy;
_qrt.util.inherits(quark_spi_api_tracing_RuntimeProxy, quark.reflect.Class);

function quark_spi_api_tracing_RuntimeProxy__init_fields__() {
    quark.reflect.Class.prototype.__init_fields__.call(this);
}
quark_spi_api_tracing_RuntimeProxy.prototype.__init_fields__ = quark_spi_api_tracing_RuntimeProxy__init_fields__;
quark_spi_api_tracing_RuntimeProxy.singleton = new quark_spi_api_tracing_RuntimeProxy();
function quark_spi_api_tracing_RuntimeProxy_construct(args) {
    return new quark.spi_api_tracing.RuntimeProxy((args)[0]);
}
quark_spi_api_tracing_RuntimeProxy.prototype.construct = quark_spi_api_tracing_RuntimeProxy_construct;

function quark_spi_api_tracing_RuntimeProxy__getClass() {
    return null;
}
quark_spi_api_tracing_RuntimeProxy.prototype._getClass = quark_spi_api_tracing_RuntimeProxy__getClass;

function quark_spi_api_tracing_RuntimeProxy__getField(name) {
    return null;
}
quark_spi_api_tracing_RuntimeProxy.prototype._getField = quark_spi_api_tracing_RuntimeProxy__getField;

function quark_spi_api_tracing_RuntimeProxy__setField(name, value) {}
quark_spi_api_tracing_RuntimeProxy.prototype._setField = quark_spi_api_tracing_RuntimeProxy__setField;


// CLASS Root
function Root() {
    this.__init_fields__();
}
exports.Root = Root;

function Root__init_fields__() {}
Root.prototype.__init_fields__ = Root__init_fields__;
Root.quark_Task_md = quark_Task.singleton;
Root.quark_Runtime_md = quark_Runtime.singleton;
Root.quark_ListUtil_quark_Object__md = quark_ListUtil_quark_Object_.singleton;
Root.quark_List_quark_String__md = quark_List_quark_String_.singleton;
Root.quark_List_quark_Object__md = quark_List_quark_Object_.singleton;
Root.quark_List_quark_concurrent_FutureCompletion__md = quark_List_quark_concurrent_FutureCompletion_.singleton;
Root.quark_List_quark_test_Test__md = quark_List_quark_test_Test_.singleton;
Root.quark_Map_quark_Object_quark_Object__md = quark_Map_quark_Object_quark_Object_.singleton;
Root.quark_Map_quark_String_quark_ServiceInstance__md = quark_Map_quark_String_quark_ServiceInstance_.singleton;
Root.quark_logging_Appender_md = quark_logging_Appender.singleton;
Root.quark_logging_Config_md = quark_logging_Config.singleton;
Root.quark_Servlet_md = quark_Servlet.singleton;
Root.quark_Resolver_md = quark_Resolver.singleton;
Root.quark_ResponseHolder_md = quark_ResponseHolder.singleton;
Root.quark_Service_md = quark_Service.singleton;
Root.quark_BaseService_md = quark_BaseService.singleton;
Root.quark_ServiceInstance_md = quark_ServiceInstance.singleton;
Root.quark_DegenerateResolver_md = quark_DegenerateResolver.singleton;
Root.quark_Client_md = quark_Client.singleton;
Root.quark_ServerResponder_md = quark_ServerResponder.singleton;
Root.quark_Server_quark_Object__md = quark_Server_quark_Object_.singleton;
Root.quark_behaviors_RPC_md = quark_behaviors_RPC.singleton;
Root.quark_behaviors_RPCRequest_md = quark_behaviors_RPCRequest.singleton;
Root.quark_behaviors_CircuitBreaker_md = quark_behaviors_CircuitBreaker.singleton;
Root.quark_concurrent_Event_md = quark_concurrent_Event.singleton;
Root.quark_concurrent_FutureListener_md = quark_concurrent_FutureListener.singleton;
Root.quark_concurrent_FutureCompletion_md = quark_concurrent_FutureCompletion.singleton;
Root.quark_concurrent_EventContext_md = quark_concurrent_EventContext.singleton;
Root.quark_concurrent_Future_md = quark_concurrent_Future.singleton;
Root.quark_concurrent_FutureWait_md = quark_concurrent_FutureWait.singleton;
Root.quark_concurrent_Queue_quark_concurrent_Event__md = quark_concurrent_Queue_quark_concurrent_Event_.singleton;
Root.quark_concurrent_CollectorExecutor_md = quark_concurrent_CollectorExecutor.singleton;
Root.quark_concurrent_Collector_md = quark_concurrent_Collector.singleton;
Root.quark_concurrent_TimeoutListener_md = quark_concurrent_TimeoutListener.singleton;
Root.quark_concurrent_TimeoutExpiry_md = quark_concurrent_TimeoutExpiry.singleton;
Root.quark_concurrent_Timeout_md = quark_concurrent_Timeout.singleton;
Root.quark_concurrent_TLSContextInitializer_md = quark_concurrent_TLSContextInitializer.singleton;
Root.quark_concurrent_Context_md = quark_concurrent_Context.singleton;
Root.quark_HTTPHandler_md = quark_HTTPHandler.singleton;
Root.quark_HTTPRequest_md = quark_HTTPRequest.singleton;
Root.quark_HTTPResponse_md = quark_HTTPResponse.singleton;
Root.quark_HTTPServlet_md = quark_HTTPServlet.singleton;
Root.quark_WSHandler_md = quark_WSHandler.singleton;
Root.quark_WebSocket_md = quark_WebSocket.singleton;
Root.quark_WSServlet_md = quark_WSServlet.singleton;
Root.quark_test_TestInitializer_md = quark_test_TestInitializer.singleton;
Root.quark_test_Test_md = quark_test_Test.singleton;
Root.quark_test_MethodTest_md = quark_test_MethodTest.singleton;
Root.quark_test_Harness_md = quark_test_Harness.singleton;
Root.quark_URL_md = quark_URL.singleton;
Root.quark_spi_RuntimeSpi_md = quark_spi_RuntimeSpi.singleton;
Root.quark_spi_RuntimeFactory_md = quark_spi_RuntimeFactory.singleton;
Root.quark_spi_api_ServletProxy_md = quark_spi_api_ServletProxy.singleton;
Root.quark_spi_api_HTTPServletProxy_md = quark_spi_api_HTTPServletProxy.singleton;
Root.quark_spi_api_WSServletProxy_md = quark_spi_api_WSServletProxy.singleton;
Root.quark_spi_api_TaskProxy_md = quark_spi_api_TaskProxy.singleton;
Root.quark_spi_api_RuntimeProxy_md = quark_spi_api_RuntimeProxy.singleton;
Root.quark_spi_api_tracing_Identificator_md = quark_spi_api_tracing_Identificator.singleton;
Root.quark_spi_api_tracing_Identifiable_md = quark_spi_api_tracing_Identifiable.singleton;
Root.quark_spi_api_tracing_ServletProxy_md = quark_spi_api_tracing_ServletProxy.singleton;
Root.quark_spi_api_tracing_HTTPRequestProxy_md = quark_spi_api_tracing_HTTPRequestProxy.singleton;
Root.quark_spi_api_tracing_HTTPResponseProxy_md = quark_spi_api_tracing_HTTPResponseProxy.singleton;
Root.quark_spi_api_tracing_HTTPServletProxy_md = quark_spi_api_tracing_HTTPServletProxy.singleton;
Root.quark_spi_api_tracing_WSServletProxy_md = quark_spi_api_tracing_WSServletProxy.singleton;
Root.quark_spi_api_tracing_TaskProxy_md = quark_spi_api_tracing_TaskProxy.singleton;
Root.quark_spi_api_tracing_WebSocketProxy_md = quark_spi_api_tracing_WebSocketProxy.singleton;
Root.quark_spi_api_tracing_WSHandlerProxy_md = quark_spi_api_tracing_WSHandlerProxy.singleton;
Root.quark_spi_api_tracing_HTTPHandlerProxy_md = quark_spi_api_tracing_HTTPHandlerProxy.singleton;
Root.quark_spi_api_tracing_RuntimeProxy_md = quark_spi_api_tracing_RuntimeProxy.singleton;
function Root__getClass() {
    return null;
}
Root.prototype._getClass = Root__getClass;

function Root__getField(name) {
    return null;
}
Root.prototype._getField = Root__getField;

function Root__setField(name, value) {}
Root.prototype._setField = Root__setField;

var quark = require('../quark/index.js');
exports.quark = quark;
var quark = require('../quark/index.js');
exports.quark = quark;
var quark = require('../quark/index.js');
exports.quark = quark;
var quark = require('../quark/index.js');
exports.quark = quark;
var quark = require('../quark/index.js');
exports.quark = quark;
var quark = require('../quark/index.js');
exports.quark = quark;
var quark = require('../quark/index.js');
exports.quark = quark;
var quark = require('../quark/index.js');
exports.quark = quark;
