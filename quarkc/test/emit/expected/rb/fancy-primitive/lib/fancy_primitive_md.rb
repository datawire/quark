module Quark
def self.fancy_primitive_md; FancyPrimitiveMd; end
module FancyPrimitiveMd
require 'quark' # .../reflect

def self.quark_List_quark_Object_; QuarkListQuarkObject; end
class QuarkListQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.fancy_primitive_md.quark_List_quark_Object_.new() }



    def initialize()
        
        super("quark.List<quark.Object>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
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
QuarkListQuarkObject.unlazy_statics

def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_List_quark_Object__md: -> { ::Quark.fancy_primitive_md.quark_List_quark_Object_.singleton }



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
end # module FancyPrimitiveMd
end # module Quark
