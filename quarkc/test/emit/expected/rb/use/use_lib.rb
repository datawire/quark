require "datawire-quark-core"
require "../testlib"
require "../t2"

class Functions < Object
    

    

    
    def self.main()
        
        DatawireQuarkCore.print(Functions.testlib__test())
        DatawireQuarkCore.print(Functions.testlib__foo())
        DatawireQuarkCore.print(Functions.testlib__foo())
        Functions.t2__test()
        DatawireQuarkCore.print(Functions.qux())

        nil
    end


end

class Functions < Object
    

    

    
    def self.qux()
        
        return "moo"

        nil
    end


end
