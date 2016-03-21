Gem::Specification.new do |spec|
  spec.name        = 'autocast'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated autocast'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/autocast_lib.rb', 'lib/autocast.rb', 'lib/autocast_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'builtin', '= 0.0.1'
end
