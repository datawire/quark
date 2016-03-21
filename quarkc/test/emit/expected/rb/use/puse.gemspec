Gem::Specification.new do |spec|
  spec.name        = 'puse'
  spec.version     = '4.5.6'
  spec.summary     = 'Quark generated puse'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/use_lib.rb', 'lib/use.rb', 'lib/puse_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'builtin', '= 0.0.1'
  spec.add_runtime_dependency 'test', '= 1.2.3'
end
