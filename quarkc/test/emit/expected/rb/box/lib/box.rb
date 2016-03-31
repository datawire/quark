module Quark
require "quark"
def self.box; Box; end
module Box
require 'quark' # .../reflect
require_relative 'box_md' # 0 () ()
require_relative 'box' # 0 () ()

def self.Box; Box; end
class Box < ::DatawireQuarkCore::QuarkObject
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
        
        return "box.Box<quark.Object>"

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

def self.Crate; Crate; end
class Crate < ::DatawireQuarkCore::QuarkObject
    attr_accessor :box, :ibox
    extend ::DatawireQuarkCore::Static

    static box_Box_quark_Object__ref: -> { ::Quark.box_md.Root.box_Box_quark_Object__md }
    static box_Box_quark_int__ref: -> { ::Quark.box_md.Root.box_Box_quark_int__md }



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
        
        return "box.Crate<quark.Object>"

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
        

        self.box = ::Quark.box.Box.new()
        self.ibox = ::Quark.box.Box.new()

        nil
    end


end
Crate.unlazy_statics

def self.Sack; Sack; end
class Sack < ::DatawireQuarkCore::QuarkObject
    attr_accessor :ints
    extend ::DatawireQuarkCore::Static

    static box_Sack_ref: -> { ::Quark.box_md.Root.box_Sack_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "box.Sack"

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
        

        self.ints = ::Quark.box.Box.new()

        nil
    end


end
Sack.unlazy_statics

def self.test1()
    
    ibox = ::Quark.box.Box.new()
    ibox.set(3)
    three = ibox.get()
    ::DatawireQuarkCore.print(three)
    (ibox).contents = 4
    ::DatawireQuarkCore.print((ibox).contents)


    nil
end

def self.test2()
    
    sbox = ::Quark.box.Box.new()
    sbox.set("hello")
    hello = sbox.get()
    ::DatawireQuarkCore.print(hello)
    (sbox).contents = "world"
    ::DatawireQuarkCore.print((sbox).contents)


    nil
end

def self.test3()
    
    icrate = ::Quark.box.Crate.new()
    icrate.set(3)
    ::DatawireQuarkCore.print(icrate.get())
    icrate.set(4)
    ::DatawireQuarkCore.print(((icrate).box).contents)


    nil
end

def self.test4()
    
    s = ::Quark.box.Sack.new()
    ::DatawireQuarkCore.print((s).ints.get())
    ::DatawireQuarkCore.print(((s).ints).contents)
    (s).ints.set(3)
    ::DatawireQuarkCore.print((s).ints.get())
    ::DatawireQuarkCore.print(((s).ints).contents)
    ((s).ints).contents = 4
    ::DatawireQuarkCore.print((s).ints.get())
    ::DatawireQuarkCore.print(((s).ints).contents)


    nil
end

def self.test5()
    
    scrate = ::Quark.box.Crate.new()
    ::DatawireQuarkCore.print(scrate.get())
    ::DatawireQuarkCore.print(((scrate).box).contents)
    scrate.set("hello")
    ::DatawireQuarkCore.print(scrate.get())
    ::DatawireQuarkCore.print(((scrate).box).contents)
    ((scrate).ibox).contents = 3
    ::DatawireQuarkCore.print(((scrate).ibox).contents)


    nil
end

def self.test6()
    
    box = ::Quark.box.Box.new()
    box.set(::Quark.box.Box.new())
    box.get().set(3)
    ::DatawireQuarkCore.print(box.get().get())
    ::DatawireQuarkCore.print(((box).contents).contents)


    nil
end

def self.main()
    
    ::DatawireQuarkCore.print("test1:\n--")
    ::Quark.box.test1()
    ::DatawireQuarkCore.print("")
    ::DatawireQuarkCore.print("test2:\n--")
    ::Quark.box.test2()
    ::DatawireQuarkCore.print("")
    ::DatawireQuarkCore.print("test3:\n--")
    ::Quark.box.test3()
    ::DatawireQuarkCore.print("")
    ::DatawireQuarkCore.print("test4:\n--")
    ::Quark.box.test4()
    ::DatawireQuarkCore.print("")
    ::DatawireQuarkCore.print("test5:\n--")
    ::Quark.box.test5()
    ::DatawireQuarkCore.print("")
    ::DatawireQuarkCore.print("test6:\n--")
    ::Quark.box.test6()


    nil
end

if __FILE__ == $0
    ::Quark.box.main()
end

end # module Box
end # module Quark
