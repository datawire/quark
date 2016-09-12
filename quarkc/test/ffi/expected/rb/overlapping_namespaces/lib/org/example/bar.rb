module Quark
require "quark"
def self.org; Org; end
module Org
def self.example; Example; end
module Example
def self.bar; Bar; end
module Bar
require 'quark' # .../reflect org/example/bar


def self.Bar; Bar; end
class Bar < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static org_example_bar_Bar_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def test()
        
        nil

        nil
    end

    def _getClass()
        
        return "org.example.bar.Bar"

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
Bar.unlazy_statics


require_relative '../../overlapping_namespace_md' # 0 () ('org', 'example')

end # module Bar
end # module Example
end # module Org
end # module Quark
