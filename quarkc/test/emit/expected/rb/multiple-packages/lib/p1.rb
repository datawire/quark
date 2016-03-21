module Quark
require "datawire-quark-core"
def self.p1; MODULE_p1; end
module MODULE_p1
require 'p1/p2'

def self.c()
    
    DatawireQuarkCore.print("c")


    nil
end

def self.d()
    
    DatawireQuarkCore.print("d")


    nil
end

def self.main()
    
    ::Quark.p1.p2.a()
    ::Quark.p1.p2.b()
    ::Quark.p1.c()
    ::Quark.p1.d()


    nil
end
end # module MODULE_p1
end # module Quark
