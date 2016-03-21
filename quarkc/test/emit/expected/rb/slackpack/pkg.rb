module Quark
require "datawire-quark-core"
def self.pkg; MODULE_pkg; end
module MODULE_pkg
# require_relatve "builtin/reflect.rb"
require_relative "slack.rb"
require_relative "slack/event.rb"
# require_relatve "slackpack_md.rb"

class CLASS_Handler < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def onSlackEvent(event)
        
        DatawireQuarkCore.print((event).type)
        if (((event).user) != (nil))
            DatawireQuarkCore.print(((event).user).user)
        end
        if (((event).channel) != (nil))
            DatawireQuarkCore.print(((event).channel).channel)
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


end; def self.Handler; CLASS_Handler; end
end # module MODULE_pkg
end # module Quark
