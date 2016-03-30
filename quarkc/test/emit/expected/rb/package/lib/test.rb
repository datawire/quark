module Quark
require "quark"
def self.test; MODULE_test; end
module MODULE_test
require 'quark' # .../reflect
require_relative 'package_md' # 0 () ()

def self.go()
    
    ::DatawireQuarkCore.print("GO!")


    nil
end

def self.Test; CLASS_Test; end
class CLASS_Test < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static test_Test_ref: -> { ::Quark.package_md.Root.test_Test_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def go()
        
        ::DatawireQuarkCore.print("TGO!")

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


end
CLASS_Test.unlazy_statics
end # module MODULE_test
end # module Quark
