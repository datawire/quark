module Quark
require "quark"
def self.booleans; MODULE_booleans; end
module MODULE_booleans
require_relative 'booleans' # 0 () ()

def self.main()
    
    if (true)
        ::DatawireQuarkCore.print("Hi!")
    end
    b = (1) > (0)
    if (b)
        ::DatawireQuarkCore.print("Hey!")
    end
    c = false
    if (!(c))
        ::DatawireQuarkCore.print("Ho!")
    end
    count = 0
    while (true) do
        if ((count) > (3))
            break
        end
        count = (count) + (1)
    end
    troo = (true) && (true)
    ::DatawireQuarkCore.print((troo).to_s)
    fols = (false) || (false)
    ::DatawireQuarkCore.print((fols).to_s)
    foo = "foo"
    bar = "bar"
    if (((foo) == ("foo")) && ((bar) == ("bar")))
        ::DatawireQuarkCore.print("foobar!!")
    end


    nil
end

if __FILE__ == $0
    ::Quark.booleans.main()
end

end # module MODULE_booleans
end # module Quark
