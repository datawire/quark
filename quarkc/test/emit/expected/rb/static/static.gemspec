Gem::Specification.new do |spec|
  spec.name        = 'static'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated static'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/static_lib.rb', 'lib/static.rb', 'lib/static_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'builtin', '= 0.0.1'
end
