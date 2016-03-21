Gem::Specification.new do |spec|
  spec.name        = 'builtin_codec'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated builtin_codec'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/builtin_codec_lib.rb', 'lib/builtin_codec.rb', 'lib/builtin_codec_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'builtin', '= 0.0.1'
end
