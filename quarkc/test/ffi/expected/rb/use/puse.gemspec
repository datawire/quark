Gem::Specification.new do |spec|
  spec.name        = 'puse'
  spec.version     = '4.5.6'
  spec.summary     = 'Quark generated puse'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/puse_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'quark', '= 0.0.1'
  spec.add_runtime_dependency 'testlib', '= 1.2.3'
end
