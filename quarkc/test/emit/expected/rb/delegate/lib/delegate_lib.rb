module Quark
require "builtin"
def self.delegate_lib; MODULE_delegate_lib; end
module MODULE_delegate_lib
def self.main()
    
    ::DatawireQuarkCore.print("This shadows ruby builtin module 'delegate'")


    nil
end
end # module MODULE_delegate_lib
end # module Quark
