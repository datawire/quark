module Quark
require "quark"
def self.pets; Pets; end
module Pets
require 'quark' # .../reflect
require_relative 'pet_md' # 0 () ()


def self.Pet; Pet; end
class Pet < ::DatawireQuarkCore::QuarkObject



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

def self.Cat; Cat; end
class Cat < ::Quark.pets.Pet
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
Cat.unlazy_statics

def self.Dog; Dog; end
class Dog < ::Quark.pets.Pet
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
Dog.unlazy_statics
end # module Pets
end # module Quark
