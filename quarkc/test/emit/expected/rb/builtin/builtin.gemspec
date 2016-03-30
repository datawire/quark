Gem::Specification.new do |spec|
  spec.name        = 'builtin'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated builtin'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/builtin.rb', 'lib/builtin/reflect.rb', 'lib/builtin/behaviors.rb', 'lib/builtin/concurrent.rb', 'lib/builtin_md.rb', 'lib/datawire-quark-core.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'concurrent-ruby', '= 1.0.1'
  spec.add_runtime_dependency 'reel', '= 0.6.1'
  spec.add_runtime_dependency 'websocket-driver', '= 0.6.3'
  spec.add_runtime_dependency 'logging', '= 2.1.0'
  spec.add_runtime_dependency 'event_emitter', '= 0.2.5'
end
