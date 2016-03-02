require "datawire-quark-core"
class Foo < Object
    attr_accessor 

    
    def initialize()
        
        self.__init_fields__
        Foo.count = (Foo.count) + (1)

        nil
    end



    
    def self.setCount(n)
        
        Foo.count = n

        nil
    end

    def self.getCount()
        
        return Foo.count

        nil
    end

    def test1()
        
        Foo.count = (Foo.count) + (1)

        nil
    end

    def test2()
        
        Foo.count = (Foo.count) + (1)

        nil
    end

    def test3()
        
        Foo.count = (Foo.count) + (1)

        nil
    end

    def test4()
        
        Foo.setCount((Foo.getCount()) + (1))

        nil
    end

    def _getClass()
        
        return "Foo"

        nil
    end

    def _getField(name)
        
        if ((name) == ("count"))
            return Foo.count
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("count"))
            Foo.count = value
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class Functions < Object
    

    

    
    def self.main()
        
        DatawireQuarkCore.print(Foo.count)
        f = Foo.new()
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print(Foo.count)
        f = Foo.new()
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print("==")
        f.test1()
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print("==")
        f.test2()
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print("==")
        f.test3()
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print("==")
        f.test4()
        DatawireQuarkCore.print(Foo.getCount())
        DatawireQuarkCore.print(Foo.getCount())
        DatawireQuarkCore.print("==")
        Foo.setCount(0)
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print(Foo.getCount())
        DatawireQuarkCore.print(Foo.getCount())
        DatawireQuarkCore.print("==")
        Foo.setCount(-(1))
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print(Foo.count)
        DatawireQuarkCore.print(Foo.getCount())
        DatawireQuarkCore.print(Foo.getCount())

        nil
    end


end
