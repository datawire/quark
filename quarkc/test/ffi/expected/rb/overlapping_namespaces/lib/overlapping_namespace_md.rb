module Quark
def self.overlapping_namespace_md; OverlappingNamespaceMd; end
module OverlappingNamespaceMd
require 'quark' # .../reflect
# for ('overlapping_namespace_md',): require_relative 'org/example/bar' # 0 ('org', 'example') ()


def self.org_example_bar_Bar_test_Method; OrgExampleBarBarTestMethod; end
class OrgExampleBarBarTestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.org.example.bar.Bar }
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

def self.org_example_bar_Bar; OrgExampleBarBar; end
class OrgExampleBarBar < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.overlapping_namespace_md.org_example_bar_Bar.new() }



    def initialize()
        
        super("org.example.bar.Bar")
        (self).name = "org.example.bar.Bar"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.overlapping_namespace_md.org_example_bar_Bar_test_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.org.example.bar.Bar.new()

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
OrgExampleBarBar.unlazy_statics


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static org_example_bar_Bar_md: -> { ::Quark.overlapping_namespace_md.org_example_bar_Bar.singleton }



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
end # module OverlappingNamespaceMd
end # module Quark
