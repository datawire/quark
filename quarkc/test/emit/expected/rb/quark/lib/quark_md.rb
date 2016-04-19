module Quark
def self.quark_md; QuarkMd; end
module QuarkMd
require_relative 'quark/reflect' # 0 ('quark',) ()
# for quark_md: require_relative 'quark' # 0 () ()
# for quark_md: require_relative 'quark/concurrent' # 0 ('quark',) ()
# for quark_md: require_relative 'quark/test' # 0 ('quark',) ()
# for quark_md: require_relative 'quark/logging' # 0 ('quark',) ()
# for quark_md: require_relative 'quark/behaviors' # 0 ('quark',) ()
# for quark_md: require_relative 'quark/spi' # 0 ('quark',) ()
# for quark_md: require_relative 'quark/spi_api' # 0 ('quark',) ()
# for quark_md: require_relative 'quark/spi_api_tracing' # 0 ('quark',) ()


def self.quark_Task; QuarkTask; end
class QuarkTask < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_Task.new() }



    def initialize()
        
        super("quark.Task")
        (self).name = "quark.Task"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkTask.unlazy_statics


def self.quark_Runtime; QuarkRuntime; end
class QuarkRuntime < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_Runtime.new() }



    def initialize()
        
        super("quark.Runtime")
        (self).name = "quark.Runtime"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkRuntime.unlazy_statics


def self.quark_ListUtil_quark_Object_; QuarkListUtilQuarkObject; end
class QuarkListUtilQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_ListUtil_quark_Object_.new() }



    def initialize()
        
        super("quark.ListUtil<quark.Object>")
        (self).name = "quark.ListUtil"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.ListUtil.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkListUtilQuarkObject.unlazy_statics


def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_List_quark_String_.new() }



    def initialize()
        
        super("quark.List<quark.String>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkListQuarkString.unlazy_statics


def self.quark_List_quark_Object_; QuarkListQuarkObject; end
class QuarkListQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_List_quark_Object_.new() }



    def initialize()
        
        super("quark.List<quark.Object>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkListQuarkObject.unlazy_statics


def self.quark_List_quark_reflect_Field_; QuarkListQuarkReflectField; end
class QuarkListQuarkReflectField < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_List_quark_reflect_Field_.new() }



    def initialize()
        
        super("quark.List<quark.reflect.Field>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.reflect.Field"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkListQuarkReflectField.unlazy_statics


def self.quark_List_quark_reflect_Method_; QuarkListQuarkReflectMethod; end
class QuarkListQuarkReflectMethod < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_List_quark_reflect_Method_.new() }



    def initialize()
        
        super("quark.List<quark.reflect.Method>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.reflect.Method"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkListQuarkReflectMethod.unlazy_statics


def self.quark_List_quark_reflect_Class_; QuarkListQuarkReflectClass; end
class QuarkListQuarkReflectClass < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_List_quark_reflect_Class_.new() }



    def initialize()
        
        super("quark.List<quark.reflect.Class>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.reflect.Class"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkListQuarkReflectClass.unlazy_statics


def self.quark_List_quark_concurrent_FutureCompletion_; QuarkListQuarkConcurrentFutureCompletion; end
class QuarkListQuarkConcurrentFutureCompletion < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_List_quark_concurrent_FutureCompletion_.new() }



    def initialize()
        
        super("quark.List<quark.concurrent.FutureCompletion>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.concurrent.FutureCompletion"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkListQuarkConcurrentFutureCompletion.unlazy_statics


def self.quark_List_quark_test_Test_; QuarkListQuarkTestTest; end
class QuarkListQuarkTestTest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_List_quark_test_Test_.new() }



    def initialize()
        
        super("quark.List<quark.test.Test>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.test.Test"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkListQuarkTestTest.unlazy_statics


def self.quark_Map_quark_Object_quark_Object_; QuarkMapQuarkObjectQuarkObject; end
class QuarkMapQuarkObjectQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_Map_quark_Object_quark_Object_.new() }



    def initialize()
        
        super("quark.Map<quark.Object,quark.Object>")
        (self).name = "quark.Map"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object", "quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Hash.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkMapQuarkObjectQuarkObject.unlazy_statics


def self.quark_Map_quark_String_quark_reflect_Class_; QuarkMapQuarkStringQuarkReflectClass; end
class QuarkMapQuarkStringQuarkReflectClass < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_Map_quark_String_quark_reflect_Class_.new() }



    def initialize()
        
        super("quark.Map<quark.String,quark.reflect.Class>")
        (self).name = "quark.Map"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String", "quark.reflect.Class"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Hash.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkMapQuarkStringQuarkReflectClass.unlazy_statics


def self.quark_Map_quark_String_quark_Object_; QuarkMapQuarkStringQuarkObject; end
class QuarkMapQuarkStringQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_Map_quark_String_quark_Object_.new() }



    def initialize()
        
        super("quark.Map<quark.String,quark.Object>")
        (self).name = "quark.Map"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String", "quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Hash.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkMapQuarkStringQuarkObject.unlazy_statics


def self.quark_Map_quark_String_quark_ServiceInstance_; QuarkMapQuarkStringQuarkServiceInstance; end
class QuarkMapQuarkStringQuarkServiceInstance < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_Map_quark_String_quark_ServiceInstance_.new() }



    def initialize()
        
        super("quark.Map<quark.String,quark.ServiceInstance>")
        (self).name = "quark.Map"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String", "quark.ServiceInstance"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Hash.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkMapQuarkStringQuarkServiceInstance.unlazy_statics


def self.quark_logging_Appender; QuarkLoggingAppender; end
class QuarkLoggingAppender < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_logging_Appender.new() }



    def initialize()
        
        super("quark.logging.Appender")
        (self).name = "quark.logging.Appender"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkLoggingAppender.unlazy_statics


def self.quark_logging_Config_setAppender_Method; QuarkLoggingConfigSetAppenderMethod; end
class QuarkLoggingConfigSetAppenderMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.logging.Config", "setAppender", ::DatawireQuarkCore::List.new(["quark.logging.Appender"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.setAppender((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_logging_Config_setLevel_Method; QuarkLoggingConfigSetLevelMethod; end
class QuarkLoggingConfigSetLevelMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.logging.Config", "setLevel", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.setLevel((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_logging_Config_configure_Method; QuarkLoggingConfigConfigureMethod; end
class QuarkLoggingConfigConfigureMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "configure", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.configure()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_logging_Config; QuarkLoggingConfig; end
class QuarkLoggingConfig < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_logging_Config.new() }



    def initialize()
        
        super("quark.logging.Config")
        (self).name = "quark.logging.Config"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_logging_Config_setAppender_Method.new(), ::Quark.quark_md.quark_logging_Config_setLevel_Method.new(), ::Quark.quark_md.quark_logging_Config_configure_Method.new()])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkLoggingConfig.unlazy_statics


def self.quark_reflect_Class; QuarkReflectClass; end
class QuarkReflectClass < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_reflect_Class.new() }



    def initialize()
        
        super("quark.reflect.Class")
        (self).name = "quark.reflect.Class"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Map<quark.String,quark.reflect.Class>", "classes"), ::Quark.quark.reflect.Field.new("quark.reflect.Class", "VOID"), ::Quark.quark.reflect.Field.new("quark.reflect.Class", "BOOL"), ::Quark.quark.reflect.Field.new("quark.reflect.Class", "INT"), ::Quark.quark.reflect.Field.new("quark.reflect.Class", "LONG"), ::Quark.quark.reflect.Field.new("quark.reflect.Class", "FLOAT"), ::Quark.quark.reflect.Field.new("quark.reflect.Class", "STRING"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.String", "name"), ::Quark.quark.reflect.Field.new("quark.List<quark.String>", "parameters"), ::Quark.quark.reflect.Field.new("quark.List<quark.reflect.Field>", "fields"), ::Quark.quark.reflect.Field.new("quark.List<quark.reflect.Method>", "methods")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.reflect.QuarkClass.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkReflectClass.unlazy_statics


def self.quark_reflect_Field; QuarkReflectField; end
class QuarkReflectField < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_reflect_Field.new() }



    def initialize()
        
        super("quark.reflect.Field")
        (self).name = "quark.reflect.Field"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "type"), ::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.reflect.Field.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkReflectField.unlazy_statics


def self.quark_Servlet; QuarkServlet; end
class QuarkServlet < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_Servlet.new() }



    def initialize()
        
        super("quark.Servlet")
        (self).name = "quark.Servlet"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkServlet.unlazy_statics


def self.quark_Resolver; QuarkResolver; end
class QuarkResolver < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_Resolver.new() }



    def initialize()
        
        super("quark.Resolver")
        (self).name = "quark.Resolver"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkResolver.unlazy_statics


def self.quark_ResponseHolder; QuarkResponseHolder; end
class QuarkResponseHolder < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_ResponseHolder.new() }



    def initialize()
        
        super("quark.ResponseHolder")
        (self).name = "quark.ResponseHolder"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.HTTPResponse", "response"), ::Quark.quark.reflect.Field.new("quark.String", "failure")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.ResponseHolder.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkResponseHolder.unlazy_statics


def self.quark_Service; QuarkService; end
class QuarkService < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_Service.new() }



    def initialize()
        
        super("quark.Service")
        (self).name = "quark.Service"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkService.unlazy_statics


def self.quark_BaseService; QuarkBaseService; end
class QuarkBaseService < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_BaseService.new() }



    def initialize()
        
        super("quark.BaseService")
        (self).name = "quark.BaseService"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.BaseService.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkBaseService.unlazy_statics


def self.quark_ServiceInstance; QuarkServiceInstance; end
class QuarkServiceInstance < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_ServiceInstance.new() }



    def initialize()
        
        super("quark.ServiceInstance")
        (self).name = "quark.ServiceInstance"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "serviceName"), ::Quark.quark.reflect.Field.new("quark.String", "url"), ::Quark.quark.reflect.Field.new("quark.behaviors.CircuitBreaker", "breaker")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.ServiceInstance.new((args)[0], (args)[1], (args)[2], (args)[3])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkServiceInstance.unlazy_statics


def self.quark_DegenerateResolver; QuarkDegenerateResolver; end
class QuarkDegenerateResolver < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_DegenerateResolver.new() }



    def initialize()
        
        super("quark.DegenerateResolver")
        (self).name = "quark.DegenerateResolver"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.DegenerateResolver.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkDegenerateResolver.unlazy_statics


def self.quark_Client; QuarkClient; end
class QuarkClient < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_Client.new() }



    def initialize()
        
        super("quark.Client")
        (self).name = "quark.Client"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Logger", "logger"), ::Quark.quark.reflect.Field.new("quark.Resolver", "resolver"), ::Quark.quark.reflect.Field.new("quark.String", "serviceName"), ::Quark.quark.reflect.Field.new("quark.float", "_timeout"), ::Quark.quark.reflect.Field.new("quark.int", "_failureLimit"), ::Quark.quark.reflect.Field.new("quark.float", "_retestDelay"), ::Quark.quark.reflect.Field.new("quark.concurrent.Lock", "mutex"), ::Quark.quark.reflect.Field.new("quark.Map<quark.String,quark.ServiceInstance>", "instanceMap"), ::Quark.quark.reflect.Field.new("quark.int", "counter")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.Client.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkClient.unlazy_statics


