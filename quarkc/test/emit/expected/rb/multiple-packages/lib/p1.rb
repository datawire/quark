module Quark
require "quark"
def self.p1; P1; end
module P1
require_relative 'p1/p2' # 0 ('p1',) ()


def self.c()
    
    ::DatawireQuarkCore.print("c")


    nil
end


def self.d()
    
    ::DatawireQuarkCore.print("d")


    nil
end
end # module P1
end # module Quark
