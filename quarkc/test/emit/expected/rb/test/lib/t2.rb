module Quark
require "quark"
def self.t2; T2; end
module T2
require_relative 'testlib' # 0 () ()

def self.atest()
    
    # import testlib;

    f = ::Quark.testlib.foo()
    ::DatawireQuarkCore.print(f)


    nil
end
end # module T2
end # module Quark
