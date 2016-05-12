module Quark
require "quark"
def self.test; Test; end
module Test
require 'quark' # .../reflect
require_relative 'test/subtest' # 0 ('test',) ()
require_relative 'package_md' # 0 () ()


def self.go()
    
    nil


    nil
end

def self.Test; Test; end
class Test < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static test_Test_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def go()
        
        nil

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
Test.unlazy_statics
end # module Test
end # module Quark
