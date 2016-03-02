require "datawire-quark-core"
class Functions < Object
    

    

    
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


end
