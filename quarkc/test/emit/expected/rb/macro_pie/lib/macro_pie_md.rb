module Quark
def self.macro_pie_md; MODULE_macro_pie_md; end
module MODULE_macro_pie_md
require 'quark' # .../reflect
# for ('macro_pie_md',): require_relative 'macro_pie' # 0 () ()

def self.macro_pie_Pie_test_Method; CLASS_macro_pie_Pie_test_Method; end
class CLASS_macro_pie_Pie_test_Method < ::Quark.quark.reflect.Method



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

def self.macro_pie_Pie; CLASS_macro_pie_Pie; end
class CLASS_macro_pie_Pie < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.macro_pie_md.macro_pie_Pie.new() }



    def initialize()
        
        super("macro_pie.Pie")
        (self).name = "macro_pie.Pie"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.macro_pie_md.macro_pie_Pie_test_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.macro_pie.Pie.new()

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
CLASS_macro_pie_Pie.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static macro_pie_Pie_md: -> { ::Quark.macro_pie_md.macro_pie_Pie.singleton }



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
end # module MODULE_macro_pie_md
end # module Quark
