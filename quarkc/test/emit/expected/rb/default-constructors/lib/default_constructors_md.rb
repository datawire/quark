module Quark
def self.default_constructors_md; DefaultConstructorsMd; end
module DefaultConstructorsMd
require 'quark' # .../reflect
# for ('default_constructors_md',): require_relative 'default_constructors' # 0 () ()


def self.default_constructors_A; DefaultConstructorsA; end
class DefaultConstructorsA < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
DefaultConstructorsA.unlazy_statics


def self.default_constructors_B_greet_Method; DefaultConstructorsBGreetMethod; end
class DefaultConstructorsBGreetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.default_constructors_B; DefaultConstructorsB; end
class DefaultConstructorsB < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
DefaultConstructorsB.unlazy_statics


def self.default_constructors_C_greet_Method; DefaultConstructorsCGreetMethod; end
class DefaultConstructorsCGreetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.default_constructors_C; DefaultConstructorsC; end
class DefaultConstructorsC < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
DefaultConstructorsC.unlazy_statics


def self.default_constructors_X; DefaultConstructorsX; end
class DefaultConstructorsX < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
DefaultConstructorsX.unlazy_statics


def self.default_constructors_Y_test_Method; DefaultConstructorsYTestMethod; end
class DefaultConstructorsYTestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.test_()
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

def self.default_constructors_Y; DefaultConstructorsY; end
class DefaultConstructorsY < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
DefaultConstructorsY.unlazy_statics


def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.default_constructors_md.quark_List_quark_String_.new() }



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
Root.unlazy_statics
end # module DefaultConstructorsMd
end # module Quark
