module Quark
require "quark"
def self.p1; P1; end
module P1
def self.p2; P2; end
module P2
def self.a()
    
    ::DatawireQuarkCore.print("a")


    nil
end

def self.b()
    
    ::DatawireQuarkCore.print("b")


    nil
end
end # module P2
end # module P1
end # module Quark
