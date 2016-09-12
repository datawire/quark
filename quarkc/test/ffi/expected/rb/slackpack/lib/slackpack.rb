module Quark
require "quark"
def self.slackpack; Slackpack; end
module Slackpack
require 'quark' # .../reflect
require_relative 'slack' # 0 () ()
require_relative 'slack/event' # 0 ('slack',) ()


def self.Handler; Handler; end
class Handler < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static slackpack_Handler_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def onSlackEvent(event)
        
        nil

        nil
    end

    def _getClass()
        
        return "slackpack.Handler"

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
        
        nil

        nil
    end

    def onSlackError(error)
        
        nil

        nil
    end

    def onMessage(message)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Handler.unlazy_statics


require_relative 'slackpack_md' # 0 () ()

end # module Slackpack
end # module Quark
