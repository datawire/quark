module Quark
def self.quark; Quark; end
module Quark
def self.spi; Spi; end
module Spi
require_relative 'reflect' # 1 () ()
require_relative '../quark' # 0 () ('quark',)
require_relative '../quark_md' # 0 () ('quark',)
require_relative 'spi_api_tracing' # 1 () ()
require_relative 'spi_api' # 1 () ()


def self.RuntimeSpi; RuntimeSpi; end
class RuntimeSpi < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_spi_RuntimeSpi_ref: -> { ::Quark.quark_md.Root.quark_spi_RuntimeSpi_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def __init_fields__()
        

        nil
    end


end
RuntimeSpi.unlazy_statics

def self.RuntimeFactory; RuntimeFactory; end
class RuntimeFactory < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static factory: -> { ::Quark.quark.spi.RuntimeFactory.new() }
    static enable_tracing: -> { true }
    static quark_spi_RuntimeFactory_ref: -> { ::Quark.quark_md.Root.quark_spi_RuntimeFactory_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def makeRuntime()
        
        spi = ::DatawireQuarkCore::Runtime.new
        api = nil
        if (::Quark.quark.spi.RuntimeFactory.enable_tracing)
            api = ::Quark.quark.spi_api_tracing.RuntimeProxy.new(spi)
        else
            api = ::Quark.quark.spi_api.RuntimeProxy.new(spi)
        end
        return api

        nil
    end

    def _getClass()
        
        return "quark.spi.RuntimeFactory"

        nil
    end

    def _getField(name)
        
        if ((name) == ("factory"))
            return ::Quark.quark.spi.RuntimeFactory.factory
        end
        if ((name) == ("enable_tracing"))
            return ::Quark.quark.spi.RuntimeFactory.enable_tracing
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("factory"))
            ::Quark.quark.spi.RuntimeFactory.factory = value
        end
        if ((name) == ("enable_tracing"))
            ::Quark.quark.spi.RuntimeFactory.enable_tracing = value
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end
RuntimeFactory.unlazy_statics
end # module Spi
end # module Quark
end # module Quark
