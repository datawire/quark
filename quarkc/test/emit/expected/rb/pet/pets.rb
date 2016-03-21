module Quark
require "datawire-quark-core"
def self.pets; MODULE_pets; end
module MODULE_pets
# require_relatve "builtin/reflect.rb"
# require_relatve "pet_md.rb"

class CLASS_Pet < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def greet()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.Pet; CLASS_Pet; end

class CLASS_Cat < ::Quark.pets.Pet
    attr_accessor 

    
    def initialize()
        
        super()

        nil
    end



    
    def greet()
        
        DatawireQuarkCore.print("meow!")

        nil
    end

    def _getClass()
        
        return "pets.Cat"

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


end; def self.Cat; CLASS_Cat; end

class CLASS_Dog < ::Quark.pets.Pet
    attr_accessor 

    
    def initialize()
        
        super()

        nil
    end



    
    def greet()
        
        DatawireQuarkCore.print("woof!")

        nil
    end

    def _getClass()
        
        return "pets.Dog"

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


end; def self.Dog; CLASS_Dog; end

def self.main()
    
    evil = ::Quark.pets.Cat.new()
    good = ::Quark.pets.Dog.new()
    evil.greet()
    good.greet()


    nil
end
end # module MODULE_pets
end # module Quark
