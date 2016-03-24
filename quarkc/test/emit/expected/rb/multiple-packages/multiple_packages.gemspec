Gem::Specification.new do |spec|
  spec.name        = 'multiple_packages'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated multiple_packages'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/p1/p2.rb', 'lib/p1.rb', 'lib/multiple_packages.rb', 'lib/multiple_packages_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'quark', '= 0.0.1'
end
