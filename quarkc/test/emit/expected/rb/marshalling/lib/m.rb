module Quark
require "quark"
def self.m; M; end
module M
require 'quark' # .../reflect
require_relative 'marshalling_md' # 0 () ()
require 'quark' 

def self.Inner; Inner; end
class Inner < ::DatawireQuarkCore::QuarkObject
    attr_accessor :inner_int, :inner_string, :inner_float, :inner_string_list
    extend ::DatawireQuarkCore::Static

    static m_Inner_ref: -> { ::Quark.marshalling_md.Root.m_Inner_md }
    static quark_List_quark_String__ref: -> { ::Quark.marshalling_md.Root.quark_List_quark_String__md }



    def initialize()
        self.__init_fields__

        nil
    end




    def setup(i)
        
        f = (i).to_f
        (self).inner_int = i
        (self).inner_string = ("str of ") + ((i).to_s)
        (self).inner_float = (300.14) + (f)
        (self).inner_string_list = ::DatawireQuarkCore::List.new(["i"])
        return self

        nil
    end

    def _getClass()
        
        return "m.Inner"

        nil
    end

    def _getField(name)
        
        if ((name) == ("inner_int"))
            return (self).inner_int
        end
        if ((name) == ("inner_string"))
            return (self).inner_string
        end
        if ((name) == ("inner_float"))
            return (self).inner_float
        end
        if ((name) == ("inner_string_list"))
            return (self).inner_string_list
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("inner_int"))
            (self).inner_int = value
        end
        if ((name) == ("inner_string"))
            (self).inner_string = value
        end
        if ((name) == ("inner_float"))
            (self).inner_float = value
        end
        if ((name) == ("inner_string_list"))
            (self).inner_string_list = value
        end

        nil
    end

    def __init_fields__()
        

        self.inner_int = nil
        self.inner_string = nil
        self.inner_float = nil
        self.inner_string_list = nil

        nil
    end


end
Inner.unlazy_statics

def self.Outer; Outer; end
class Outer < ::DatawireQuarkCore::QuarkObject
    attr_accessor :outer_int, :outer_string, :outer_float, :outer_inner_list
    extend ::DatawireQuarkCore::Static

    static m_Outer_ref: -> { ::Quark.marshalling_md.Root.m_Outer_md }
    static quark_List_m_Inner__ref: -> { ::Quark.marshalling_md.Root.quark_List_m_Inner__md }



    def initialize()
        self.__init_fields__

        nil
    end




    def setup(i)
        
        f = (i).to_f
        (self).outer_int = (i) * (10)
        (self).outer_string = ("str of ") + ((i).to_s)
        (self).outer_float = (314000.15) + (f)
        (self).outer_inner_list = ::DatawireQuarkCore::List.new([::Quark.m.Inner.new().setup(i), ::Quark.m.Inner.new().setup((i) + (42)), ::Quark.m.Inner.new().setup((i) * (42))])
        return self

        nil
    end

    def _getClass()
        
        return "m.Outer"

        nil
    end

    def _getField(name)
        
        if ((name) == ("outer_int"))
            return (self).outer_int
        end
        if ((name) == ("outer_string"))
            return (self).outer_string
        end
        if ((name) == ("outer_float"))
            return (self).outer_float
        end
        if ((name) == ("outer_inner_list"))
            return (self).outer_inner_list
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("outer_int"))
            (self).outer_int = value
        end
        if ((name) == ("outer_string"))
            (self).outer_string = value
        end
        if ((name) == ("outer_float"))
            (self).outer_float = value
        end
        if ((name) == ("outer_inner_list"))
            (self).outer_inner_list = value
        end

        nil
    end

    def __init_fields__()
        

        self.outer_int = nil
        self.outer_string = nil
        self.outer_float = nil
        self.outer_inner_list = nil

        nil
    end


end
Outer.unlazy_statics

def self.test_marshalling()
    
    actual = ::Quark.m.Outer.new().setup(101)
    encoded = ::Quark.quark.toJSON(actual, ::Quark.quark.reflect.QuarkClass.get(::DatawireQuarkCore._getClass(actual))).toString()
    ::DatawireQuarkCore.print(encoded)
    expected = ::Quark.m.Outer.new()
    ::Quark.quark.fromJSON(::Quark.quark.reflect.QuarkClass.get(::DatawireQuarkCore._getClass(expected)), expected, ::DatawireQuarkCore::JSONObject.parse(encoded))
    ::DatawireQuarkCore.print(((expected).outer_int).to_s)
    ::DatawireQuarkCore.print((expected).outer_string)
    ::DatawireQuarkCore.print(((expected).outer_float).to_s)
    ::DatawireQuarkCore.print(((((expected).outer_inner_list)[1]).inner_float).to_s)


    nil
end
end # module M
end # module Quark
