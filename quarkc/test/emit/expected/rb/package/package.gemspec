Gem::Specification.new do |spec|
  spec.name        = 'package'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated package'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/test.rb', 'lib/test/test.rb', 'lib/package.rb', 'lib/package_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'quark', '= 0.0.1'
end
