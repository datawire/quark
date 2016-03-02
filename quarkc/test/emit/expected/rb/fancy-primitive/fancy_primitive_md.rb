require "datawire-quark-core"
require "../builtin"


class Builtin_List_builtin_Object_ < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("builtin.List<builtin.Object>")
        (self).name = "builtin.List"
        (self).parameters = DatawireQuarkCore::List.new(["builtin.Object"])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end



    
    def construct(args)
        
        return DatawireQuarkCore::List.new()

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
def builtin_List_builtin_Object_()
    return Builtin_List_builtin_Object_

    nil
end


class Root < Object
    attr_accessor 

    
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
