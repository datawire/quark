module Quark
require "quark"
def self.pkg; Pkg; end
module Pkg
require 'quark' # .../reflect
require_relative 'slack' # 0 () ()
require_relative 'slack/event' # 0 ('slack',) ()
require_relative 'slackpack_md' # 0 () ()

def self.Handler; Handler; end
class Handler < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static pkg_Handler_ref: -> { ::Quark.slackpack_md.Root.pkg_Handler_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def onSlackEvent(event)
        
        ::DatawireQuarkCore.print((event).type)
        if (((event).user) != (nil))
            ::DatawireQuarkCore.print(((event).user).user)
        end
        if (((event).channel) != (nil))
            ::DatawireQuarkCore.print(((event).channel).channel)
        end

        nil
    end

    def _getClass()
        
        return "pkg.Handler"

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

    def onHello(hello)
        
        self.onSlackEvent(hello)

        nil
    end

    def onSlackError(error)
        
        self.onSlackEvent(error)

        nil
    end

    def onMessage(message)
        
        self.onSlackEvent(message)

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Handler.unlazy_statics
end # module Pkg
end # module Quark