def self.quark_ServerResponder; QuarkServerResponder; end
class QuarkServerResponder < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_ServerResponder.new() }



    def initialize()
        
        super("quark.ServerResponder")
        (self).name = "quark.ServerResponder"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.bool", "sendCORS"), ::Quark.quark.reflect.Field.new("quark.HTTPRequest", "request"), ::Quark.quark.reflect.Field.new("quark.HTTPResponse", "response")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.ServerResponder.new((args)[0], (args)[1], (args)[2])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkServerResponder.unlazy_statics


def self.quark_Server_quark_Object_; QuarkServerQuarkObject; end
class QuarkServerQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_Server_quark_Object_.new() }



    def initialize()
        
        super("quark.Server<quark.Object>")
        (self).name = "quark.Server"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Object", "impl"), ::Quark.quark.reflect.Field.new("quark.bool", "_sendCORS")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.Server.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkServerQuarkObject.unlazy_statics


def self.quark_behaviors_RPC_call_Method; QuarkBehaviorsRPCCallMethod; end
class QuarkBehaviorsRPCCallMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.Future", "call", ::DatawireQuarkCore::List.new(["quark.List<quark.Object>"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.call((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_RPC_succeed_Method; QuarkBehaviorsRPCSucceedMethod; end
class QuarkBehaviorsRPCSucceedMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "succeed", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.succeed((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_RPC_fail_Method; QuarkBehaviorsRPCFailMethod; end
class QuarkBehaviorsRPCFailMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "fail", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.fail((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_RPC_toString_Method; QuarkBehaviorsRPCToStringMethod; end
class QuarkBehaviorsRPCToStringMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "toString", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.toString()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_RPC; QuarkBehaviorsRPC; end
class QuarkBehaviorsRPC < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_behaviors_RPC.new() }



    def initialize()
        
        super("quark.behaviors.RPC")
        (self).name = "quark.behaviors.RPC"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Service", "service"), ::Quark.quark.reflect.Field.new("quark.reflect.Class", "returned"), ::Quark.quark.reflect.Field.new("quark.float", "timeout"), ::Quark.quark.reflect.Field.new("quark.String", "methodName"), ::Quark.quark.reflect.Field.new("quark.ServiceInstance", "instance")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_behaviors_RPC_call_Method.new(), ::Quark.quark_md.quark_behaviors_RPC_succeed_Method.new(), ::Quark.quark_md.quark_behaviors_RPC_fail_Method.new(), ::Quark.quark_md.quark_behaviors_RPC_toString_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.behaviors.RPC.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkBehaviorsRPC.unlazy_statics


def self.quark_behaviors_RPCRequest_call_Method; QuarkBehaviorsRPCRequestCallMethod; end
class QuarkBehaviorsRPCRequestCallMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.Future", "call", ::DatawireQuarkCore::List.new(["quark.HTTPRequest"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.call((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_RPCRequest_onHTTPResponse_Method; QuarkBehaviorsRPCRequestOnHTTPResponseMethod; end
class QuarkBehaviorsRPCRequestOnHTTPResponseMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPResponse", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPResponse"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onHTTPResponse((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_RPCRequest_onTimeout_Method; QuarkBehaviorsRPCRequestOnTimeoutMethod; end
class QuarkBehaviorsRPCRequestOnTimeoutMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onTimeout", ::DatawireQuarkCore::List.new(["quark.concurrent.Timeout"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onTimeout((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_RPCRequest_onHTTPInit_Method; QuarkBehaviorsRPCRequestOnHTTPInitMethod; end
class QuarkBehaviorsRPCRequestOnHTTPInitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPInit", ::DatawireQuarkCore::List.new(["quark.HTTPRequest"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onHTTPInit((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_RPCRequest_onHTTPError_Method; QuarkBehaviorsRPCRequestOnHTTPErrorMethod; end
class QuarkBehaviorsRPCRequestOnHTTPErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPError", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onHTTPError((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_RPCRequest_onHTTPFinal_Method; QuarkBehaviorsRPCRequestOnHTTPFinalMethod; end
class QuarkBehaviorsRPCRequestOnHTTPFinalMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPFinal", ::DatawireQuarkCore::List.new(["quark.HTTPRequest"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onHTTPFinal((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_RPCRequest; QuarkBehaviorsRPCRequest; end
class QuarkBehaviorsRPCRequest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_behaviors_RPCRequest.new() }



    def initialize()
        
        super("quark.behaviors.RPCRequest")
        (self).name = "quark.behaviors.RPCRequest"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.behaviors.RPC", "rpc"), ::Quark.quark.reflect.Field.new("quark.concurrent.Future", "retval"), ::Quark.quark.reflect.Field.new("quark.List<quark.Object>", "args"), ::Quark.quark.reflect.Field.new("quark.concurrent.Timeout", "timeout")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_behaviors_RPCRequest_call_Method.new(), ::Quark.quark_md.quark_behaviors_RPCRequest_onHTTPResponse_Method.new(), ::Quark.quark_md.quark_behaviors_RPCRequest_onTimeout_Method.new(), ::Quark.quark_md.quark_behaviors_RPCRequest_onHTTPInit_Method.new(), ::Quark.quark_md.quark_behaviors_RPCRequest_onHTTPError_Method.new(), ::Quark.quark_md.quark_behaviors_RPCRequest_onHTTPFinal_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.behaviors.RPCRequest.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkBehaviorsRPCRequest.unlazy_statics


def self.quark_behaviors_CircuitBreaker_succeed_Method; QuarkBehaviorsCircuitBreakerSucceedMethod; end
class QuarkBehaviorsCircuitBreakerSucceedMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "succeed", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.succeed()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_CircuitBreaker_fail_Method; QuarkBehaviorsCircuitBreakerFailMethod; end
class QuarkBehaviorsCircuitBreakerFailMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "fail", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.fail()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_CircuitBreaker_onExecute_Method; QuarkBehaviorsCircuitBreakerOnExecuteMethod; end
class QuarkBehaviorsCircuitBreakerOnExecuteMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onExecute", ::DatawireQuarkCore::List.new(["quark.Runtime"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onExecute((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_behaviors_CircuitBreaker; QuarkBehaviorsCircuitBreaker; end
class QuarkBehaviorsCircuitBreaker < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_behaviors_CircuitBreaker.new() }



    def initialize()
        
        super("quark.behaviors.CircuitBreaker")
        (self).name = "quark.behaviors.CircuitBreaker"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.int", "failureLimit"), ::Quark.quark.reflect.Field.new("quark.float", "retestDelay"), ::Quark.quark.reflect.Field.new("quark.bool", "active"), ::Quark.quark.reflect.Field.new("quark.int", "failureCount"), ::Quark.quark.reflect.Field.new("quark.concurrent.Lock", "mutex")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_behaviors_CircuitBreaker_succeed_Method.new(), ::Quark.quark_md.quark_behaviors_CircuitBreaker_fail_Method.new(), ::Quark.quark_md.quark_behaviors_CircuitBreaker_onExecute_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.behaviors.CircuitBreaker.new((args)[0], (args)[1], (args)[2])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkBehaviorsCircuitBreaker.unlazy_statics


def self.quark_concurrent_Event_getContext_Method; QuarkConcurrentEventGetContextMethod; end
class QuarkConcurrentEventGetContextMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.EventContext", "getContext", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getContext()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Event_fireEvent_Method; QuarkConcurrentEventFireEventMethod; end
class QuarkConcurrentEventFireEventMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "fireEvent", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.fireEvent()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Event; QuarkConcurrentEvent; end
class QuarkConcurrentEvent < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_Event.new() }



    def initialize()
        
        super("quark.concurrent.Event")
        (self).name = "quark.concurrent.Event"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_Event_getContext_Method.new(), ::Quark.quark_md.quark_concurrent_Event_fireEvent_Method.new()])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentEvent.unlazy_statics


def self.quark_concurrent_FutureListener_onFuture_Method; QuarkConcurrentFutureListenerOnFutureMethod; end
class QuarkConcurrentFutureListenerOnFutureMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onFuture", ::DatawireQuarkCore::List.new(["quark.concurrent.Future"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onFuture((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_FutureListener; QuarkConcurrentFutureListener; end
class QuarkConcurrentFutureListener < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_FutureListener.new() }



    def initialize()
        
        super("quark.concurrent.FutureListener")
        (self).name = "quark.concurrent.FutureListener"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_FutureListener_onFuture_Method.new()])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentFutureListener.unlazy_statics


def self.quark_concurrent_FutureCompletion_getContext_Method; QuarkConcurrentFutureCompletionGetContextMethod; end
class QuarkConcurrentFutureCompletionGetContextMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.EventContext", "getContext", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getContext()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_FutureCompletion_fireEvent_Method; QuarkConcurrentFutureCompletionFireEventMethod; end
class QuarkConcurrentFutureCompletionFireEventMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "fireEvent", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.fireEvent()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_FutureCompletion; QuarkConcurrentFutureCompletion; end
class QuarkConcurrentFutureCompletion < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_FutureCompletion.new() }



    def initialize()
        
        super("quark.concurrent.FutureCompletion")
        (self).name = "quark.concurrent.FutureCompletion"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.Future", "future"), ::Quark.quark.reflect.Field.new("quark.concurrent.FutureListener", "listener")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_FutureCompletion_getContext_Method.new(), ::Quark.quark_md.quark_concurrent_FutureCompletion_fireEvent_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.concurrent.FutureCompletion.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentFutureCompletion.unlazy_statics


def self.quark_concurrent_EventContext_getContext_Method; QuarkConcurrentEventContextGetContextMethod; end
class QuarkConcurrentEventContextGetContextMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.Context", "getContext", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getContext()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_EventContext; QuarkConcurrentEventContext; end
class QuarkConcurrentEventContext < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_EventContext.new() }



    def initialize()
        
        super("quark.concurrent.EventContext")
        (self).name = "quark.concurrent.EventContext"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.Context", "_context")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_EventContext_getContext_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.concurrent.EventContext.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentEventContext.unlazy_statics


