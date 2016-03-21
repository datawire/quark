Gem::Specification.new do |spec|
  spec.name        = 'slackpack'
  spec.version     = '0.1.0'
  spec.summary     = 'Quark generated slackpack'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['lib/slack/event.rb', 'lib/slack.rb', 'lib/pkg.rb', 'lib/pkg_slack_common.rb', 'lib/slackpack.rb', 'lib/slackpack_md.rb']
  # spec.homepage    = ''
  spec.add_runtime_dependency 'builtin', '= 0.0.1'
end
