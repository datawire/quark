module Quark
require "quark"
def self.stuff; Stuff; end
module Stuff
require 'quark' # .../reflect
require_relative 'stuff_md' # 0 () ()
require_relative 'stuff' # 0 () ()


def self.Test; Test; end
class Test < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static stuff_Test_ref: -> { ::Quark.stuff_md.Root.stuff_Test_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo(t)
        
        return ::Quark.stuff.Test.new()

        nil
    end

    def test()
        
        x = 2
        y = 2
        z = (x) + (y)
        ::DatawireQuarkCore.print(z)
        hello = "hello"
        ::DatawireQuarkCore.print(hello)
        t1 = ::Quark.stuff.Test.new()
        t2 = t1.foo(t1)
        if ((t2) != (t1))
            ::DatawireQuarkCore.print("YAY!")
        end
        four = (2) + (2)
        ::DatawireQuarkCore.print(four)

        nil
    end

    def _getClass()
        
        return "stuff.Test"

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Test.unlazy_statics

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::Quark.stuff.Test.new().test()


    nil
end

if __FILE__ == $0 then ::Quark.stuff.call_main() end

end # module Stuff
end # module Quark
