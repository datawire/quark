module Quark
def self.super_md; SuperMd; end
module SuperMd
require 'quark' # .../reflect
# for ('super_md',): require_relative 'super' # 0 () ()

def self.super_A_greet_Method; SuperAGreetMethod; end
class SuperAGreetMethod < ::Quark.quark.reflect.Method



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

def self.super_A; SuperA; end
class SuperA < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.super_md.super_A.new() }



    def initialize()
        
        super("super.A")
        (self).name = "super.A"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.super_md.super_A_greet_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.super.A.new((args)[0])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

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
SuperA.unlazy_statics

def self.super_B_greet_Method; SuperBGreetMethod; end
class SuperBGreetMethod < ::Quark.quark.reflect.Method



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

def self.super_B; SuperB; end
class SuperB < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.super_md.super_B.new() }



    def initialize()
        
        super("super.B")
        (self).name = "super.B"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.super_md.super_B_greet_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.super.B.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

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
SuperB.unlazy_statics

def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.super_md.quark_List_quark_String_.new() }



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

def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static super_A_md: -> { ::Quark.super_md.super_A.singleton }
    static super_B_md: -> { ::Quark.super_md.super_B.singleton }



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
end # module SuperMd
end # module Quark
