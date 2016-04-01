module Quark
require "quark"
def self.static; Static; end
module Static
require 'quark' # .../reflect
require_relative 'static_md' # 0 () ()
require_relative 'static' # 0 () ()

def self.Foo; Foo; end
class Foo < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static count: -> { 0 }
    static static_Foo_ref: -> { ::Quark.static_md.Root.static_Foo_md }



    def initialize()
        
        self.__init_fields__
        ::Quark.static.Foo.count = (::Quark.static.Foo.count) + (1)

        nil
    end




    def self.setCount(n)
        
        ::Quark.static.Foo.count = n

        nil
    end

    def self.getCount()
        
        return ::Quark.static.Foo.count

        nil
    end

    def test1()
        
        ::Quark.static.Foo.count = (::Quark.static.Foo.count) + (1)

        nil
    end

    def test2()
        
        ::Quark.static.Foo.count = (::Quark.static.Foo.count) + (1)

        nil
    end

    def test3()
        
        ::Quark.static.Foo.count = (::Quark.static.Foo.count) + (1)

        nil
    end

    def test4()
        
        ::Quark.static.Foo.setCount((::Quark.static.Foo.getCount()) + (1))

        nil
    end

    def _getClass()
        
        return "static.Foo"

        nil
    end

    def _getField(name)
        
        if ((name) == ("count"))
            return ::Quark.static.Foo.count
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("count"))
            ::Quark.static.Foo.count = value
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Foo.unlazy_statics

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    f = ::Quark.static.Foo.new()
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    f = ::Quark.static.Foo.new()
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print("==")
    f.test1()
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print("==")
    f.test2()
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print("==")
    f.test3()
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print("==")
    f.test4()
    ::DatawireQuarkCore.print(::Quark.static.Foo.getCount())
    ::DatawireQuarkCore.print(::Quark.static.Foo.getCount())
    ::DatawireQuarkCore.print("==")
    ::Quark.static.Foo.setCount(0)
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static.Foo.getCount())
    ::DatawireQuarkCore.print(::Quark.static.Foo.getCount())
    ::DatawireQuarkCore.print("==")
    ::Quark.static.Foo.setCount(-(1))
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static.Foo.count)
    ::DatawireQuarkCore.print(::Quark.static.Foo.getCount())
    ::DatawireQuarkCore.print(::Quark.static.Foo.getCount())


    nil
end

if __FILE__ == $0 then ::Quark.static.call_main() end

end # module Static
end # module Quark
