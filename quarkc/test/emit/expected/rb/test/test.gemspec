Gem::Specification.new do |spec|
  spec.name        = 'test'
  spec.version     = '1.2.3'
  spec.summary     = 'Quark generated test'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/testlib.rb', 'lib/t2.rb', 'lib/test_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'quark', '= 0.0.1'
end
