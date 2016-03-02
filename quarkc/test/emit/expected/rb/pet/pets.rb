require "datawire-quark-core"
require "../builtin"
require "../pet_md"


class Pet < Object
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


end

class Cat < Pet
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


end

class Dog < Pet
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


end

class Functions < Object
    

    

    
    def self.main()
        
        evil = Cat.new()
        good = Dog.new()
        evil.greet()
        good.greet()

        nil
    end


end
