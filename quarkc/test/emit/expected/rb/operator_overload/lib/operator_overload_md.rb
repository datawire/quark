module Quark
def self.operator_overload_md; MODULE_operator_overload_md; end
module MODULE_operator_overload_md
require 'quark' # .../reflect
# for ('operator_overload_md',): require_relative 'operator_overload' # 0 () ()

def self.operator_overload_Overload___add___Method; CLASS_operator_overload_Overload___add___Method; end
class CLASS_operator_overload_Overload___add___Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("operator_overload.Overload", "__add__", ::DatawireQuarkCore::List.new(["operator_overload.Overload"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.__add__((args)[0])

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

def self.operator_overload_Overload___mul___Method; CLASS_operator_overload_Overload___mul___Method; end
class CLASS_operator_overload_Overload___mul___Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("operator_overload.Overload", "__mul__", ::DatawireQuarkCore::List.new(["operator_overload.Overload"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.__mul__((args)[0])

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

def self.operator_overload_Overload_test_Method; CLASS_operator_overload_Overload_test_Method; end
class CLASS_operator_overload_Overload_test_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.test()
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
        

        nil
    end


end

def self.operator_overload_Overload; CLASS_operator_overload_Overload; end
class CLASS_operator_overload_Overload < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.operator_overload_md.operator_overload_Overload.new() }



    def initialize()
        
        super("operator_overload.Overload")
        (self).name = "operator_overload.Overload"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.operator_overload_md.operator_overload_Overload___add___Method.new(), ::Quark.operator_overload_md.operator_overload_Overload___mul___Method.new(), ::Quark.operator_overload_md.operator_overload_Overload_test_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.operator_overload.Overload.new((args)[0])

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
CLASS_operator_overload_Overload.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static operator_overload_Overload_md: -> { ::Quark.operator_overload_md.operator_overload_Overload.singleton }



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
CLASS_Root.unlazy_statics
end # module MODULE_operator_overload_md
end # module Quark
