module Quark
require "datawire-quark-core"
def self.autocast_lib; MODULE_autocast_lib; end
module MODULE_autocast_lib
def self.foo(s)
    
    DatawireQuarkCore.print(s)


    nil
end

def self.main()
    
    o = "Hello World!"
    s = o
    s2 = nil
    s2 = o
    ::Quark.autocast_lib.foo(o)


    nil
end
end # module MODULE_autocast_lib
end # module Quark
