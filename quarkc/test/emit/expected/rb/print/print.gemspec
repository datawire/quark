Gem::Specification.new do |spec|
  spec.name        = 'print'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated print'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/print_lib.rb', 'lib/print.rb', 'lib/print_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'builtin', '= 0.0.1'
end
