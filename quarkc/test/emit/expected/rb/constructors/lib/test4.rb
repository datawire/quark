module Quark
require "quark"
def self.test4; Test4; end
module Test4
require 'quark' # .../reflect
require_relative 'constructors_md' # 0 () ()


def self.Base; Base; end
class Base < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static test4_Base_ref: -> { ::Quark.constructors_md.Root.test4_Base_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "test4.Base"

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
        
        self.name = "Hello World!"

        nil
    end


end
Base.unlazy_statics

def self.Test; Test; end
class Test < ::Quark.test4.Base
    attr_accessor :mumble, :later
    extend ::DatawireQuarkCore::Static

    static test4_Test_ref: -> { ::Quark.constructors_md.Root.test4_Test_md }



    def initialize()
        
        super()
        (self).later = "Hello World!"

        nil
    end




    def _getClass()
        
        return "test4.Test"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        if ((name) == ("mumble"))
            return (self).mumble
        end
        if ((name) == ("later"))
            return (self).later
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = value
        end
        if ((name) == ("mumble"))
            (self).mumble = value
        end
        if ((name) == ("later"))
            (self).later = value
        end

        nil
    end

    def __init_fields__()
        
        super
        self.mumble = "lalala"
        self.later = nil

        nil
    end


end
Test.unlazy_statics

def self.go()
    
    t = ::Quark.test4.Test.new()
    ::DatawireQuarkCore.print((t).name)
    ::DatawireQuarkCore.print((::Quark.test4.Test.new()).name)


    nil
end
end # module Test4
end # module Quark
