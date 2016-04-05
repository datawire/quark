Gem::Specification.new do |spec|
  spec.name        = 'dependencies'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated dependencies'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/dependencies_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'quark', '= 0.0.1'
  spec.add_runtime_dependency 'test', '= 1.2.3'
  spec.add_runtime_dependency 'rails', '= 3.0'
end
