module Quark
require "quark"
def self.map; MODULE_map; end
module MODULE_map
require_relative 'map' # 0 () ()

def self.test1()
    
    map = ::Hash.new()
    (map)["pi"] = (3)
    ::DatawireQuarkCore.print((map)["pi"])
    ::DatawireQuarkCore.print((map)["not_there"])
    ::DatawireQuarkCore.print("^--- should be null")


    nil
end

def self.test_update()
    
    first = ::Hash.new()
    second = ::Hash.new()
    (first)["a"] = ("first_a")
    (first)["b"] = ("first_b")
    (second)["b"] = ("second_b")
    (second)["c"] = ("second_c")
    (first).merge!(second)
    ::DatawireQuarkCore.print((first)["a"])
    ::DatawireQuarkCore.print((first)["b"])
    ::DatawireQuarkCore.print((first)["c"])


    nil
end

def self.test_literal()
    
    map = {}
    map = {"pi" => 3.14159, "e" => 2.718}
    ::DatawireQuarkCore.print((map)["pi"])
    ::DatawireQuarkCore.print((map)["e"])


    nil
end

def self.iterables()
    
    numbers = {"zero" => 0, "one" => 1, "two" => 2, "e" => 2, "three" => 3, "pi" => 3, "fun" => 69, "dockingbay" => 94}
    keys = (numbers).keys
    (keys).sort!
    ::DatawireQuarkCore.print(keys)


    nil
end

def self.main()
    
    ::Quark.map.test1()
    ::Quark.map.test_update()
    ::Quark.map.test_literal()
    ::Quark.map.iterables()


    nil
end

if __FILE__ == $0
    ::Quark.map.main()
end

end # module MODULE_map
end # module Quark
