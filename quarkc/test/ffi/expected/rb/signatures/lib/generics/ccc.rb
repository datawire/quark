module Quark
require "quark"
def self.generics; Generics; end
module Generics
def self.ccc; Ccc; end
module Ccc
require 'quark' # .../reflect generics/ccc


def self.TLSContextInitializer; TLSContextInitializer; end
class TLSContextInitializer < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static generics_ccc_TLSContextInitializer_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def getValue()
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.generics.ccc.Context }

        nil
    end

    def _getClass()
        
        return "generics.ccc.TLSContextInitializer"

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
TLSContextInitializer.unlazy_statics

def self.Context; Context; end
class Context < ::DatawireQuarkCore::QuarkObject
    attr_accessor :parent
    extend ::DatawireQuarkCore::Static

    static _global: -> { nil }
    static _current: -> { nil }
    static generics_ccc_Context_ref: -> { nil }
    static generics_ccc_TLS_generics_ccc_Context__ref: -> { nil }



    def initialize(parent)
        
        self.__init_fields__

        nil
    end




    def self.current()
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.generics.ccc.Context }

        nil
    end

    def self.global()
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.generics.ccc.Context }

        nil
    end

    def _getClass()
        
        return "generics.ccc.Context"

        nil
    end

    def _getField(name)
        
        if ((name) == ("_global"))
            return ::Quark.generics.ccc.Context._global
        end
        if ((name) == ("_current"))
            return ::Quark.generics.ccc.Context._current
        end
        if ((name) == ("parent"))
            return (self).parent
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("_global"))
            ::Quark.generics.ccc.Context._global = ::DatawireQuarkCore.cast(value) { ::Quark.generics.ccc.Context }
        end
        if ((name) == ("_current"))
            ::Quark.generics.ccc.Context._current = ::DatawireQuarkCore.cast(value) { ::Quark.generics.ccc.TLS }
        end
        if ((name) == ("parent"))
            (self).parent = ::DatawireQuarkCore.cast(value) { ::Quark.generics.ccc.Context }
        end

        nil
    end

    def __init_fields__()
        
        self.parent = nil

        nil
    end


end
Context.unlazy_statics

def self.TLSInitializer; TLSInitializer; end
class TLSInitializer < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static generics_ccc_TLSInitializer_quark_Object__ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def getValue()
        raise NotImplementedError, '`TLSInitializer.getValue` is an abstract method'

        nil
    end

    def __init_fields__()
        

        nil
    end


end
TLSInitializer.unlazy_statics

def self.TLS; TLS; end
class TLS < ::DatawireQuarkCore::QuarkObject
    attr_accessor :_value



    def initialize(initializer)
        
        self.__init_fields__

        nil
    end




    def getValue()
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.T }

        nil
    end

    def _getClass()
        
        return "generics.ccc.TLS<quark.Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("_value"))
            return (self)._value
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("_value"))
            (self)._value = ::DatawireQuarkCore.cast(value) { ::Quark.T }
        end

        nil
    end

    def __init_fields__()
        
        self._value = nil

        nil
    end


end


require_relative '../quark_ffi_signatures_md' # 0 () ('generics',)

end # module Ccc
end # module Generics
end # module Quark
