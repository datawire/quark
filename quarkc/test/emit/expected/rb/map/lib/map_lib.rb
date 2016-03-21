module Quark
require "datawire-quark-core"
def self.map_lib; MODULE_map_lib; end
module MODULE_map_lib
def self.test1()
    
    map = Hash.new()
    (map)["pi"] = (3)
    DatawireQuarkCore.print((map)["pi"])
    DatawireQuarkCore.print((map)["not_there"])
    DatawireQuarkCore.print("^--- should be null")


    nil
end

def self.test_update()
    
    first = Hash.new()
    second = Hash.new()
    (first)["a"] = ("first_a")
    (first)["b"] = ("first_b")
    (second)["b"] = ("second_b")
    (second)["c"] = ("second_c")
    (first).merge!(second)
    DatawireQuarkCore.print((first)["a"])
    DatawireQuarkCore.print((first)["b"])
    DatawireQuarkCore.print((first)["c"])


    nil
end

def self.test_literal()
    
    map = {}
    map = {"pi" => 3.14159, "e" => 2.718}
    DatawireQuarkCore.print((map)["pi"])
    DatawireQuarkCore.print((map)["e"])


    nil
end

def self.iterables()
    
    numbers = {"zero" => 0, "one" => 1, "two" => 2, "e" => 2, "three" => 3, "pi" => 3, "fun" => 69, "dockingbay" => 94}
    keys = (numbers).keys
    (keys).sort!
    DatawireQuarkCore.print(keys)


    nil
end

def self.main()
    
    ::Quark.map_lib.test1()
    ::Quark.map_lib.test_update()
    ::Quark.map_lib.test_literal()
    ::Quark.map_lib.iterables()


    nil
end
end # module MODULE_map_lib
end # module Quark
