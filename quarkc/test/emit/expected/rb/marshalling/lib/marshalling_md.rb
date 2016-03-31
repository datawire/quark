module Quark
def self.marshalling_md; MarshallingMd; end
module MarshallingMd
require 'quark' # .../reflect
# for ('marshalling_md',): require_relative 'm' # 0 () ()

def self.m_Inner_setup_Method; MInnerSetupMethod; end
class MInnerSetupMethod < ::Quark.quark.reflect.Method



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

def self.m_Inner; MInner; end
class MInner < ::Quark.quark.reflect.QuarkClass
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
MInner.unlazy_statics

def self.m_Outer_setup_Method; MOuterSetupMethod; end
class MOuterSetupMethod < ::Quark.quark.reflect.Method



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

def self.m_Outer; MOuter; end
class MOuter < ::Quark.quark.reflect.QuarkClass
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
MOuter.unlazy_statics

def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
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
QuarkListQuarkString.unlazy_statics

def self.quark_List_m_Inner_; QuarkListMInner; end
class QuarkListMInner < ::Quark.quark.reflect.QuarkClass
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
QuarkListMInner.unlazy_statics

def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
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
Root.unlazy_statics
end # module MarshallingMd
end # module Quark
