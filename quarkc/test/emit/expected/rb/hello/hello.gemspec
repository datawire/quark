Gem::Specification.new do |spec|
  spec.name        = 'hello'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated hello'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/hello_lib.rb', 'lib/hello.rb', 'lib/hello_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'builtin', '= 0.0.1'
end
