module Quark
require "datawire-quark-core"
def self.logme_lib; MODULE_logme_lib; end
module MODULE_logme_lib
require 'builtin' # .../concurrent

def self.main()
    
    l = builtin::concurrent::Context.runtime().logger("logme")
    l.error("logme error")
    sweet = builtin::concurrent::Context.runtime().logger("logthat")
    sweet.error("nice")


    nil
end
end # module MODULE_logme_lib
end # module Quark
