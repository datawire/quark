Gem::Specification.new do |spec|
  spec.name        = 'testlib'
  spec.version     = '1.2.3'
  spec.summary     = 'Quark generated testlib'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/testlib_md.rb', 'lib/testlib.rb', 'lib/t2.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'quark', '= 0.0.1'
end
