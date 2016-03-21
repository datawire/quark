module Quark
require "datawire-quark-core"
def self.static_lib; MODULE_static_lib; end
module MODULE_static_lib
class CLASS_Foo < Object
    attr_accessor 

    
    def initialize()
        
        self.__init_fields__
        static_lib::Foo.count = (static_lib::Foo.count) + (1)

        nil
    end



    
    def self.setCount(n)
        
        static_lib::Foo.count = n

        nil
    end

    def self.getCount()
        
        return static_lib::Foo.count

        nil
    end

    def test1()
        
        static_lib::Foo.count = (static_lib::Foo.count) + (1)

        nil
    end

    def test2()
        
        static_lib::Foo.count = (static_lib::Foo.count) + (1)

        nil
    end

    def test3()
        
        static_lib::Foo.count = (static_lib::Foo.count) + (1)

        nil
    end

    def test4()
        
        static_lib::Foo.setCount((static_lib::Foo.getCount()) + (1))

        nil
    end

    def _getClass()
        
        return "Foo"

        nil
    end

    def _getField(name)
        
        if ((name) == ("count"))
            return static_lib::Foo.count
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("count"))
            static_lib::Foo.count = value
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.Foo; CLASS_Foo; end

def self.main()
    
    DatawireQuarkCore.print(static_lib::Foo.count)
    f = ::Quark.static_lib.Foo.new()
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print(static_lib::Foo.count)
    f = ::Quark.static_lib.Foo.new()
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print("==")
    f.test1()
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print("==")
    f.test2()
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print("==")
    f.test3()
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print("==")
    f.test4()
    DatawireQuarkCore.print(static_lib::Foo.getCount())
    DatawireQuarkCore.print(static_lib::Foo.getCount())
    DatawireQuarkCore.print("==")
    static_lib::Foo.setCount(0)
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print(static_lib::Foo.getCount())
    DatawireQuarkCore.print(static_lib::Foo.getCount())
    DatawireQuarkCore.print("==")
    static_lib::Foo.setCount(-(1))
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print(static_lib::Foo.count)
    DatawireQuarkCore.print(static_lib::Foo.getCount())
    DatawireQuarkCore.print(static_lib::Foo.getCount())


    nil
end
end # module MODULE_static_lib
end # module Quark
