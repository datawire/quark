module Quark
require "builtin"
def self.p1; MODULE_p1; end
module MODULE_p1
require_relative 'p1/p2' # 0 ('p1',) ()

def self.c()
    
    ::DatawireQuarkCore.print("c")


    nil
end

def self.d()
    
    ::DatawireQuarkCore.print("d")


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
