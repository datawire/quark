module Quark
def self.strings_lib; MODULE_strings_lib; end
module MODULE_strings_lib
def self.main()
    
    DatawireQuarkCore.print("\"")
    DatawireQuarkCore.print("\"\"")
    DatawireQuarkCore.print("\u0000")
    DatawireQuarkCore.print("\u00FF")
    DatawireQuarkCore.print("\u00ff")
    DatawireQuarkCore.print("\u00FF")
    DatawireQuarkCore.print("\u00ff")
    DatawireQuarkCore.print("\n")


    nil
end
end # module MODULE_strings_lib
end # module Quark
