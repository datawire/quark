require "datawire-quark-core"
require "../builtin"

class Functions < Object
    

    

    
    def self.main()
        
        l = builtin::concurrent::Context.runtime().logger("logme")
        l.error("logme error")
        sweet = builtin::concurrent::Context.runtime().logger("logthat")
        sweet.error("nice")

        nil
    end


end
