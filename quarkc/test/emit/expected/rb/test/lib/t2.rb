module Quark
require "quark"
def self.t2; MODULE_t2; end
module MODULE_t2
require_relative 'testlib' # 0 () ()

def self.atest()
    
    # import testlib;

    f = ::Quark.testlib.foo()
    ::DatawireQuarkCore.print(f)


    nil
end
end # module MODULE_t2
end # module Quark
