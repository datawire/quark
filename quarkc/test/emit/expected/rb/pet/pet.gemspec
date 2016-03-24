Gem::Specification.new do |spec|
  spec.name        = 'pet'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated pet'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/pets.rb', 'lib/pet.rb', 'lib/pet_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'quark', '= 0.0.1'
end
