module Quark
require "quark"
def self.test1; Test1; end
module Test1
require 'quark' # .../reflect
require_relative 'constructors_md' # 0 () ()

def self.Test; Test; end
class Test < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static test1_Test_ref: -> { ::Quark.constructors_md.Root.test1_Test_md }



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


end
Test.unlazy_statics

def self.go()
    
    t = ::Quark.test1.Test.new()
    ::DatawireQuarkCore.print((t).name)
    ::DatawireQuarkCore.print((::Quark.test1.Test.new()).name)


    nil
end
end # module Test1
end # module Quark
