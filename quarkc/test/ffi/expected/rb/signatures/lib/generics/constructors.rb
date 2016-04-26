module Quark
require "quark"
def self.generics; Generics; end
module Generics
def self.constructors; Constructors; end
module Constructors
require 'quark' # .../reflect generics/constructors
require_relative '../quark_ffi_signatures_md' # 0 () ('generics',)


def self.Box; Box; end
class Box < ::DatawireQuarkCore::QuarkObject
    attr_accessor :contents
    extend ::DatawireQuarkCore::Static

    static generics_constructors_Box_quark_Object__ref: -> { ::Quark.quark_ffi_signatures_md.Root.generics_constructors_Box_quark_Object__md }



    def initialize(contents)
        
        self.__init_fields__

        nil
    end




    def get()
        
        return nil

        nil
    end

    def _getClass()
        
        return "generics.constructors.Box<quark.Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("contents"))
            return (self).contents
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("contents"))
            (self).contents = value
        end

        nil
    end

    def __init_fields__()
        
        self.contents = nil

        nil
    end


end
Box.unlazy_statics
end # module Constructors
end # module Generics
end # module Quark
