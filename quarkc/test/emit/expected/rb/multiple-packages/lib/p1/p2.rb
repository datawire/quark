module Quark
require "builtin"
def self.p1; MODULE_p1; end
module MODULE_p1
def self.p2; MODULE_p2; end
module MODULE_p2
def self.a()
    
    DatawireQuarkCore.print("a")


    nil
end

def self.b()
    
    DatawireQuarkCore.print("b")


    nil
end
end # module MODULE_p2
end # module MODULE_p1
end # module Quark
