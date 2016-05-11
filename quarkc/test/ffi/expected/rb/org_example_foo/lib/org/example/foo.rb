module Quark
require "quark"
def self.org; Org; end
module Org
def self.example; Example; end
module Example
def self.foo; Foo; end
module Foo
require 'quark' # .../reflect org/example/foo
require_relative '../../org_example_foo_md' # 0 () ('org', 'example')


def self.Foo; Foo; end
class Foo < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static org_example_foo_Foo_ref: -> { ::Quark.org_example_foo_md.Root.org_example_foo_Foo_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def test()
        
        nil

        nil
    end

    def _getClass()
        
        return "org.example.foo.Foo"

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
end # module Foo
end # module Example
end # module Org
end # module Quark
