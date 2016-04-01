module Quark
require "quark"
def self.parameterized_defaults; ParameterizedDefaults; end
module ParameterizedDefaults
require_relative 'pkg' # 0 () ()
require_relative 'parameterized_defaults' # 0 () ()

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    box = ::Quark.pkg.StringBox.new("asdf")
    ::DatawireQuarkCore.print((box).contents)
    foo = ::Quark.pkg.StringFoo.new()
    ::DatawireQuarkCore.print(foo.foo())


    nil
end

if __FILE__ == $0 then ::Quark.parameterized_defaults.call_main() end

end # module ParameterizedDefaults
end # module Quark
