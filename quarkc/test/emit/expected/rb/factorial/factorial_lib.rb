require "datawire-quark-core"
class Functions < Object
    

    

    
    def self.factorial(n)
        
        if ((n) == (0))
            return 1
        else
            return (n) * (Functions.factorial((n) - (1)))
        end

        nil
    end


end

class Functions < Object
    

    

    
    def self.main()
        
        DatawireQuarkCore.print(Functions.factorial(1))
        DatawireQuarkCore.print(Functions.factorial(2))
        DatawireQuarkCore.print(Functions.factorial(3))
        DatawireQuarkCore.print(Functions.factorial(4))
        DatawireQuarkCore.print(Functions.factorial(5))
        DatawireQuarkCore.print(Functions.factorial(6))
        DatawireQuarkCore.print(Functions.factorial(7))
        DatawireQuarkCore.print(Functions.factorial(8))
        DatawireQuarkCore.print(Functions.factorial(9))
        DatawireQuarkCore.print(Functions.factorial(10))

        nil
    end


end
