module Quark
require "quark"
def self.classes; Classes; end
module Classes
def self.stuff; Stuff; end
module Stuff
require 'quark' # .../reflect classes/stuff


def self.Test; Test; end
class Test < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static classes_stuff_Test_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo(t)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.classes.stuff.Test }

        nil
    end

    def test()
        
        nil

        nil
    end

    def _getClass()
        
        return "classes.stuff.Test"

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


require_relative '../quark_ffi_signatures_md' # 0 () ('classes',)

end # module Stuff
end # module Classes
end # module Quark
