Gem::Specification.new do |spec|
  spec.name        = 'stuff'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated stuff'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/stuff_lib.rb', 'lib/stuff.rb', 'lib/stuff_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'builtin', '= 0.0.1'
end
