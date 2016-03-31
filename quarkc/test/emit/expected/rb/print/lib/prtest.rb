module Quark
require "quark"
def self.prtest; Prtest; end
module Prtest
require 'quark' # .../reflect
require_relative 'prtest_md' # 0 () ()
require_relative 'prtest' # 0 () ()

def self.Test; Test; end
class Test < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static prtest_Test_ref: -> { ::Quark.prtest_md.Root.prtest_Test_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def test()
        
        ::DatawireQuarkCore.print("Hello World!")

        nil
    end

    def _getClass()
        
        return "prtest.Test"

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
Test.unlazy_statics

def self.main()
    
    ::Quark.prtest.Test.new().test()


    nil
end

if __FILE__ == $0
    ::Quark.prtest.main()
end

end # module Prtest
end # module Quark
