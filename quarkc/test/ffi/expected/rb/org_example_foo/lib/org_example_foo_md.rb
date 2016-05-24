module Quark
def self.org_example_foo_md; OrgExampleFooMd; end
module OrgExampleFooMd
require 'quark' # .../reflect
# for ('org_example_foo_md',): require_relative 'org/example/foo' # 0 ('org', 'example') ()


def self.org_example_foo_Foo_test_Method; OrgExampleFooFooTestMethod; end
class OrgExampleFooFooTestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.org.example.foo.Foo }
        obj.test()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.org_example_foo_Foo; OrgExampleFooFoo; end
class OrgExampleFooFoo < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.org_example_foo_md.org_example_foo_Foo.new() }



    def initialize()
        
        super("org.example.foo.Foo")
        (self).name = "org.example.foo.Foo"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.org_example_foo_md.org_example_foo_Foo_test_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.org.example.foo.Foo.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
OrgExampleFooFoo.unlazy_statics


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static org_example_foo_Foo_md: -> { ::Quark.org_example_foo_md.org_example_foo_Foo.singleton }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
Root.unlazy_statics
end # module OrgExampleFooMd
end # module Quark
