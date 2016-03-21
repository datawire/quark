Gem::Specification.new do |spec|
  spec.name        = 'factorial'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated factorial'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/factorial_lib.rb', 'lib/factorial.rb', 'lib/factorial_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'builtin', '= 0.0.1'
end
