module Quark
require "quark"
def self.puse; Puse; end
module Puse
require 'testlib' 
require 't2' 
require_relative 'foo' # 0 () ()
require_relative 'puse' # 0 () ()

def self.main()
    
    ::DatawireQuarkCore.print(::Quark.testlib.atest())
    ::DatawireQuarkCore.print(::Quark.testlib.foo())
    ::DatawireQuarkCore.print(::Quark.testlib.foo())
    ::Quark.t2.atest()
    ::DatawireQuarkCore.print(::Quark.foo.qux())


    nil
end

if __FILE__ == $0
    ::Quark.puse.main()
end

end # module Puse
end # module Quark
