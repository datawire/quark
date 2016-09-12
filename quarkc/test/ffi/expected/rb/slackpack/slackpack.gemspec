Gem::Specification.new do |spec|
  spec.name        = 'slackpack'
  spec.version     = '1.0.0'
  spec.summary     = 'Quark generated slackpack'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/slackpack_md.rb', 'lib/slack.rb', 'lib/slack/event.rb', 'lib/slackpack.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'quark', '= 1.0.406'
end
