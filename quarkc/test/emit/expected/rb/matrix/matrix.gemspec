Gem::Specification.new do |spec|
  spec.name        = 'matrix'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated matrix'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/matrix_lib.rb', 'lib/matrix.rb', 'lib/matrix_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'builtin', '= 0.0.1'
end
