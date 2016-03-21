module Quark
require "datawire-quark-core"
def self.test2; MODULE_test2; end
module MODULE_test2
require 'builtin' # .../reflect
require 'constructors_md'

class CLASS_Test < Object
    attr_accessor :name

    
    def initialize(name)
        
        self.__init_fields__
        (self).name = name

        nil
    end



    
    def _getClass()
        
        return "test2.Test"

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
    
    t = ::Quark.test2.Test.new("Hello World!!")
    DatawireQuarkCore.print((t).name)
    DatawireQuarkCore.print((::Quark.test2.Test.new("Hello World!!")).name)


    nil
end
end # module MODULE_test2
end # module Quark
