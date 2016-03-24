module Quark
require "builtin"
def self.pets; MODULE_pets; end
module MODULE_pets
require 'builtin' # .../reflect
require_relative 'pet_md' # 0 () ()

def self.Pet; CLASS_Pet; end
class CLASS_Pet < ::DatawireQuarkCore::QuarkObject



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

def self.Cat; CLASS_Cat; end
class CLASS_Cat < ::Quark.pets.Pet
    extend ::DatawireQuarkCore::Static

    static pets_Cat_ref: -> { ::Quark.pet_md.Root.pets_Cat_md }



    def initialize()
        
        super()

        nil
    end




    def greet()
        
        ::DatawireQuarkCore.print("meow!")

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
CLASS_Cat.unlazy_statics

def self.Dog; CLASS_Dog; end
class CLASS_Dog < ::Quark.pets.Pet
    extend ::DatawireQuarkCore::Static

    static pets_Dog_ref: -> { ::Quark.pet_md.Root.pets_Dog_md }



    def initialize()
        
        super()

        nil
    end




    def greet()
        
        ::DatawireQuarkCore.print("woof!")

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
CLASS_Dog.unlazy_statics

def self.main()
    
    evil = ::Quark.pets.Cat.new()
    good = ::Quark.pets.Dog.new()
    evil.greet()
    good.greet()


    nil
end
end # module MODULE_pets
end # module Quark