def self.quark_concurrent_Future_onFinished_Method; QuarkConcurrentFutureOnFinishedMethod; end
class QuarkConcurrentFutureOnFinishedMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onFinished", ::DatawireQuarkCore::List.new(["quark.concurrent.FutureListener"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onFinished((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Future_finish_Method; QuarkConcurrentFutureFinishMethod; end
class QuarkConcurrentFutureFinishMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "finish", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.finish((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Future_isFinished_Method; QuarkConcurrentFutureIsFinishedMethod; end
class QuarkConcurrentFutureIsFinishedMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.bool", "isFinished", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.isFinished()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Future_getError_Method; QuarkConcurrentFutureGetErrorMethod; end
class QuarkConcurrentFutureGetErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "getError", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getError()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Future_await_Method; QuarkConcurrentFutureAwaitMethod; end
class QuarkConcurrentFutureAwaitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "await", ::DatawireQuarkCore::List.new(["quark.float"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.await((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Future_getContext_Method; QuarkConcurrentFutureGetContextMethod; end
class QuarkConcurrentFutureGetContextMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.Context", "getContext", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getContext()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Future; QuarkConcurrentFuture; end
class QuarkConcurrentFuture < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_Future.new() }



    def initialize()
        
        super("quark.concurrent.Future")
        (self).name = "quark.concurrent.Future"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.Context", "_context"), ::Quark.quark.reflect.Field.new("quark.bool", "_finished"), ::Quark.quark.reflect.Field.new("quark.String", "_error"), ::Quark.quark.reflect.Field.new("quark.List<quark.concurrent.FutureCompletion>", "_callbacks"), ::Quark.quark.reflect.Field.new("quark.concurrent.Lock", "_lock")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_Future_onFinished_Method.new(), ::Quark.quark_md.quark_concurrent_Future_finish_Method.new(), ::Quark.quark_md.quark_concurrent_Future_isFinished_Method.new(), ::Quark.quark_md.quark_concurrent_Future_getError_Method.new(), ::Quark.quark_md.quark_concurrent_Future_await_Method.new(), ::Quark.quark_md.quark_concurrent_Future_getContext_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.concurrent.Future.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentFuture.unlazy_statics


def self.quark_concurrent_FutureWait_wait_Method; QuarkConcurrentFutureWaitWaitMethod; end
class QuarkConcurrentFutureWaitWaitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "wait", ::DatawireQuarkCore::List.new(["quark.concurrent.Future", "quark.float"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.wait((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_FutureWait_onFuture_Method; QuarkConcurrentFutureWaitOnFutureMethod; end
class QuarkConcurrentFutureWaitOnFutureMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onFuture", ::DatawireQuarkCore::List.new(["quark.concurrent.Future"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onFuture((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_FutureWait_waitFor_Method; QuarkConcurrentFutureWaitWaitForMethod; end
class QuarkConcurrentFutureWaitWaitForMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.Future", "waitFor", ::DatawireQuarkCore::List.new(["quark.concurrent.Future", "quark.float"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return ::Quark.quark.concurrent.FutureWait.waitFor((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_FutureWait; QuarkConcurrentFutureWait; end
class QuarkConcurrentFutureWait < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_FutureWait.new() }



    def initialize()
        
        super("quark.concurrent.FutureWait")
        (self).name = "quark.concurrent.FutureWait"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.Condition", "_lock"), ::Quark.quark.reflect.Field.new("quark.concurrent.Future", "_future")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_FutureWait_wait_Method.new(), ::Quark.quark_md.quark_concurrent_FutureWait_onFuture_Method.new(), ::Quark.quark_md.quark_concurrent_FutureWait_waitFor_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.concurrent.FutureWait.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentFutureWait.unlazy_statics


def self.quark_concurrent_Queue_quark_concurrent_Event__put_Method; QuarkConcurrentQueueQuarkConcurrentEventPutMethod; end
class QuarkConcurrentQueueQuarkConcurrentEventPutMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "put", ::DatawireQuarkCore::List.new(["quark.concurrent.Event"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.put((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Queue_quark_concurrent_Event__get_Method; QuarkConcurrentQueueQuarkConcurrentEventGetMethod; end
class QuarkConcurrentQueueQuarkConcurrentEventGetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.Event", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.get()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Queue_quark_concurrent_Event__size_Method; QuarkConcurrentQueueQuarkConcurrentEventSizeMethod; end
class QuarkConcurrentQueueQuarkConcurrentEventSizeMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.int", "size", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.size()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Queue_quark_concurrent_Event_; QuarkConcurrentQueueQuarkConcurrentEvent; end
class QuarkConcurrentQueueQuarkConcurrentEvent < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_Queue_quark_concurrent_Event_.new() }



    def initialize()
        
        super("quark.concurrent.Queue<quark.concurrent.Event>")
        (self).name = "quark.concurrent.Queue"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.concurrent.Event"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.List<quark.Object>", "items"), ::Quark.quark.reflect.Field.new("quark.int", "head"), ::Quark.quark.reflect.Field.new("quark.int", "tail")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_Queue_quark_concurrent_Event__put_Method.new(), ::Quark.quark_md.quark_concurrent_Queue_quark_concurrent_Event__get_Method.new(), ::Quark.quark_md.quark_concurrent_Queue_quark_concurrent_Event__size_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.concurrent.Queue.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentQueueQuarkConcurrentEvent.unlazy_statics


def self.quark_concurrent_CollectorExecutor__start_Method; QuarkConcurrentCollectorExecutorStartMethod; end
class QuarkConcurrentCollectorExecutorStartMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "_start", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj._start()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_CollectorExecutor_onExecute_Method; QuarkConcurrentCollectorExecutorOnExecuteMethod; end
class QuarkConcurrentCollectorExecutorOnExecuteMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onExecute", ::DatawireQuarkCore::List.new(["quark.Runtime"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onExecute((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_CollectorExecutor; QuarkConcurrentCollectorExecutor; end
class QuarkConcurrentCollectorExecutor < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_CollectorExecutor.new() }



    def initialize()
        
        super("quark.concurrent.CollectorExecutor")
        (self).name = "quark.concurrent.CollectorExecutor"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.Queue<quark.concurrent.Event>", "events"), ::Quark.quark.reflect.Field.new("quark.concurrent.Collector", "collector")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_CollectorExecutor__start_Method.new(), ::Quark.quark_md.quark_concurrent_CollectorExecutor_onExecute_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.concurrent.CollectorExecutor.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentCollectorExecutor.unlazy_statics


def self.quark_concurrent_Collector_put_Method; QuarkConcurrentCollectorPutMethod; end
class QuarkConcurrentCollectorPutMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "put", ::DatawireQuarkCore::List.new(["quark.concurrent.Event"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.put((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Collector__swap_Method; QuarkConcurrentCollectorSwapMethod; end
class QuarkConcurrentCollectorSwapMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.Queue<quark.concurrent.Event>", "_swap", ::DatawireQuarkCore::List.new(["quark.concurrent.Queue<quark.concurrent.Event>"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj._swap((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Collector__poll_Method; QuarkConcurrentCollectorPollMethod; end
class QuarkConcurrentCollectorPollMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "_poll", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj._poll()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Collector; QuarkConcurrentCollector; end
class QuarkConcurrentCollector < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_Collector.new() }



    def initialize()
        
        super("quark.concurrent.Collector")
        (self).name = "quark.concurrent.Collector"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.Lock", "lock"), ::Quark.quark.reflect.Field.new("quark.concurrent.Queue<quark.concurrent.Event>", "pending"), ::Quark.quark.reflect.Field.new("quark.concurrent.CollectorExecutor", "executor"), ::Quark.quark.reflect.Field.new("quark.bool", "idle")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_Collector_put_Method.new(), ::Quark.quark_md.quark_concurrent_Collector__swap_Method.new(), ::Quark.quark_md.quark_concurrent_Collector__poll_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.concurrent.Collector.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentCollector.unlazy_statics


def self.quark_concurrent_TimeoutListener_onTimeout_Method; QuarkConcurrentTimeoutListenerOnTimeoutMethod; end
class QuarkConcurrentTimeoutListenerOnTimeoutMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onTimeout", ::DatawireQuarkCore::List.new(["quark.concurrent.Timeout"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onTimeout((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_TimeoutListener; QuarkConcurrentTimeoutListener; end
class QuarkConcurrentTimeoutListener < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_TimeoutListener.new() }



    def initialize()
        
        super("quark.concurrent.TimeoutListener")
        (self).name = "quark.concurrent.TimeoutListener"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_TimeoutListener_onTimeout_Method.new()])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentTimeoutListener.unlazy_statics


def self.quark_concurrent_TimeoutExpiry_getContext_Method; QuarkConcurrentTimeoutExpiryGetContextMethod; end
class QuarkConcurrentTimeoutExpiryGetContextMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.EventContext", "getContext", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getContext()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_TimeoutExpiry_fireEvent_Method; QuarkConcurrentTimeoutExpiryFireEventMethod; end
class QuarkConcurrentTimeoutExpiryFireEventMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "fireEvent", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.fireEvent()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_TimeoutExpiry; QuarkConcurrentTimeoutExpiry; end
class QuarkConcurrentTimeoutExpiry < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_TimeoutExpiry.new() }



    def initialize()
        
        super("quark.concurrent.TimeoutExpiry")
        (self).name = "quark.concurrent.TimeoutExpiry"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.Timeout", "timeout"), ::Quark.quark.reflect.Field.new("quark.concurrent.TimeoutListener", "listener")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_TimeoutExpiry_getContext_Method.new(), ::Quark.quark_md.quark_concurrent_TimeoutExpiry_fireEvent_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.concurrent.TimeoutExpiry.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentTimeoutExpiry.unlazy_statics


def self.quark_concurrent_Timeout_start_Method; QuarkConcurrentTimeoutStartMethod; end
class QuarkConcurrentTimeoutStartMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "start", ::DatawireQuarkCore::List.new(["quark.concurrent.TimeoutListener"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.start((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Timeout_cancel_Method; QuarkConcurrentTimeoutCancelMethod; end
class QuarkConcurrentTimeoutCancelMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "cancel", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.cancel()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Timeout_onExecute_Method; QuarkConcurrentTimeoutOnExecuteMethod; end
class QuarkConcurrentTimeoutOnExecuteMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onExecute", ::DatawireQuarkCore::List.new(["quark.Runtime"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onExecute((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Timeout_getContext_Method; QuarkConcurrentTimeoutGetContextMethod; end
class QuarkConcurrentTimeoutGetContextMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.Context", "getContext", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getContext()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Timeout; QuarkConcurrentTimeout; end
class QuarkConcurrentTimeout < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_Timeout.new() }



    def initialize()
        
        super("quark.concurrent.Timeout")
        (self).name = "quark.concurrent.Timeout"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.Context", "_context"), ::Quark.quark.reflect.Field.new("quark.float", "timeout"), ::Quark.quark.reflect.Field.new("quark.concurrent.Lock", "lock"), ::Quark.quark.reflect.Field.new("quark.concurrent.TimeoutListener", "listener")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_Timeout_start_Method.new(), ::Quark.quark_md.quark_concurrent_Timeout_cancel_Method.new(), ::Quark.quark_md.quark_concurrent_Timeout_onExecute_Method.new(), ::Quark.quark_md.quark_concurrent_Timeout_getContext_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.concurrent.Timeout.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentTimeout.unlazy_statics


def self.quark_concurrent_TLSContextInitializer_getValue_Method; QuarkConcurrentTLSContextInitializerGetValueMethod; end
class QuarkConcurrentTLSContextInitializerGetValueMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.Context", "getValue", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getValue()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_TLSContextInitializer; QuarkConcurrentTLSContextInitializer; end
class QuarkConcurrentTLSContextInitializer < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_TLSContextInitializer.new() }



    def initialize()
        
        super("quark.concurrent.TLSContextInitializer")
        (self).name = "quark.concurrent.TLSContextInitializer"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_TLSContextInitializer_getValue_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.concurrent.TLSContextInitializer.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentTLSContextInitializer.unlazy_statics


def self.quark_concurrent_Context_current_Method; QuarkConcurrentContextCurrentMethod; end
class QuarkConcurrentContextCurrentMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.Context", "current", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return ::Quark.quark.concurrent.Context.current()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Context_global_Method; QuarkConcurrentContextGlobalMethod; end
class QuarkConcurrentContextGlobalMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.concurrent.Context", "global", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return ::Quark.quark.concurrent.Context.global()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Context_runtime_Method; QuarkConcurrentContextRuntimeMethod; end
class QuarkConcurrentContextRuntimeMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Runtime", "runtime", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return ::Quark.quark.concurrent.Context.runtime()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Context_swap_Method; QuarkConcurrentContextSwapMethod; end
class QuarkConcurrentContextSwapMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "swap", ::DatawireQuarkCore::List.new(["quark.concurrent.Context"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        ::Quark.quark.concurrent.Context.swap((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_concurrent_Context; QuarkConcurrentContext; end
class QuarkConcurrentContext < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_concurrent_Context.new() }



    def initialize()
        
        super("quark.concurrent.Context")
        (self).name = "quark.concurrent.Context"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.Context", "_global"), ::Quark.quark.reflect.Field.new("quark.concurrent.TLS<quark.concurrent.Context>", "_current"), ::Quark.quark.reflect.Field.new("quark.concurrent.Context", "_parent"), ::Quark.quark.reflect.Field.new("quark.Runtime", "_runtime"), ::Quark.quark.reflect.Field.new("quark.concurrent.Collector", "collector")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_concurrent_Context_current_Method.new(), ::Quark.quark_md.quark_concurrent_Context_global_Method.new(), ::Quark.quark_md.quark_concurrent_Context_runtime_Method.new(), ::Quark.quark_md.quark_concurrent_Context_swap_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.concurrent.Context.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkConcurrentContext.unlazy_statics


def self.quark_HTTPHandler; QuarkHTTPHandler; end
class QuarkHTTPHandler < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_HTTPHandler.new() }



    def initialize()
        
        super("quark.HTTPHandler")
        (self).name = "quark.HTTPHandler"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkHTTPHandler.unlazy_statics


def self.quark_HTTPRequest; QuarkHTTPRequest; end
class QuarkHTTPRequest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_HTTPRequest.new() }



    def initialize()
        
        super("quark.HTTPRequest")
        (self).name = "quark.HTTPRequest"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkHTTPRequest.unlazy_statics


def self.quark_HTTPResponse; QuarkHTTPResponse; end
class QuarkHTTPResponse < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_HTTPResponse.new() }



    def initialize()
        
        super("quark.HTTPResponse")
        (self).name = "quark.HTTPResponse"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkHTTPResponse.unlazy_statics


def self.quark_HTTPServlet; QuarkHTTPServlet; end
class QuarkHTTPServlet < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_HTTPServlet.new() }



    def initialize()
        
        super("quark.HTTPServlet")
        (self).name = "quark.HTTPServlet"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkHTTPServlet.unlazy_statics


def self.quark_WSHandler; QuarkWSHandler; end
class QuarkWSHandler < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_WSHandler.new() }



    def initialize()
        
        super("quark.WSHandler")
        (self).name = "quark.WSHandler"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkWSHandler.unlazy_statics


def self.quark_WebSocket; QuarkWebSocket; end
class QuarkWebSocket < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_WebSocket.new() }



    def initialize()
        
        super("quark.WebSocket")
        (self).name = "quark.WebSocket"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkWebSocket.unlazy_statics


def self.quark_WSServlet; QuarkWSServlet; end
class QuarkWSServlet < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_WSServlet.new() }



    def initialize()
        
        super("quark.WSServlet")
        (self).name = "quark.WSServlet"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkWSServlet.unlazy_statics


def self.quark_test_TestInitializer_getValue_Method; QuarkTestTestInitializerGetValueMethod; end
class QuarkTestTestInitializerGetValueMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.test.Test", "getValue", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getValue()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_TestInitializer; QuarkTestTestInitializer; end
class QuarkTestTestInitializer < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_test_TestInitializer.new() }



    def initialize()
        
        super("quark.test.TestInitializer")
        (self).name = "quark.test.TestInitializer"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_test_TestInitializer_getValue_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.test.TestInitializer.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkTestTestInitializer.unlazy_statics


def self.quark_test_Test_current_Method; QuarkTestTestCurrentMethod; end
class QuarkTestTestCurrentMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.test.Test", "current", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return ::Quark.quark.test.Test.current()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_Test_match_Method; QuarkTestTestMatchMethod; end
class QuarkTestTestMatchMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.bool", "match", ::DatawireQuarkCore::List.new(["quark.List<quark.String>"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.match((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_Test_start_Method; QuarkTestTestStartMethod; end
class QuarkTestTestStartMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "start", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.start()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_Test_stop_Method; QuarkTestTestStopMethod; end
class QuarkTestTestStopMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "stop", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.stop()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_Test_check_Method; QuarkTestTestCheckMethod; end
class QuarkTestTestCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.bool", "check", ::DatawireQuarkCore::List.new(["quark.bool", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.check((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_Test_fail_Method; QuarkTestTestFailMethod; end
class QuarkTestTestFailMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "fail", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.fail((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_Test_run_Method; QuarkTestTestRunMethod; end
class QuarkTestTestRunMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "run", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.run()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_Test; QuarkTestTest; end
class QuarkTestTest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_test_Test.new() }



    def initialize()
        
        super("quark.test.Test")
        (self).name = "quark.test.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.TLS<quark.test.Test>", "ctx"), ::Quark.quark.reflect.Field.new("quark.String", "name"), ::Quark.quark.reflect.Field.new("quark.int", "checks"), ::Quark.quark.reflect.Field.new("quark.List<quark.String>", "failures")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_test_Test_current_Method.new(), ::Quark.quark_md.quark_test_Test_match_Method.new(), ::Quark.quark_md.quark_test_Test_start_Method.new(), ::Quark.quark_md.quark_test_Test_stop_Method.new(), ::Quark.quark_md.quark_test_Test_check_Method.new(), ::Quark.quark_md.quark_test_Test_fail_Method.new(), ::Quark.quark_md.quark_test_Test_run_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.test.Test.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkTestTest.unlazy_statics


def self.quark_test_MethodTest_run_Method; QuarkTestMethodTestRunMethod; end
class QuarkTestMethodTestRunMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "run", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.run()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_MethodTest_current_Method; QuarkTestMethodTestCurrentMethod; end
class QuarkTestMethodTestCurrentMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.test.Test", "current", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return ::Quark.quark.test.Test.current()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_MethodTest_match_Method; QuarkTestMethodTestMatchMethod; end
class QuarkTestMethodTestMatchMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.bool", "match", ::DatawireQuarkCore::List.new(["quark.List<quark.String>"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.match((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_MethodTest_start_Method; QuarkTestMethodTestStartMethod; end
class QuarkTestMethodTestStartMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "start", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.start()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_MethodTest_stop_Method; QuarkTestMethodTestStopMethod; end
class QuarkTestMethodTestStopMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "stop", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.stop()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_MethodTest_check_Method; QuarkTestMethodTestCheckMethod; end
class QuarkTestMethodTestCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.bool", "check", ::DatawireQuarkCore::List.new(["quark.bool", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.check((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_MethodTest_fail_Method; QuarkTestMethodTestFailMethod; end
class QuarkTestMethodTestFailMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "fail", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.fail((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_MethodTest; QuarkTestMethodTest; end
class QuarkTestMethodTest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_test_MethodTest.new() }



    def initialize()
        
        super("quark.test.MethodTest")
        (self).name = "quark.test.MethodTest"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.TLS<quark.test.Test>", "ctx"), ::Quark.quark.reflect.Field.new("quark.String", "name"), ::Quark.quark.reflect.Field.new("quark.int", "checks"), ::Quark.quark.reflect.Field.new("quark.List<quark.String>", "failures"), ::Quark.quark.reflect.Field.new("quark.reflect.Class", "klass"), ::Quark.quark.reflect.Field.new("quark.reflect.Method", "method")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_test_MethodTest_run_Method.new(), ::Quark.quark_md.quark_test_MethodTest_current_Method.new(), ::Quark.quark_md.quark_test_MethodTest_match_Method.new(), ::Quark.quark_md.quark_test_MethodTest_start_Method.new(), ::Quark.quark_md.quark_test_MethodTest_stop_Method.new(), ::Quark.quark_md.quark_test_MethodTest_check_Method.new(), ::Quark.quark_md.quark_test_MethodTest_fail_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.test.MethodTest.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkTestMethodTest.unlazy_statics


def self.quark_test_Harness_collect_Method; QuarkTestHarnessCollectMethod; end
class QuarkTestHarnessCollectMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "collect", ::DatawireQuarkCore::List.new(["quark.List<quark.String>"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.collect((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_Harness_list_Method; QuarkTestHarnessListMethod; end
class QuarkTestHarnessListMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "list", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.list()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_Harness_run_Method; QuarkTestHarnessRunMethod; end
class QuarkTestHarnessRunMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "run", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.run()
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_test_Harness; QuarkTestHarness; end
class QuarkTestHarness < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_test_Harness.new() }



    def initialize()
        
        super("quark.test.Harness")
        (self).name = "quark.test.Harness"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "pkg"), ::Quark.quark.reflect.Field.new("quark.List<quark.test.Test>", "tests"), ::Quark.quark.reflect.Field.new("quark.int", "filtered")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_test_Harness_collect_Method.new(), ::Quark.quark_md.quark_test_Harness_list_Method.new(), ::Quark.quark_md.quark_test_Harness_run_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.test.Harness.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkTestHarness.unlazy_statics


def self.quark_URL; QuarkURL; end
class QuarkURL < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_URL.new() }



    def initialize()
        
        super("quark.URL")
        (self).name = "quark.URL"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "scheme"), ::Quark.quark.reflect.Field.new("quark.String", "host"), ::Quark.quark.reflect.Field.new("quark.String", "port"), ::Quark.quark.reflect.Field.new("quark.String", "path")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.URL.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkURL.unlazy_statics


def self.quark_spi_RuntimeSpi_open_Method; QuarkSpiRuntimeSpiOpenMethod; end
class QuarkSpiRuntimeSpiOpenMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "open", ::DatawireQuarkCore::List.new(["quark.String", "quark.WSHandler"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.open((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_RuntimeSpi_request_Method; QuarkSpiRuntimeSpiRequestMethod; end
class QuarkSpiRuntimeSpiRequestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "request", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPHandler"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.request((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_RuntimeSpi_schedule_Method; QuarkSpiRuntimeSpiScheduleMethod; end
class QuarkSpiRuntimeSpiScheduleMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "schedule", ::DatawireQuarkCore::List.new(["quark.Task", "quark.float"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.schedule((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_RuntimeSpi_codec_Method; QuarkSpiRuntimeSpiCodecMethod; end
class QuarkSpiRuntimeSpiCodecMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Codec", "codec", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.codec()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_RuntimeSpi_serveHTTP_Method; QuarkSpiRuntimeSpiServeHTTPMethod; end
class QuarkSpiRuntimeSpiServeHTTPMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "serveHTTP", ::DatawireQuarkCore::List.new(["quark.String", "quark.HTTPServlet"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.serveHTTP((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_RuntimeSpi_serveWS_Method; QuarkSpiRuntimeSpiServeWSMethod; end
class QuarkSpiRuntimeSpiServeWSMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "serveWS", ::DatawireQuarkCore::List.new(["quark.String", "quark.WSServlet"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.serveWS((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_RuntimeSpi_respond_Method; QuarkSpiRuntimeSpiRespondMethod; end
class QuarkSpiRuntimeSpiRespondMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "respond", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPResponse"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.respond((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_RuntimeSpi_fail_Method; QuarkSpiRuntimeSpiFailMethod; end
class QuarkSpiRuntimeSpiFailMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "fail", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.fail((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_RuntimeSpi_logger_Method; QuarkSpiRuntimeSpiLoggerMethod; end
class QuarkSpiRuntimeSpiLoggerMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Logger", "logger", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.logger((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_RuntimeSpi; QuarkSpiRuntimeSpi; end
class QuarkSpiRuntimeSpi < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_RuntimeSpi.new() }



    def initialize()
        
        super("quark.spi.RuntimeSpi")
        (self).name = "quark.spi.RuntimeSpi"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_RuntimeSpi_open_Method.new(), ::Quark.quark_md.quark_spi_RuntimeSpi_request_Method.new(), ::Quark.quark_md.quark_spi_RuntimeSpi_schedule_Method.new(), ::Quark.quark_md.quark_spi_RuntimeSpi_codec_Method.new(), ::Quark.quark_md.quark_spi_RuntimeSpi_serveHTTP_Method.new(), ::Quark.quark_md.quark_spi_RuntimeSpi_serveWS_Method.new(), ::Quark.quark_md.quark_spi_RuntimeSpi_respond_Method.new(), ::Quark.quark_md.quark_spi_RuntimeSpi_fail_Method.new(), ::Quark.quark_md.quark_spi_RuntimeSpi_logger_Method.new()])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiRuntimeSpi.unlazy_statics


def self.quark_spi_RuntimeFactory_makeRuntime_Method; QuarkSpiRuntimeFactoryMakeRuntimeMethod; end
class QuarkSpiRuntimeFactoryMakeRuntimeMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Runtime", "makeRuntime", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.makeRuntime()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_RuntimeFactory; QuarkSpiRuntimeFactory; end
class QuarkSpiRuntimeFactory < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_RuntimeFactory.new() }



    def initialize()
        
        super("quark.spi.RuntimeFactory")
        (self).name = "quark.spi.RuntimeFactory"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi.RuntimeFactory", "factory"), ::Quark.quark.reflect.Field.new("quark.bool", "enable_tracing")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_RuntimeFactory_makeRuntime_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi.RuntimeFactory.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiRuntimeFactory.unlazy_statics


def self.quark_spi_api_ServletProxy_onServletInit_Method; QuarkSpiApiServletProxyOnServletInitMethod; end
class QuarkSpiApiServletProxyOnServletInitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletInit", ::DatawireQuarkCore::List.new(["quark.String", "quark.Runtime"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletInit((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_ServletProxy_onServletError_Method; QuarkSpiApiServletProxyOnServletErrorMethod; end
class QuarkSpiApiServletProxyOnServletErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletError", ::DatawireQuarkCore::List.new(["quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletError((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_ServletProxy_onServletEnd_Method; QuarkSpiApiServletProxyOnServletEndMethod; end
class QuarkSpiApiServletProxyOnServletEndMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletEnd", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletEnd((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_ServletProxy; QuarkSpiApiServletProxy; end
class QuarkSpiApiServletProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_ServletProxy.new() }



    def initialize()
        
        super("quark.spi_api.ServletProxy")
        (self).name = "quark.spi_api.ServletProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Servlet", "servlet_impl"), ::Quark.quark.reflect.Field.new("quark.Runtime", "real_runtime")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_ServletProxy_onServletInit_Method.new(), ::Quark.quark_md.quark_spi_api_ServletProxy_onServletError_Method.new(), ::Quark.quark_md.quark_spi_api_ServletProxy_onServletEnd_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api.ServletProxy.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiServletProxy.unlazy_statics


def self.quark_spi_api_HTTPServletProxy_onHTTPRequest_Method; QuarkSpiApiHTTPServletProxyOnHTTPRequestMethod; end
class QuarkSpiApiHTTPServletProxyOnHTTPRequestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPRequest", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPResponse"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onHTTPRequest((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_HTTPServletProxy_onServletInit_Method; QuarkSpiApiHTTPServletProxyOnServletInitMethod; end
class QuarkSpiApiHTTPServletProxyOnServletInitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletInit", ::DatawireQuarkCore::List.new(["quark.String", "quark.Runtime"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletInit((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_HTTPServletProxy_onServletError_Method; QuarkSpiApiHTTPServletProxyOnServletErrorMethod; end
class QuarkSpiApiHTTPServletProxyOnServletErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletError", ::DatawireQuarkCore::List.new(["quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletError((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_HTTPServletProxy_onServletEnd_Method; QuarkSpiApiHTTPServletProxyOnServletEndMethod; end
class QuarkSpiApiHTTPServletProxyOnServletEndMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletEnd", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletEnd((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_HTTPServletProxy_serveHTTP_Method; QuarkSpiApiHTTPServletProxyServeHTTPMethod; end
class QuarkSpiApiHTTPServletProxyServeHTTPMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "serveHTTP", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.serveHTTP((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_HTTPServletProxy; QuarkSpiApiHTTPServletProxy; end
class QuarkSpiApiHTTPServletProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_HTTPServletProxy.new() }



    def initialize()
        
        super("quark.spi_api.HTTPServletProxy")
        (self).name = "quark.spi_api.HTTPServletProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Servlet", "servlet_impl"), ::Quark.quark.reflect.Field.new("quark.Runtime", "real_runtime"), ::Quark.quark.reflect.Field.new("quark.HTTPServlet", "http_servlet_impl")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_HTTPServletProxy_onHTTPRequest_Method.new(), ::Quark.quark_md.quark_spi_api_HTTPServletProxy_onServletInit_Method.new(), ::Quark.quark_md.quark_spi_api_HTTPServletProxy_onServletError_Method.new(), ::Quark.quark_md.quark_spi_api_HTTPServletProxy_onServletEnd_Method.new(), ::Quark.quark_md.quark_spi_api_HTTPServletProxy_serveHTTP_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api.HTTPServletProxy.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiHTTPServletProxy.unlazy_statics


def self.quark_spi_api_WSServletProxy_onWSConnect_Method; QuarkSpiApiWSServletProxyOnWSConnectMethod; end
class QuarkSpiApiWSServletProxyOnWSConnectMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.WSHandler", "onWSConnect", ::DatawireQuarkCore::List.new(["quark.HTTPRequest"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.onWSConnect((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_WSServletProxy_onServletInit_Method; QuarkSpiApiWSServletProxyOnServletInitMethod; end
class QuarkSpiApiWSServletProxyOnServletInitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletInit", ::DatawireQuarkCore::List.new(["quark.String", "quark.Runtime"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletInit((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_WSServletProxy_onServletError_Method; QuarkSpiApiWSServletProxyOnServletErrorMethod; end
class QuarkSpiApiWSServletProxyOnServletErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletError", ::DatawireQuarkCore::List.new(["quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletError((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_WSServletProxy_onServletEnd_Method; QuarkSpiApiWSServletProxyOnServletEndMethod; end
class QuarkSpiApiWSServletProxyOnServletEndMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletEnd", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletEnd((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_WSServletProxy_serveWS_Method; QuarkSpiApiWSServletProxyServeWSMethod; end
class QuarkSpiApiWSServletProxyServeWSMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "serveWS", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.serveWS((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_WSServletProxy; QuarkSpiApiWSServletProxy; end
class QuarkSpiApiWSServletProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_WSServletProxy.new() }



    def initialize()
        
        super("quark.spi_api.WSServletProxy")
        (self).name = "quark.spi_api.WSServletProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Servlet", "servlet_impl"), ::Quark.quark.reflect.Field.new("quark.Runtime", "real_runtime"), ::Quark.quark.reflect.Field.new("quark.WSServlet", "ws_servlet_impl")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_WSServletProxy_onWSConnect_Method.new(), ::Quark.quark_md.quark_spi_api_WSServletProxy_onServletInit_Method.new(), ::Quark.quark_md.quark_spi_api_WSServletProxy_onServletError_Method.new(), ::Quark.quark_md.quark_spi_api_WSServletProxy_onServletEnd_Method.new(), ::Quark.quark_md.quark_spi_api_WSServletProxy_serveWS_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api.WSServletProxy.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiWSServletProxy.unlazy_statics


def self.quark_spi_api_TaskProxy_onExecute_Method; QuarkSpiApiTaskProxyOnExecuteMethod; end
class QuarkSpiApiTaskProxyOnExecuteMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onExecute", ::DatawireQuarkCore::List.new(["quark.Runtime"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onExecute((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_TaskProxy; QuarkSpiApiTaskProxy; end
class QuarkSpiApiTaskProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_TaskProxy.new() }



    def initialize()
        
        super("quark.spi_api.TaskProxy")
        (self).name = "quark.spi_api.TaskProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Task", "task_impl"), ::Quark.quark.reflect.Field.new("quark.Runtime", "real_runtime")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_TaskProxy_onExecute_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api.TaskProxy.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTaskProxy.unlazy_statics


def self.quark_spi_api_RuntimeProxy_open_Method; QuarkSpiApiRuntimeProxyOpenMethod; end
class QuarkSpiApiRuntimeProxyOpenMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "open", ::DatawireQuarkCore::List.new(["quark.String", "quark.WSHandler"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.open((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_RuntimeProxy_request_Method; QuarkSpiApiRuntimeProxyRequestMethod; end
class QuarkSpiApiRuntimeProxyRequestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "request", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPHandler"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.request((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_RuntimeProxy_schedule_Method; QuarkSpiApiRuntimeProxyScheduleMethod; end
class QuarkSpiApiRuntimeProxyScheduleMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "schedule", ::DatawireQuarkCore::List.new(["quark.Task", "quark.float"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.schedule((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_RuntimeProxy_codec_Method; QuarkSpiApiRuntimeProxyCodecMethod; end
class QuarkSpiApiRuntimeProxyCodecMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Codec", "codec", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.codec()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_RuntimeProxy_serveHTTP_Method; QuarkSpiApiRuntimeProxyServeHTTPMethod; end
class QuarkSpiApiRuntimeProxyServeHTTPMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "serveHTTP", ::DatawireQuarkCore::List.new(["quark.String", "quark.HTTPServlet"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.serveHTTP((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_RuntimeProxy_serveWS_Method; QuarkSpiApiRuntimeProxyServeWSMethod; end
class QuarkSpiApiRuntimeProxyServeWSMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "serveWS", ::DatawireQuarkCore::List.new(["quark.String", "quark.WSServlet"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.serveWS((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_RuntimeProxy_respond_Method; QuarkSpiApiRuntimeProxyRespondMethod; end
class QuarkSpiApiRuntimeProxyRespondMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "respond", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPResponse"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.respond((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_RuntimeProxy_fail_Method; QuarkSpiApiRuntimeProxyFailMethod; end
class QuarkSpiApiRuntimeProxyFailMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "fail", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.fail((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_RuntimeProxy_logger_Method; QuarkSpiApiRuntimeProxyLoggerMethod; end
class QuarkSpiApiRuntimeProxyLoggerMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Logger", "logger", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.logger((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_RuntimeProxy; QuarkSpiApiRuntimeProxy; end
class QuarkSpiApiRuntimeProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_RuntimeProxy.new() }



    def initialize()
        
        super("quark.spi_api.RuntimeProxy")
        (self).name = "quark.spi_api.RuntimeProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Runtime", "impl")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_RuntimeProxy_open_Method.new(), ::Quark.quark_md.quark_spi_api_RuntimeProxy_request_Method.new(), ::Quark.quark_md.quark_spi_api_RuntimeProxy_schedule_Method.new(), ::Quark.quark_md.quark_spi_api_RuntimeProxy_codec_Method.new(), ::Quark.quark_md.quark_spi_api_RuntimeProxy_serveHTTP_Method.new(), ::Quark.quark_md.quark_spi_api_RuntimeProxy_serveWS_Method.new(), ::Quark.quark_md.quark_spi_api_RuntimeProxy_respond_Method.new(), ::Quark.quark_md.quark_spi_api_RuntimeProxy_fail_Method.new(), ::Quark.quark_md.quark_spi_api_RuntimeProxy_logger_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api.RuntimeProxy.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiRuntimeProxy.unlazy_statics


def self.quark_spi_api_tracing_Identificator_next_Method; QuarkSpiApiTracingIdentificatorNextMethod; end
class QuarkSpiApiTracingIdentificatorNextMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "next", ::DatawireQuarkCore::List.new(["quark.Object"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.next_((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_Identificator; QuarkSpiApiTracingIdentificator; end
class QuarkSpiApiTracingIdentificator < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_Identificator.new() }



    def initialize()
        
        super("quark.spi_api_tracing.Identificator")
        (self).name = "quark.spi_api_tracing.Identificator"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.concurrent.Lock", "lock"), ::Quark.quark.reflect.Field.new("quark.int", "seq")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_tracing_Identificator_next_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.Identificator.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingIdentificator.unlazy_statics


def self.quark_spi_api_tracing_Identifiable; QuarkSpiApiTracingIdentifiable; end
class QuarkSpiApiTracingIdentifiable < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_Identifiable.new() }



    def initialize()
        
        super("quark.spi_api_tracing.Identifiable")
        (self).name = "quark.spi_api_tracing.Identifiable"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi_api_tracing.Identificator", "namer"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.Logger", "log")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.Identifiable.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingIdentifiable.unlazy_statics


def self.quark_spi_api_tracing_ServletProxy_onServletInit_Method; QuarkSpiApiTracingServletProxyOnServletInitMethod; end
class QuarkSpiApiTracingServletProxyOnServletInitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletInit", ::DatawireQuarkCore::List.new(["quark.String", "quark.Runtime"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletInit((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_ServletProxy_onServletError_Method; QuarkSpiApiTracingServletProxyOnServletErrorMethod; end
class QuarkSpiApiTracingServletProxyOnServletErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletError", ::DatawireQuarkCore::List.new(["quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletError((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_ServletProxy_onServletEnd_Method; QuarkSpiApiTracingServletProxyOnServletEndMethod; end
class QuarkSpiApiTracingServletProxyOnServletEndMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletEnd", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletEnd((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_ServletProxy; QuarkSpiApiTracingServletProxy; end
class QuarkSpiApiTracingServletProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_ServletProxy.new() }



    def initialize()
        
        super("quark.spi_api_tracing.ServletProxy")
        (self).name = "quark.spi_api_tracing.ServletProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi_api_tracing.Identificator", "namer"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.Logger", "log"), ::Quark.quark.reflect.Field.new("quark.Servlet", "servlet_impl"), ::Quark.quark.reflect.Field.new("quark.spi_api_tracing.RuntimeProxy", "real_runtime")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_tracing_ServletProxy_onServletInit_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_ServletProxy_onServletError_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_ServletProxy_onServletEnd_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.ServletProxy.new((args)[0], (args)[1], (args)[2])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingServletProxy.unlazy_statics


def self.quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method; QuarkSpiApiTracingHTTPRequestProxyGetUrlMethod; end
class QuarkSpiApiTracingHTTPRequestProxyGetUrlMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "getUrl", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getUrl()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method; QuarkSpiApiTracingHTTPRequestProxySetMethodMethod; end
class QuarkSpiApiTracingHTTPRequestProxySetMethodMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "setMethod", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.setMethod((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method; QuarkSpiApiTracingHTTPRequestProxyGetMethodMethod; end
class QuarkSpiApiTracingHTTPRequestProxyGetMethodMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "getMethod", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getMethod()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPRequestProxy_setBody_Method; QuarkSpiApiTracingHTTPRequestProxySetBodyMethod; end
class QuarkSpiApiTracingHTTPRequestProxySetBodyMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "setBody", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.setBody((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPRequestProxy_getBody_Method; QuarkSpiApiTracingHTTPRequestProxyGetBodyMethod; end
class QuarkSpiApiTracingHTTPRequestProxyGetBodyMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "getBody", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getBody()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method; QuarkSpiApiTracingHTTPRequestProxySetHeaderMethod; end
class QuarkSpiApiTracingHTTPRequestProxySetHeaderMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "setHeader", ::DatawireQuarkCore::List.new(["quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.setHeader((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method; QuarkSpiApiTracingHTTPRequestProxyGetHeaderMethod; end
class QuarkSpiApiTracingHTTPRequestProxyGetHeaderMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "getHeader", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getHeader((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method; QuarkSpiApiTracingHTTPRequestProxyGetHeadersMethod; end
class QuarkSpiApiTracingHTTPRequestProxyGetHeadersMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.List<quark.String>", "getHeaders", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getHeaders()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPRequestProxy; QuarkSpiApiTracingHTTPRequestProxy; end
class QuarkSpiApiTracingHTTPRequestProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_HTTPRequestProxy.new() }



    def initialize()
        
        super("quark.spi_api_tracing.HTTPRequestProxy")
        (self).name = "quark.spi_api_tracing.HTTPRequestProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi_api_tracing.Identificator", "namer"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.Logger", "log"), ::Quark.quark.reflect.Field.new("quark.HTTPRequest", "request_impl")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_tracing_HTTPRequestProxy_getUrl_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPRequestProxy_setMethod_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPRequestProxy_getMethod_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPRequestProxy_setBody_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPRequestProxy_getBody_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPRequestProxy_setHeader_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPRequestProxy_getHeader_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPRequestProxy_getHeaders_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.HTTPRequestProxy.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingHTTPRequestProxy.unlazy_statics


def self.quark_spi_api_tracing_HTTPResponseProxy_getCode_Method; QuarkSpiApiTracingHTTPResponseProxyGetCodeMethod; end
class QuarkSpiApiTracingHTTPResponseProxyGetCodeMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.int", "getCode", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getCode()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPResponseProxy_setCode_Method; QuarkSpiApiTracingHTTPResponseProxySetCodeMethod; end
class QuarkSpiApiTracingHTTPResponseProxySetCodeMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "setCode", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.setCode((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPResponseProxy_setBody_Method; QuarkSpiApiTracingHTTPResponseProxySetBodyMethod; end
class QuarkSpiApiTracingHTTPResponseProxySetBodyMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "setBody", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.setBody((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPResponseProxy_getBody_Method; QuarkSpiApiTracingHTTPResponseProxyGetBodyMethod; end
class QuarkSpiApiTracingHTTPResponseProxyGetBodyMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "getBody", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getBody()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method; QuarkSpiApiTracingHTTPResponseProxySetHeaderMethod; end
class QuarkSpiApiTracingHTTPResponseProxySetHeaderMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "setHeader", ::DatawireQuarkCore::List.new(["quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.setHeader((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method; QuarkSpiApiTracingHTTPResponseProxyGetHeaderMethod; end
class QuarkSpiApiTracingHTTPResponseProxyGetHeaderMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "getHeader", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getHeader((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method; QuarkSpiApiTracingHTTPResponseProxyGetHeadersMethod; end
class QuarkSpiApiTracingHTTPResponseProxyGetHeadersMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.List<quark.String>", "getHeaders", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.getHeaders()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPResponseProxy; QuarkSpiApiTracingHTTPResponseProxy; end
class QuarkSpiApiTracingHTTPResponseProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_HTTPResponseProxy.new() }



    def initialize()
        
        super("quark.spi_api_tracing.HTTPResponseProxy")
        (self).name = "quark.spi_api_tracing.HTTPResponseProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi_api_tracing.Identificator", "namer"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.Logger", "log"), ::Quark.quark.reflect.Field.new("quark.HTTPResponse", "response_impl")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_tracing_HTTPResponseProxy_getCode_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPResponseProxy_setCode_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPResponseProxy_setBody_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPResponseProxy_getBody_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPResponseProxy_setHeader_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPResponseProxy_getHeader_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPResponseProxy_getHeaders_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.HTTPResponseProxy.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingHTTPResponseProxy.unlazy_statics


def self.quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method; QuarkSpiApiTracingHTTPServletProxyOnHTTPRequestMethod; end
class QuarkSpiApiTracingHTTPServletProxyOnHTTPRequestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPRequest", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPResponse"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onHTTPRequest((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method; QuarkSpiApiTracingHTTPServletProxyOnServletInitMethod; end
class QuarkSpiApiTracingHTTPServletProxyOnServletInitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletInit", ::DatawireQuarkCore::List.new(["quark.String", "quark.Runtime"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletInit((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPServletProxy_onServletError_Method; QuarkSpiApiTracingHTTPServletProxyOnServletErrorMethod; end
class QuarkSpiApiTracingHTTPServletProxyOnServletErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletError", ::DatawireQuarkCore::List.new(["quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletError((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method; QuarkSpiApiTracingHTTPServletProxyOnServletEndMethod; end
class QuarkSpiApiTracingHTTPServletProxyOnServletEndMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletEnd", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletEnd((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method; QuarkSpiApiTracingHTTPServletProxyServeHTTPMethod; end
class QuarkSpiApiTracingHTTPServletProxyServeHTTPMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "serveHTTP", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.serveHTTP((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPServletProxy; QuarkSpiApiTracingHTTPServletProxy; end
class QuarkSpiApiTracingHTTPServletProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_HTTPServletProxy.new() }



    def initialize()
        
        super("quark.spi_api_tracing.HTTPServletProxy")
        (self).name = "quark.spi_api_tracing.HTTPServletProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi_api_tracing.Identificator", "namer"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.Logger", "log"), ::Quark.quark.reflect.Field.new("quark.Servlet", "servlet_impl"), ::Quark.quark.reflect.Field.new("quark.spi_api_tracing.RuntimeProxy", "real_runtime"), ::Quark.quark.reflect.Field.new("quark.HTTPServlet", "http_servlet_impl")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_tracing_HTTPServletProxy_onHTTPRequest_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPServletProxy_onServletInit_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPServletProxy_onServletError_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPServletProxy_onServletEnd_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPServletProxy_serveHTTP_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.HTTPServletProxy.new((args)[0], (args)[1], (args)[2])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingHTTPServletProxy.unlazy_statics


def self.quark_spi_api_tracing_WSServletProxy_onWSConnect_Method; QuarkSpiApiTracingWSServletProxyOnWSConnectMethod; end
class QuarkSpiApiTracingWSServletProxyOnWSConnectMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.WSHandler", "onWSConnect", ::DatawireQuarkCore::List.new(["quark.HTTPRequest"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.onWSConnect((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSServletProxy_onServletInit_Method; QuarkSpiApiTracingWSServletProxyOnServletInitMethod; end
class QuarkSpiApiTracingWSServletProxyOnServletInitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletInit", ::DatawireQuarkCore::List.new(["quark.String", "quark.Runtime"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletInit((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSServletProxy_onServletError_Method; QuarkSpiApiTracingWSServletProxyOnServletErrorMethod; end
class QuarkSpiApiTracingWSServletProxyOnServletErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletError", ::DatawireQuarkCore::List.new(["quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletError((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSServletProxy_onServletEnd_Method; QuarkSpiApiTracingWSServletProxyOnServletEndMethod; end
class QuarkSpiApiTracingWSServletProxyOnServletEndMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onServletEnd", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onServletEnd((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSServletProxy_serveWS_Method; QuarkSpiApiTracingWSServletProxyServeWSMethod; end
class QuarkSpiApiTracingWSServletProxyServeWSMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "serveWS", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.serveWS((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSServletProxy; QuarkSpiApiTracingWSServletProxy; end
class QuarkSpiApiTracingWSServletProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_WSServletProxy.new() }



    def initialize()
        
        super("quark.spi_api_tracing.WSServletProxy")
        (self).name = "quark.spi_api_tracing.WSServletProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi_api_tracing.Identificator", "namer"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.Logger", "log"), ::Quark.quark.reflect.Field.new("quark.Servlet", "servlet_impl"), ::Quark.quark.reflect.Field.new("quark.spi_api_tracing.RuntimeProxy", "real_runtime"), ::Quark.quark.reflect.Field.new("quark.WSServlet", "ws_servlet_impl")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_tracing_WSServletProxy_onWSConnect_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WSServletProxy_onServletInit_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WSServletProxy_onServletError_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WSServletProxy_onServletEnd_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WSServletProxy_serveWS_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.WSServletProxy.new((args)[0], (args)[1], (args)[2])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingWSServletProxy.unlazy_statics


def self.quark_spi_api_tracing_TaskProxy_onExecute_Method; QuarkSpiApiTracingTaskProxyOnExecuteMethod; end
class QuarkSpiApiTracingTaskProxyOnExecuteMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onExecute", ::DatawireQuarkCore::List.new(["quark.Runtime"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onExecute((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_TaskProxy; QuarkSpiApiTracingTaskProxy; end
class QuarkSpiApiTracingTaskProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_TaskProxy.new() }



    def initialize()
        
        super("quark.spi_api_tracing.TaskProxy")
        (self).name = "quark.spi_api_tracing.TaskProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi_api_tracing.Identificator", "namer"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.Logger", "log"), ::Quark.quark.reflect.Field.new("quark.Task", "task_impl"), ::Quark.quark.reflect.Field.new("quark.spi_api_tracing.RuntimeProxy", "real_runtime")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_tracing_TaskProxy_onExecute_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.TaskProxy.new((args)[0], (args)[1], (args)[2])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingTaskProxy.unlazy_statics


def self.quark_spi_api_tracing_WebSocketProxy_send_Method; QuarkSpiApiTracingWebSocketProxySendMethod; end
class QuarkSpiApiTracingWebSocketProxySendMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.bool", "send", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.send((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WebSocketProxy_sendBinary_Method; QuarkSpiApiTracingWebSocketProxySendBinaryMethod; end
class QuarkSpiApiTracingWebSocketProxySendBinaryMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.bool", "sendBinary", ::DatawireQuarkCore::List.new(["quark.Buffer"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.sendBinary((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WebSocketProxy_close_Method; QuarkSpiApiTracingWebSocketProxyCloseMethod; end
class QuarkSpiApiTracingWebSocketProxyCloseMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.bool", "close", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.close()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WebSocketProxy; QuarkSpiApiTracingWebSocketProxy; end
class QuarkSpiApiTracingWebSocketProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_WebSocketProxy.new() }



    def initialize()
        
        super("quark.spi_api_tracing.WebSocketProxy")
        (self).name = "quark.spi_api_tracing.WebSocketProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi_api_tracing.Identificator", "namer"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.Logger", "log"), ::Quark.quark.reflect.Field.new("quark.WebSocket", "socket_impl")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_tracing_WebSocketProxy_send_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WebSocketProxy_sendBinary_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WebSocketProxy_close_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.WebSocketProxy.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingWebSocketProxy.unlazy_statics


def self.quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method; QuarkSpiApiTracingWSHandlerProxyOnWSInitMethod; end
class QuarkSpiApiTracingWSHandlerProxyOnWSInitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSInit", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onWSInit((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method; QuarkSpiApiTracingWSHandlerProxyOnWSConnectedMethod; end
class QuarkSpiApiTracingWSHandlerProxyOnWSConnectedMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSConnected", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onWSConnected((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method; QuarkSpiApiTracingWSHandlerProxyOnWSMessageMethod; end
class QuarkSpiApiTracingWSHandlerProxyOnWSMessageMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSMessage", ::DatawireQuarkCore::List.new(["quark.WebSocket", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onWSMessage((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method; QuarkSpiApiTracingWSHandlerProxyOnWSBinaryMethod; end
class QuarkSpiApiTracingWSHandlerProxyOnWSBinaryMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSBinary", ::DatawireQuarkCore::List.new(["quark.WebSocket", "quark.Buffer"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onWSBinary((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method; QuarkSpiApiTracingWSHandlerProxyOnWSClosedMethod; end
class QuarkSpiApiTracingWSHandlerProxyOnWSClosedMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSClosed", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onWSClosed((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSHandlerProxy_onWSError_Method; QuarkSpiApiTracingWSHandlerProxyOnWSErrorMethod; end
class QuarkSpiApiTracingWSHandlerProxyOnWSErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSError", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onWSError((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method; QuarkSpiApiTracingWSHandlerProxyOnWSFinalMethod; end
class QuarkSpiApiTracingWSHandlerProxyOnWSFinalMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSFinal", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onWSFinal((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_WSHandlerProxy; QuarkSpiApiTracingWSHandlerProxy; end
class QuarkSpiApiTracingWSHandlerProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_WSHandlerProxy.new() }



    def initialize()
        
        super("quark.spi_api_tracing.WSHandlerProxy")
        (self).name = "quark.spi_api_tracing.WSHandlerProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi_api_tracing.Identificator", "namer"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.Logger", "log"), ::Quark.quark.reflect.Field.new("quark.WSHandler", "handler_impl"), ::Quark.quark.reflect.Field.new("quark.spi_api_tracing.WebSocketProxy", "wrapped_socket")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_tracing_WSHandlerProxy_onWSInit_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WSHandlerProxy_onWSConnected_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WSHandlerProxy_onWSMessage_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WSHandlerProxy_onWSBinary_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WSHandlerProxy_onWSClosed_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WSHandlerProxy_onWSError_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_WSHandlerProxy_onWSFinal_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.WSHandlerProxy.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingWSHandlerProxy.unlazy_statics


def self.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method; QuarkSpiApiTracingHTTPHandlerProxyOnHTTPInitMethod; end
class QuarkSpiApiTracingHTTPHandlerProxyOnHTTPInitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPInit", ::DatawireQuarkCore::List.new(["quark.HTTPRequest"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onHTTPInit((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method; QuarkSpiApiTracingHTTPHandlerProxyOnHTTPResponseMethod; end
class QuarkSpiApiTracingHTTPHandlerProxyOnHTTPResponseMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPResponse", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPResponse"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onHTTPResponse((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method; QuarkSpiApiTracingHTTPHandlerProxyOnHTTPErrorMethod; end
class QuarkSpiApiTracingHTTPHandlerProxyOnHTTPErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPError", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onHTTPError((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method; QuarkSpiApiTracingHTTPHandlerProxyOnHTTPFinalMethod; end
class QuarkSpiApiTracingHTTPHandlerProxyOnHTTPFinalMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPFinal", ::DatawireQuarkCore::List.new(["quark.HTTPRequest"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.onHTTPFinal((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_HTTPHandlerProxy; QuarkSpiApiTracingHTTPHandlerProxy; end
class QuarkSpiApiTracingHTTPHandlerProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_HTTPHandlerProxy.new() }



    def initialize()
        
        super("quark.spi_api_tracing.HTTPHandlerProxy")
        (self).name = "quark.spi_api_tracing.HTTPHandlerProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi_api_tracing.Identificator", "namer"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.Logger", "log"), ::Quark.quark.reflect.Field.new("quark.HTTPHandler", "handler_impl")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPInit_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPResponse_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPError_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_HTTPHandlerProxy_onHTTPFinal_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.HTTPHandlerProxy.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingHTTPHandlerProxy.unlazy_statics


def self.quark_spi_api_tracing_RuntimeProxy_open_Method; QuarkSpiApiTracingRuntimeProxyOpenMethod; end
class QuarkSpiApiTracingRuntimeProxyOpenMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "open", ::DatawireQuarkCore::List.new(["quark.String", "quark.WSHandler"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.open((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_RuntimeProxy_request_Method; QuarkSpiApiTracingRuntimeProxyRequestMethod; end
class QuarkSpiApiTracingRuntimeProxyRequestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "request", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPHandler"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.request((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_RuntimeProxy_schedule_Method; QuarkSpiApiTracingRuntimeProxyScheduleMethod; end
class QuarkSpiApiTracingRuntimeProxyScheduleMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "schedule", ::DatawireQuarkCore::List.new(["quark.Task", "quark.float"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.schedule((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_RuntimeProxy_codec_Method; QuarkSpiApiTracingRuntimeProxyCodecMethod; end
class QuarkSpiApiTracingRuntimeProxyCodecMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Codec", "codec", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.codec()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method; QuarkSpiApiTracingRuntimeProxyServeHTTPMethod; end
class QuarkSpiApiTracingRuntimeProxyServeHTTPMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "serveHTTP", ::DatawireQuarkCore::List.new(["quark.String", "quark.HTTPServlet"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.serveHTTP((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_RuntimeProxy_serveWS_Method; QuarkSpiApiTracingRuntimeProxyServeWSMethod; end
class QuarkSpiApiTracingRuntimeProxyServeWSMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "serveWS", ::DatawireQuarkCore::List.new(["quark.String", "quark.WSServlet"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.serveWS((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_RuntimeProxy_respond_Method; QuarkSpiApiTracingRuntimeProxyRespondMethod; end
class QuarkSpiApiTracingRuntimeProxyRespondMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "respond", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPResponse"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.respond((args)[0], (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_RuntimeProxy_fail_Method; QuarkSpiApiTracingRuntimeProxyFailMethod; end
class QuarkSpiApiTracingRuntimeProxyFailMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "fail", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.fail((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_RuntimeProxy_logger_Method; QuarkSpiApiTracingRuntimeProxyLoggerMethod; end
class QuarkSpiApiTracingRuntimeProxyLoggerMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Logger", "logger", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.logger((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.quark_spi_api_tracing_RuntimeProxy; QuarkSpiApiTracingRuntimeProxy; end
class QuarkSpiApiTracingRuntimeProxy < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_md.quark_spi_api_tracing_RuntimeProxy.new() }



    def initialize()
        
        super("quark.spi_api_tracing.RuntimeProxy")
        (self).name = "quark.spi_api_tracing.RuntimeProxy"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.spi_api_tracing.Identificator", "namer"), ::Quark.quark.reflect.Field.new("quark.String", "id"), ::Quark.quark.reflect.Field.new("quark.Logger", "log"), ::Quark.quark.reflect.Field.new("quark.Runtime", "impl")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_md.quark_spi_api_tracing_RuntimeProxy_open_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_RuntimeProxy_request_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_RuntimeProxy_schedule_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_RuntimeProxy_codec_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_RuntimeProxy_serveHTTP_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_RuntimeProxy_serveWS_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_RuntimeProxy_respond_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_RuntimeProxy_fail_Method.new(), ::Quark.quark_md.quark_spi_api_tracing_RuntimeProxy_logger_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.quark.spi_api_tracing.RuntimeProxy.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkSpiApiTracingRuntimeProxy.unlazy_statics


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_Task_md: -> { ::Quark.quark_md.quark_Task.singleton }
    static quark_Runtime_md: -> { ::Quark.quark_md.quark_Runtime.singleton }
    static quark_ListUtil_quark_Object__md: -> { ::Quark.quark_md.quark_ListUtil_quark_Object_.singleton }
    static quark_List_quark_String__md: -> { ::Quark.quark_md.quark_List_quark_String_.singleton }
    static quark_List_quark_Object__md: -> { ::Quark.quark_md.quark_List_quark_Object_.singleton }
    static quark_List_quark_concurrent_FutureCompletion__md: -> { ::Quark.quark_md.quark_List_quark_concurrent_FutureCompletion_.singleton }
    static quark_List_quark_test_Test__md: -> { ::Quark.quark_md.quark_List_quark_test_Test_.singleton }
    static quark_Map_quark_Object_quark_Object__md: -> { ::Quark.quark_md.quark_Map_quark_Object_quark_Object_.singleton }
    static quark_Map_quark_String_quark_ServiceInstance__md: -> { ::Quark.quark_md.quark_Map_quark_String_quark_ServiceInstance_.singleton }
    static quark_logging_Appender_md: -> { ::Quark.quark_md.quark_logging_Appender.singleton }
    static quark_logging_Config_md: -> { ::Quark.quark_md.quark_logging_Config.singleton }
    static quark_Servlet_md: -> { ::Quark.quark_md.quark_Servlet.singleton }
    static quark_Resolver_md: -> { ::Quark.quark_md.quark_Resolver.singleton }
    static quark_ResponseHolder_md: -> { ::Quark.quark_md.quark_ResponseHolder.singleton }
    static quark_Service_md: -> { ::Quark.quark_md.quark_Service.singleton }
    static quark_BaseService_md: -> { ::Quark.quark_md.quark_BaseService.singleton }
    static quark_ServiceInstance_md: -> { ::Quark.quark_md.quark_ServiceInstance.singleton }
    static quark_DegenerateResolver_md: -> { ::Quark.quark_md.quark_DegenerateResolver.singleton }
    static quark_Client_md: -> { ::Quark.quark_md.quark_Client.singleton }
    static quark_ServerResponder_md: -> { ::Quark.quark_md.quark_ServerResponder.singleton }
    static quark_Server_quark_Object__md: -> { ::Quark.quark_md.quark_Server_quark_Object_.singleton }
    static quark_behaviors_RPC_md: -> { ::Quark.quark_md.quark_behaviors_RPC.singleton }
    static quark_behaviors_RPCRequest_md: -> { ::Quark.quark_md.quark_behaviors_RPCRequest.singleton }
    static quark_behaviors_CircuitBreaker_md: -> { ::Quark.quark_md.quark_behaviors_CircuitBreaker.singleton }
    static quark_concurrent_Event_md: -> { ::Quark.quark_md.quark_concurrent_Event.singleton }
    static quark_concurrent_FutureListener_md: -> { ::Quark.quark_md.quark_concurrent_FutureListener.singleton }
    static quark_concurrent_FutureCompletion_md: -> { ::Quark.quark_md.quark_concurrent_FutureCompletion.singleton }
    static quark_concurrent_EventContext_md: -> { ::Quark.quark_md.quark_concurrent_EventContext.singleton }
    static quark_concurrent_Future_md: -> { ::Quark.quark_md.quark_concurrent_Future.singleton }
    static quark_concurrent_FutureWait_md: -> { ::Quark.quark_md.quark_concurrent_FutureWait.singleton }
    static quark_concurrent_Queue_quark_concurrent_Event__md: -> { ::Quark.quark_md.quark_concurrent_Queue_quark_concurrent_Event_.singleton }
    static quark_concurrent_CollectorExecutor_md: -> { ::Quark.quark_md.quark_concurrent_CollectorExecutor.singleton }
    static quark_concurrent_Collector_md: -> { ::Quark.quark_md.quark_concurrent_Collector.singleton }
    static quark_concurrent_TimeoutListener_md: -> { ::Quark.quark_md.quark_concurrent_TimeoutListener.singleton }
    static quark_concurrent_TimeoutExpiry_md: -> { ::Quark.quark_md.quark_concurrent_TimeoutExpiry.singleton }
    static quark_concurrent_Timeout_md: -> { ::Quark.quark_md.quark_concurrent_Timeout.singleton }
    static quark_concurrent_TLSContextInitializer_md: -> { ::Quark.quark_md.quark_concurrent_TLSContextInitializer.singleton }
    static quark_concurrent_Context_md: -> { ::Quark.quark_md.quark_concurrent_Context.singleton }
    static quark_HTTPHandler_md: -> { ::Quark.quark_md.quark_HTTPHandler.singleton }
    static quark_HTTPRequest_md: -> { ::Quark.quark_md.quark_HTTPRequest.singleton }
    static quark_HTTPResponse_md: -> { ::Quark.quark_md.quark_HTTPResponse.singleton }
    static quark_HTTPServlet_md: -> { ::Quark.quark_md.quark_HTTPServlet.singleton }
    static quark_WSHandler_md: -> { ::Quark.quark_md.quark_WSHandler.singleton }
    static quark_WebSocket_md: -> { ::Quark.quark_md.quark_WebSocket.singleton }
    static quark_WSServlet_md: -> { ::Quark.quark_md.quark_WSServlet.singleton }
    static quark_test_TestInitializer_md: -> { ::Quark.quark_md.quark_test_TestInitializer.singleton }
    static quark_test_Test_md: -> { ::Quark.quark_md.quark_test_Test.singleton }
    static quark_test_MethodTest_md: -> { ::Quark.quark_md.quark_test_MethodTest.singleton }
    static quark_test_Harness_md: -> { ::Quark.quark_md.quark_test_Harness.singleton }
    static quark_URL_md: -> { ::Quark.quark_md.quark_URL.singleton }
    static quark_spi_RuntimeSpi_md: -> { ::Quark.quark_md.quark_spi_RuntimeSpi.singleton }
    static quark_spi_RuntimeFactory_md: -> { ::Quark.quark_md.quark_spi_RuntimeFactory.singleton }
    static quark_spi_api_ServletProxy_md: -> { ::Quark.quark_md.quark_spi_api_ServletProxy.singleton }
    static quark_spi_api_HTTPServletProxy_md: -> { ::Quark.quark_md.quark_spi_api_HTTPServletProxy.singleton }
    static quark_spi_api_WSServletProxy_md: -> { ::Quark.quark_md.quark_spi_api_WSServletProxy.singleton }
    static quark_spi_api_TaskProxy_md: -> { ::Quark.quark_md.quark_spi_api_TaskProxy.singleton }
    static quark_spi_api_RuntimeProxy_md: -> { ::Quark.quark_md.quark_spi_api_RuntimeProxy.singleton }
    static quark_spi_api_tracing_Identificator_md: -> { ::Quark.quark_md.quark_spi_api_tracing_Identificator.singleton }
    static quark_spi_api_tracing_Identifiable_md: -> { ::Quark.quark_md.quark_spi_api_tracing_Identifiable.singleton }
    static quark_spi_api_tracing_ServletProxy_md: -> { ::Quark.quark_md.quark_spi_api_tracing_ServletProxy.singleton }
    static quark_spi_api_tracing_HTTPRequestProxy_md: -> { ::Quark.quark_md.quark_spi_api_tracing_HTTPRequestProxy.singleton }
    static quark_spi_api_tracing_HTTPResponseProxy_md: -> { ::Quark.quark_md.quark_spi_api_tracing_HTTPResponseProxy.singleton }
    static quark_spi_api_tracing_HTTPServletProxy_md: -> { ::Quark.quark_md.quark_spi_api_tracing_HTTPServletProxy.singleton }
    static quark_spi_api_tracing_WSServletProxy_md: -> { ::Quark.quark_md.quark_spi_api_tracing_WSServletProxy.singleton }
    static quark_spi_api_tracing_TaskProxy_md: -> { ::Quark.quark_md.quark_spi_api_tracing_TaskProxy.singleton }
    static quark_spi_api_tracing_WebSocketProxy_md: -> { ::Quark.quark_md.quark_spi_api_tracing_WebSocketProxy.singleton }
    static quark_spi_api_tracing_WSHandlerProxy_md: -> { ::Quark.quark_md.quark_spi_api_tracing_WSHandlerProxy.singleton }
    static quark_spi_api_tracing_HTTPHandlerProxy_md: -> { ::Quark.quark_md.quark_spi_api_tracing_HTTPHandlerProxy.singleton }
    static quark_spi_api_tracing_RuntimeProxy_md: -> { ::Quark.quark_md.quark_spi_api_tracing_RuntimeProxy.singleton }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Root.unlazy_statics
end # module QuarkMd
end # module Quark
