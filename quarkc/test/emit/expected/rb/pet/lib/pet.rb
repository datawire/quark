module Quark
require "quark"
def self.pet; MODULE_pet; end
module MODULE_pet
require_relative 'pets' # 0 () ()
require_relative 'pet' # 0 () ()

def self.main()
    
    evil = ::Quark.pets.Cat.new()
    good = ::Quark.pets.Dog.new()
    evil.greet()
    good.greet()


    nil
end

if __FILE__ == $0
    ::Quark.pet.main()
end

end # module MODULE_pet
end # module Quark
