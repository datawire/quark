module Quark
def self.macro_stuff_md; MacroStuffMd; end
module MacroStuffMd
require 'quark' # .../reflect
# for ('macro_stuff_md',): require_relative 'macro_stuff' # 0 () ()


def self.macro_stuff_Macro_test_Method; MacroStuffMacroTestMethod; end
class MacroStuffMacroTestMethod < ::Quark.quark.reflect.Method



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
        

        nil
    end


end

def self.macro_stuff_Macro; MacroStuffMacro; end
class MacroStuffMacro < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.macro_stuff_md.macro_stuff_Macro.new() }



    def initialize()
        
        super("macro_stuff.Macro")
        (self).name = "macro_stuff.Macro"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.macro_stuff_md.macro_stuff_Macro_test_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.macro_stuff.Macro.new()

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
MacroStuffMacro.unlazy_statics


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static macro_stuff_Macro_md: -> { ::Quark.macro_stuff_md.macro_stuff_Macro.singleton }



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
end # module MacroStuffMd
end # module Quark
