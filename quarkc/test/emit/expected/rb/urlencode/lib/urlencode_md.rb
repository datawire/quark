module Quark
def self.urlencode_md; MODULE_urlencode_md; end
module MODULE_urlencode_md
require 'quark' # .../reflect

def self.quark_Map_quark_String_quark_Object_; CLASS_quark_Map_quark_String_quark_Object_; end
class CLASS_quark_Map_quark_String_quark_Object_ < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.urlencode_md.quark_Map_quark_String_quark_Object_.new() }



    def initialize()
        
        super("quark.Map<quark.String,quark.Object>")
        (self).name = "quark.Map"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String", "quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Hash.new()

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
CLASS_quark_Map_quark_String_quark_Object_.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject



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
end # module MODULE_urlencode_md
end # module Quark
