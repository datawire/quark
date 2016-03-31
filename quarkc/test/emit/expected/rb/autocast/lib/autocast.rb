module Quark
require "quark"
def self.autocast; Autocast; end
module Autocast
require_relative 'autocast' # 0 () ()

def self.foo(s)
    
    ::DatawireQuarkCore.print(s)


    nil
end

def self.main()
    
    o = "Hello World!"
    s = o
    s2 = nil
    s2 = o
    ::Quark.autocast.foo(o)


    nil
end

if __FILE__ == $0
    ::Quark.autocast.main()
end

end # module Autocast
end # module Quark
