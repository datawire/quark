module Quark
require "quark"
def self.hello; MODULE_hello; end
module MODULE_hello
require_relative 'hello' # 0 () ()

def self.main()
    
    ::DatawireQuarkCore.print("Hello World")


    nil
end

if __FILE__ == $0
    ::Quark.hello.main()
end

end # module MODULE_hello
end # module Quark
