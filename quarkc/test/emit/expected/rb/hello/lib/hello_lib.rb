module Quark
require "datawire-quark-core"
def self.hello_lib; MODULE_hello_lib; end
module MODULE_hello_lib
def self.main()
    
    DatawireQuarkCore.print("Hello World")


    nil
end
end # module MODULE_hello_lib
end # module Quark
