module Quark
require "builtin"
def self.static_lib; MODULE_static_lib; end
module MODULE_static_lib
def self.Foo; CLASS_Foo; end
class CLASS_Foo < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static count: -> { 0 }



    def initialize()
        
        self.__init_fields__
        ::Quark.static_lib.Foo.count = (::Quark.static_lib.Foo.count) + (1)

        nil
    end




    def self.setCount(n)
        
        ::Quark.static_lib.Foo.count = n

        nil
    end

    def self.getCount()
        
        return ::Quark.static_lib.Foo.count

        nil
    end

    def test1()
        
        ::Quark.static_lib.Foo.count = (::Quark.static_lib.Foo.count) + (1)

        nil
    end

    def test2()
        
        ::Quark.static_lib.Foo.count = (::Quark.static_lib.Foo.count) + (1)

        nil
    end

    def test3()
        
        ::Quark.static_lib.Foo.count = (::Quark.static_lib.Foo.count) + (1)

        nil
    end

    def test4()
        
        ::Quark.static_lib.Foo.setCount((::Quark.static_lib.Foo.getCount()) + (1))

        nil
    end

    def _getClass()
        
        return "Foo"

        nil
    end

    def _getField(name)
        
        if ((name) == ("count"))
            return ::Quark.static_lib.Foo.count
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("count"))
            ::Quark.static_lib.Foo.count = value
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end
CLASS_Foo.unlazy_statics

def self.main()
    
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    f = ::Quark.static_lib.Foo.new()
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    f = ::Quark.static_lib.Foo.new()
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print("==")
    f.test1()
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print("==")
    f.test2()
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print("==")
    f.test3()
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print("==")
    f.test4()
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.getCount())
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.getCount())
    ::DatawireQuarkCore.print("==")
    ::Quark.static_lib.Foo.setCount(0)
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.getCount())
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.getCount())
    ::DatawireQuarkCore.print("==")
    ::Quark.static_lib.Foo.setCount(-(1))
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.getCount())
    ::DatawireQuarkCore.print(::Quark.static_lib.Foo.getCount())


    nil
end
end # module MODULE_static_lib
end # module Quark
