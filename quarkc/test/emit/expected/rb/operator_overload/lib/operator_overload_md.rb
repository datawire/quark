module Quark
def self.operator_overload_md; OperatorOverloadMd; end
module OperatorOverloadMd
require 'quark' # .../reflect
# for ('operator_overload_md',): require_relative 'operator_overload' # 0 () ()


def self.operator_overload_Overload___add___Method; OperatorOverloadOverloadAddMethod; end
class OperatorOverloadOverloadAddMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.operator_overload_Overload___mul___Method; OperatorOverloadOverloadMulMethod; end
class OperatorOverloadOverloadMulMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.operator_overload_Overload_test_Method; OperatorOverloadOverloadTestMethod; end
class OperatorOverloadOverloadTestMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.operator_overload_Overload; OperatorOverloadOverload; end
class OperatorOverloadOverload < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
OperatorOverloadOverload.unlazy_statics


def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.operator_overload_md.quark_List_quark_String_.new() }



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


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
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
Root.unlazy_statics
end # module OperatorOverloadMd
end # module Quark
