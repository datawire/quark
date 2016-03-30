module Quark
def self.inheritence_md; MODULE_inheritence_md; end
module MODULE_inheritence_md
require 'quark' # .../reflect
# for ('inheritence_md',): require_relative 'inheritence' # 0 () ()

def self.inheritence_A_foo_Method; CLASS_inheritence_A_foo_Method; end
class CLASS_inheritence_A_foo_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.foo()
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

def self.inheritence_A; CLASS_inheritence_A; end
class CLASS_inheritence_A < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.inheritence_md.inheritence_A.new() }



    def initialize()
        
        super("inheritence.A")
        (self).name = "inheritence.A"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.inheritence_md.inheritence_A_foo_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritence.A.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

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
CLASS_inheritence_A.unlazy_statics

def self.inheritence_B_foo_Method; CLASS_inheritence_B_foo_Method; end
class CLASS_inheritence_B_foo_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.foo()
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

def self.inheritence_B; CLASS_inheritence_B; end
class CLASS_inheritence_B < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.inheritence_md.inheritence_B.new() }



    def initialize()
        
        super("inheritence.B")
        (self).name = "inheritence.B"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.inheritence_md.inheritence_B_foo_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritence.B.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

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
CLASS_inheritence_B.unlazy_statics

def self.inheritence_C_foo_Method; CLASS_inheritence_C_foo_Method; end
class CLASS_inheritence_C_foo_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.foo()
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

def self.inheritence_C; CLASS_inheritence_C; end
class CLASS_inheritence_C < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.inheritence_md.inheritence_C.new() }



    def initialize()
        
        super("inheritence.C")
        (self).name = "inheritence.C"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.inheritence_md.inheritence_C_foo_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritence.C.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

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
CLASS_inheritence_C.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static inheritence_A_md: -> { ::Quark.inheritence_md.inheritence_A.singleton }
    static inheritence_B_md: -> { ::Quark.inheritence_md.inheritence_B.singleton }
    static inheritence_C_md: -> { ::Quark.inheritence_md.inheritence_C.singleton }



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
end # module MODULE_inheritence_md
end # module Quark
