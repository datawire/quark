Gem::Specification.new do |spec|
  spec.name        = 'quark'
  spec.version     = '0.0.1'
  spec.summary     = 'Quark generated quark'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/quark.rb', 'lib/quark/logging.rb', 'lib/quark/reflect.rb', 'lib/quark/behaviors.rb', 'lib/quark/concurrent.rb', 'lib/quark/test.rb', 'lib/quark_md.rb', 'lib/datawire-quark-core.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'concurrent-ruby', '= 1.0.1'
  spec.add_runtime_dependency 'reel', '= 0.6.1'
  spec.add_runtime_dependency 'websocket-driver', '= 0.6.3'
  spec.add_runtime_dependency 'logging', '= 2.1.0'
  spec.add_runtime_dependency 'event_emitter', '= 0.2.5'
end
