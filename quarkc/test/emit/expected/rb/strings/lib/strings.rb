module Quark
require "quark"
def self.strings; Strings; end
module Strings
require_relative 'strings' # 0 () ()


def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::DatawireQuarkCore.print("\"")
    ::DatawireQuarkCore.print("\"\"")
    ::DatawireQuarkCore.print("\u0000")
    ::DatawireQuarkCore.print("\u00FF")
    ::DatawireQuarkCore.print("\u00ff")
    ::DatawireQuarkCore.print("\u00FF")
    ::DatawireQuarkCore.print("\u00ff")
    ::DatawireQuarkCore.print("\n")


    nil
end

if __FILE__ == $0 then ::Quark.strings.call_main() end

end # module Strings
end # module Quark
