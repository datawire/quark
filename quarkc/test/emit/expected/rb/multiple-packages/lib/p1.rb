module Quark
require "quark"
def self.p1; MODULE_p1; end
module MODULE_p1
def self.c()
    
    ::DatawireQuarkCore.print("c")


    nil
end

def self.d()
    
    ::DatawireQuarkCore.print("d")


    nil
end
end # module MODULE_p1
end # module Quark
