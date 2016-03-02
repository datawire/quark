require "datawire-quark-core"
class Box < Object
    attr_accessor :contents

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def set(contents)
        
        (self).contents = contents

        nil
    end

    def get()
        
        return (self).contents

        nil
    end

    def _getClass()
        
        return "Box<builtin.Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("contents"))
            return (self).contents
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("contents"))
            (self).contents = value
        end

        nil
    end

    def __init_fields__()
        

        self.contents = nil

        nil
    end


end

class Crate < Object
    attr_accessor :box, :ibox

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def set(stuff)
        
        (self).box.set(stuff)

        nil
    end

    def get()
        
        return (self).box.get()

        nil
    end

    def _getClass()
        
        return "Crate<builtin.Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("box"))
            return (self).box
        end
        if ((name) == ("ibox"))
            return (self).ibox
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("box"))
            (self).box = value
        end
        if ((name) == ("ibox"))
            (self).ibox = value
        end

        nil
    end

    def __init_fields__()
        

        self.box = Box.new()
        self.ibox = Box.new()

        nil
    end


end

class Sack < Object
    attr_accessor :ints

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def _getClass()
        
        return "Sack"

        nil
    end

    def _getField(name)
        
        if ((name) == ("ints"))
            return (self).ints
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("ints"))
            (self).ints = value
        end

        nil
    end

    def __init_fields__()
        

        self.ints = Box.new()

        nil
    end


end

class Functions < Object
    

    

    
    def self.test1()
        
        ibox = Box.new()
        ibox.set(3)
        three = ibox.get()
        DatawireQuarkCore.print(three)
        (ibox).contents = 4
        DatawireQuarkCore.print((ibox).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.test2()
        
        sbox = Box.new()
        sbox.set("hello")
        hello = sbox.get()
        DatawireQuarkCore.print(hello)
        (sbox).contents = "world"
        DatawireQuarkCore.print((sbox).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.test3()
        
        icrate = Crate.new()
        icrate.set(3)
        DatawireQuarkCore.print(icrate.get())
        icrate.set(4)
        DatawireQuarkCore.print(((icrate).box).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.test4()
        
        s = Sack.new()
        DatawireQuarkCore.print((s).ints.get())
        DatawireQuarkCore.print(((s).ints).contents)
        (s).ints.set(3)
        DatawireQuarkCore.print((s).ints.get())
        DatawireQuarkCore.print(((s).ints).contents)
        ((s).ints).contents = 4
        DatawireQuarkCore.print((s).ints.get())
        DatawireQuarkCore.print(((s).ints).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.test5()
        
        scrate = Crate.new()
        DatawireQuarkCore.print(scrate.get())
        DatawireQuarkCore.print(((scrate).box).contents)
        scrate.set("hello")
        DatawireQuarkCore.print(scrate.get())
        DatawireQuarkCore.print(((scrate).box).contents)
        ((scrate).ibox).contents = 3
        DatawireQuarkCore.print(((scrate).ibox).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.test6()
        
        box = Box.new()
        box.set(Box.new())
        box.get().set(3)
        DatawireQuarkCore.print(box.get().get())
        DatawireQuarkCore.print(((box).contents).contents)

        nil
    end


end

class Functions < Object
    

    

    
    def self.main()
        
        DatawireQuarkCore.print("test1:\n--")
        Functions.test1()
        DatawireQuarkCore.print("")
        DatawireQuarkCore.print("test2:\n--")
        Functions.test2()
        DatawireQuarkCore.print("")
        DatawireQuarkCore.print("test3:\n--")
        Functions.test3()
        DatawireQuarkCore.print("")
        DatawireQuarkCore.print("test4:\n--")
        Functions.test4()
        DatawireQuarkCore.print("")
        DatawireQuarkCore.print("test5:\n--")
        Functions.test5()
        DatawireQuarkCore.print("")
        DatawireQuarkCore.print("test6:\n--")
        Functions.test6()

        nil
    end


end
