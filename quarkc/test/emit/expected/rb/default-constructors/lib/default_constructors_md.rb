module Quark
def self.default_constructors_md; MODULE_default_constructors_md; end
module MODULE_default_constructors_md
require 'quark' # .../reflect
# for ('default_constructors_md',): require_relative 'default_constructors' # 0 () ()

def self.default_constructors_A; CLASS_default_constructors_A; end
class CLASS_default_constructors_A < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.default_constructors_md.default_constructors_A.new() }



    def initialize()
        
        super("default_constructors.A")
        (self).name = "default_constructors.A"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.default_constructors.A.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

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
CLASS_default_constructors_A.unlazy_statics

def self.default_constructors_B_greet_Method; CLASS_default_constructors_B_greet_Method; end
class CLASS_default_constructors_B_greet_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "greet", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.greet()
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

def self.default_constructors_B; CLASS_default_constructors_B; end
class CLASS_default_constructors_B < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.default_constructors_md.default_constructors_B.new() }



    def initialize()
        
        super("default_constructors.B")
        (self).name = "default_constructors.B"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.default_constructors_md.default_constructors_B_greet_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.default_constructors.B.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

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
CLASS_default_constructors_B.unlazy_statics

def self.default_constructors_C_greet_Method; CLASS_default_constructors_C_greet_Method; end
class CLASS_default_constructors_C_greet_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "greet", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.greet()
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

def self.default_constructors_C; CLASS_default_constructors_C; end
class CLASS_default_constructors_C < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.default_constructors_md.default_constructors_C.new() }



    def initialize()
        
        super("default_constructors.C")
        (self).name = "default_constructors.C"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.default_constructors_md.default_constructors_C_greet_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.default_constructors.C.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

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
CLASS_default_constructors_C.unlazy_statics

def self.default_constructors_X; CLASS_default_constructors_X; end
class CLASS_default_constructors_X < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.default_constructors_md.default_constructors_X.new() }



    def initialize()
        
        super("default_constructors.X")
        (self).name = "default_constructors.X"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.default_constructors.X.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

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
CLASS_default_constructors_X.unlazy_statics

def self.default_constructors_Y_test_Method; CLASS_default_constructors_Y_test_Method; end
class CLASS_default_constructors_Y_test_Method < ::Quark.quark.reflect.Method



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

def self.default_constructors_Y; CLASS_default_constructors_Y; end
class CLASS_default_constructors_Y < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.default_constructors_md.default_constructors_Y.new() }



    def initialize()
        
        super("default_constructors.Y")
        (self).name = "default_constructors.Y"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.default_constructors_md.default_constructors_Y_test_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.default_constructors.Y.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

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
CLASS_default_constructors_Y.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static default_constructors_A_md: -> { ::Quark.default_constructors_md.default_constructors_A.singleton }
    static default_constructors_B_md: -> { ::Quark.default_constructors_md.default_constructors_B.singleton }
    static default_constructors_C_md: -> { ::Quark.default_constructors_md.default_constructors_C.singleton }
    static default_constructors_X_md: -> { ::Quark.default_constructors_md.default_constructors_X.singleton }
    static default_constructors_Y_md: -> { ::Quark.default_constructors_md.default_constructors_Y.singleton }



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
end # module MODULE_default_constructors_md
end # module Quark
