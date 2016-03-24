module Quark
def self.marshalling_md; MODULE_marshalling_md; end
module MODULE_marshalling_md
require 'quark' # .../reflect
# for ('marshalling_md',): require_relative 'm' # 0 () ()

def self.m_Inner_setup_Method; CLASS_m_Inner_setup_Method; end
class CLASS_m_Inner_setup_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("m.Inner", "setup", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.setup((args)[0])

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

def self.m_Inner; CLASS_m_Inner; end
class CLASS_m_Inner < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.marshalling_md.m_Inner.new() }



    def initialize()
        
        super("m.Inner")
        (self).name = "m.Inner"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.int", "inner_int"), ::Quark.quark.reflect.Field.new("quark.String", "inner_string"), ::Quark.quark.reflect.Field.new("quark.float", "inner_float"), ::Quark.quark.reflect.Field.new("quark.List<quark.String>", "inner_string_list")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.marshalling_md.m_Inner_setup_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.m.Inner.new()

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
CLASS_m_Inner.unlazy_statics

def self.m_Outer_setup_Method; CLASS_m_Outer_setup_Method; end
class CLASS_m_Outer_setup_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("m.Outer", "setup", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.setup((args)[0])

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

def self.m_Outer; CLASS_m_Outer; end
class CLASS_m_Outer < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.marshalling_md.m_Outer.new() }



    def initialize()
        
        super("m.Outer")
        (self).name = "m.Outer"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.int", "outer_int"), ::Quark.quark.reflect.Field.new("quark.String", "outer_string"), ::Quark.quark.reflect.Field.new("quark.float", "outer_float"), ::Quark.quark.reflect.Field.new("quark.List<m.Inner>", "outer_inner_list")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.marshalling_md.m_Outer_setup_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.m.Outer.new()

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
CLASS_m_Outer.unlazy_statics

def self.quark_List_quark_String_; CLASS_quark_List_quark_String_; end
class CLASS_quark_List_quark_String_ < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.marshalling_md.quark_List_quark_String_.new() }



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
        

        nil
    end


end
CLASS_quark_List_quark_String_.unlazy_statics

def self.quark_List_m_Inner_; CLASS_quark_List_m_Inner_; end
class CLASS_quark_List_m_Inner_ < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.marshalling_md.quark_List_m_Inner_.new() }



    def initialize()
        
        super("quark.List<m.Inner>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["m.Inner"])
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
        

        nil
    end


end
CLASS_quark_List_m_Inner_.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static m_Inner_md: -> { ::Quark.marshalling_md.m_Inner.singleton }
    static m_Outer_md: -> { ::Quark.marshalling_md.m_Outer.singleton }
    static quark_List_quark_String__md: -> { ::Quark.marshalling_md.quark_List_quark_String_.singleton }
    static quark_List_m_Inner__md: -> { ::Quark.marshalling_md.quark_List_m_Inner_.singleton }



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
end # module MODULE_marshalling_md
end # module Quark
