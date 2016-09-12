module Quark
require "quark"
def self.statics; Statics; end
module Statics
require 'quark' # .../reflect


def self.Foo; Foo; end
class Foo < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static count: -> { nil }
    static statics_Foo_ref: -> { nil }



    def initialize()
        
        self.__init_fields__

        nil
    end




    def self.setCount(n)
        
        nil

        nil
    end

    def self.getCount()
        
        return 0

        nil
    end

    def test1()
        
        nil

        nil
    end

    def test2()
        
        nil

        nil
    end

    def test3()
        
        nil

        nil
    end

    def test4()
        
        nil

        nil
    end

    def _getClass()
        
        return "statics.Foo"

        nil
    end

    def _getField(name)
        
        if ((name) == ("count"))
            return ::Quark.statics.Foo.count
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("count"))
            ::Quark.statics.Foo.count = ::DatawireQuarkCore.cast(value) { ::Integer }
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Foo.unlazy_statics


require_relative 'quark_ffi_signatures_md' # 0 () ()

end # module Statics
end # module Quark
