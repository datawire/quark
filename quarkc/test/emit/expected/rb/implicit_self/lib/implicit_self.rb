module Quark
require "quark"
def self.implicit_self; ImplicitSelf; end
module ImplicitSelf
require 'quark' # .../reflect
require_relative 'implicit_self_md' # 0 () ()

def self.Foo; Foo; end
class Foo < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static implicit_self_Foo_ref: -> { ::Quark.implicit_self_md.Root.implicit_self_Foo_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def next_()
        
        nil

        nil
    end

    def test()
        
        self.next_()

        nil
    end

    def _getClass()
        
        return "implicit_self.Foo"

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
Foo.unlazy_statics
end # module ImplicitSelf
end # module Quark
