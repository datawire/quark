Gem::Specification.new do |spec|
  spec.name        = 'numbers'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated numbers'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/numbers_lib.rb', 'lib/numbers.rb', 'lib/numbers_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'builtin', '= 0.0.1'
end
