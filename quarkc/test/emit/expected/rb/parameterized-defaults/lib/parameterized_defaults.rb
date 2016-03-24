module Quark
require "quark"
def self.parameterized_defaults; MODULE_parameterized_defaults; end
module MODULE_parameterized_defaults
require_relative 'pkg' # 0 () ()
require_relative 'parameterized_defaults' # 0 () ()

def self.main()
    
    box = ::Quark.pkg.StringBox.new("asdf")
    ::DatawireQuarkCore.print((box).contents)
    foo = ::Quark.pkg.StringFoo.new()
    ::DatawireQuarkCore.print(foo.foo())


    nil
end

if __FILE__ == $0
    ::Quark.parameterized_defaults.main()
end

end # module MODULE_parameterized_defaults
end # module Quark
