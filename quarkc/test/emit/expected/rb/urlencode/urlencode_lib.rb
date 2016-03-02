require "datawire-quark-core"
class Functions < Object
    

    

    
    def self.main()
        
        map = Hash.new()
        (map)["pi"] = (3.14159)
        DatawireQuarkCore.print(DatawireQuarkCore.urlencode(map))

        nil
    end


end
