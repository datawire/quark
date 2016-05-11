module Quark
require "quark"
def self.docs; Docs; end
module Docs
require 'quark' # .../reflect
require_relative 'quark_ffi_signatures_md' # 0 () ()


def self.Test; Test; end
class Test < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static docs_Test_ref: -> { ::Quark.quark_ffi_signatures_md.Root.docs_Test_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def test(param)
        
        return 3

        nil
    end

    def _getClass()
        
        return "docs.Test"

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
end # module Docs
end # module Quark
