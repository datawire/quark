module Quark
require "quark"
def self.default_constructors; MODULE_default_constructors; end
module MODULE_default_constructors
require 'quark' # .../reflect
require_relative 'default_constructors_md' # 0 () ()
require_relative 'default_constructors' # 0 () ()

def self.A; CLASS_A; end
class CLASS_A < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static default_constructors_A_ref: -> { ::Quark.default_constructors_md.Root.default_constructors_A_md }



    def initialize(name)
        
        self.__init_fields__
        (self).name = name

        nil
    end




    def _getClass()
        
        return "default_constructors.A"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = value
        end

        nil
    end

    def __init_fields__()
        

        self.name = nil

        nil
    end


end
CLASS_A.unlazy_statics

def self.B; CLASS_B; end
class CLASS_B < ::Quark.default_constructors.A
    extend ::DatawireQuarkCore::Static

    static default_constructors_B_ref: -> { ::Quark.default_constructors_md.Root.default_constructors_B_md }



    def initialize(name)
        
        super(name)

        nil
    end




    def greet()
        
        ::DatawireQuarkCore.print(("Hello, my name is ") + ((self).name))

        nil
    end

    def _getClass()
        
        return "default_constructors.B"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = value
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end
CLASS_B.unlazy_statics

def self.C; CLASS_C; end
class CLASS_C < ::Quark.default_constructors.A
    extend ::DatawireQuarkCore::Static

    static default_constructors_C_ref: -> { ::Quark.default_constructors_md.Root.default_constructors_C_md }



    def initialize(name)
        
        super(("C") + (name))

        nil
    end




    def greet()
        
        ::DatawireQuarkCore.print(("Greetings, my name is ") + ((self).name))

        nil
    end

    def _getClass()
        
        return "default_constructors.C"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = value
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end
CLASS_C.unlazy_statics

def self.X; CLASS_X; end
class CLASS_X < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static default_constructors_X_ref: -> { ::Quark.default_constructors_md.Root.default_constructors_X_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "default_constructors.X"

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
CLASS_X.unlazy_statics

def self.Y; CLASS_Y; end
class CLASS_Y < ::Quark.default_constructors.X
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static default_constructors_Y_ref: -> { ::Quark.default_constructors_md.Root.default_constructors_Y_md }



    def initialize(name)
        
        super()
        (self).name = name

        nil
    end




    def test()
        
        ::DatawireQuarkCore.print((self).name)

        nil
    end

    def _getClass()
        
        return "default_constructors.Y"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = value
        end

        nil
    end

    def __init_fields__()
        

        self.name = nil

        nil
    end


end
CLASS_Y.unlazy_statics

def self.main()
    
    b = ::Quark.default_constructors.B.new("Bob")
    b.greet()
    c = ::Quark.default_constructors.C.new("arole")
    c.greet()
    y = ::Quark.default_constructors.Y.new("asdf")
    y.test()


    nil
end

if __FILE__ == $0
    ::Quark.default_constructors.main()
end

end # module MODULE_default_constructors
end # module Quark
