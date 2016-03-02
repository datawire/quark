require "datawire-quark-core"
class Functions < Object
    

    

    
    def self.test1()
        
        list = DatawireQuarkCore::List.new()
        (list) << (1)
        (list) << (2)
        (list) << (3)
        DatawireQuarkCore.print((list)[0])
        DatawireQuarkCore.print((list)[1])
        DatawireQuarkCore.print((list)[2])

        nil
    end


end

class Functions < Object
    

    

    
    def self.test2()
        
        list = DatawireQuarkCore::List.new()
        (list) << ("one")
        (list) << ("two")
        (list) << ("three")
        DatawireQuarkCore.print((list)[0])
        DatawireQuarkCore.print((list)[1])
        DatawireQuarkCore.print((list)[2])

        nil
    end


end

class Functions < Object
    

    

    
    def self.test3()
        
        list = DatawireQuarkCore::List.new([])
        DatawireQuarkCore.print(list)
        list = DatawireQuarkCore::List.new([1])
        DatawireQuarkCore.print(list)
        list = DatawireQuarkCore::List.new([1, 2, 3])
        DatawireQuarkCore.print(list)

        nil
    end


end

class Functions < Object
    

    

    
    def self.test4()
        
        list = DatawireQuarkCore::List.new([])
        DatawireQuarkCore.print(list)
        list = DatawireQuarkCore::List.new(["one"])
        DatawireQuarkCore.print(list)
        list = DatawireQuarkCore::List.new(["one", "two", "three"])
        DatawireQuarkCore.print(list)

        nil
    end


end

class Box < Object
    attr_accessor :contents

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def get()
        
        return @contents

        nil
    end

    def set(contents)
        
        (self).contents = contents

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

class Functions < Object
    

    

    
    def self.test5()
        
        boxes = DatawireQuarkCore::List.new([])
        (boxes) << (Box.new())
        (boxes)[0].set(3)
        DatawireQuarkCore.print((boxes)[0].get())
        boxes = DatawireQuarkCore::List.new([Box.new()])
        DatawireQuarkCore.print((boxes)[0].get())

        nil
    end


end

class Functions < Object
    

    

    
    def self.test6()
        
        matrix = DatawireQuarkCore::List.new([DatawireQuarkCore::List.new([1, 2, 3]), DatawireQuarkCore::List.new([4, 5, 6]), DatawireQuarkCore::List.new([7, 8, 9])])
        DatawireQuarkCore.print(matrix)

        nil
    end


end

class Functions < Object
    

    

    
    def self.sorter()
        
        stuff = DatawireQuarkCore::List.new(["Richard", "Rafi", "Abhay", "Bozzo", "Phil", "Austin", "Janice", "Flynn", "Vladimir"])
        (stuff).sort
        DatawireQuarkCore.print(stuff)

        nil
    end


end

class Functions < Object
    

    

    
    def self.main()
        
        Functions.test1()
        Functions.test2()
        Functions.test3()
        Functions.test4()
        Functions.test5()
        Functions.test6()
        Functions.sorter()

        nil
    end


end
