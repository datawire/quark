module Quark
require "datawire-quark-core"
def self.test1; MODULE_test1; end
module MODULE_test1
# require_relatve "builtin/reflect.rb"
# require_relatve "constructors_md.rb"

class CLASS_Test < Object
    attr_accessor :name

    
    def initialize()
        
        self.__init_fields__
        (self).name = "Hello World!"

        nil
    end



    
    def _getClass()
        
        return "test1.Test"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = value
        end

        nil
    end

    def __init_fields__()
        

        self.name = nil

        nil
    end


end; def self.Test; CLASS_Test; end

def self.go()
    
    t = ::Quark.test1.Test.new()
    DatawireQuarkCore.print((t).name)
    DatawireQuarkCore.print((::Quark.test1.Test.new()).name)


    nil
end
end # module MODULE_test1
end # module Quark
