module Quark
require "datawire-quark-core"
def self.test; MODULE_test; end
module MODULE_test
require 'builtin' # .../reflect
require 'package_md'
require 'test/test'

def self.go()
    
    DatawireQuarkCore.print("GO!")


    nil
end

class CLASS_Test < Object
    attr_accessor :name

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def go()
        
        DatawireQuarkCore.print("TGO!")

        nil
    end

    def _getClass()
        
        return "test.Test"

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

def self.main()
    
    ::Quark.test.go()
    ::Quark.test.test.go()
    t1 = ::Quark.test.Test.new()
    t2 = ::Quark.test.test.Test.new()
    t1.go()
    t2.go()


    nil
end
end # module MODULE_test
end # module Quark
