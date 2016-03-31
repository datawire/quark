module Quark
require "quark"
def self.strings; Strings; end
module Strings
require_relative 'strings' # 0 () ()

def self.main()
    
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

if __FILE__ == $0
    ::Quark.strings.main()
end

end # module Strings
end # module Quark
