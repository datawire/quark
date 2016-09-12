Gem::Specification.new do |spec|
  spec.name        = 'overlapping_namespace'
  spec.version     = '0.1.0'
  spec.summary     = 'Quark generated overlapping_namespace'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/overlapping_namespace_md.rb', 'lib/org.rb', 'lib/org/example.rb', 'lib/org/example/bar.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'quark', '= 1.0.406'
  spec.add_runtime_dependency 'org_example_foo', '= 0.1.0'
end
