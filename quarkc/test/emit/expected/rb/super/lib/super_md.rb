module Quark
def self.super_md; MODULE_super_md; end
module MODULE_super_md
require 'quark' # .../reflect
# for ('super_md',): require_relative 'super' # 0 () ()

def self.super_A_greet_Method; CLASS_super_A_greet_Method; end
class CLASS_super_A_greet_Method < ::Quark.quark.reflect.Method



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

def self.super_A; CLASS_super_A; end
class CLASS_super_A < ::Quark.quark.reflect.QuarkClass
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
CLASS_super_A.unlazy_statics

def self.super_B_greet_Method; CLASS_super_B_greet_Method; end
class CLASS_super_B_greet_Method < ::Quark.quark.reflect.Method



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

def self.super_B; CLASS_super_B; end
class CLASS_super_B < ::Quark.quark.reflect.QuarkClass
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
CLASS_super_B.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
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
CLASS_Root.unlazy_statics
end # module MODULE_super_md
end # module Quark
