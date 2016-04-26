require 'travis/yaml'
g=Travis::Yaml.parse(open(".travis.yml").read()).env.global
ARGV.each {|a| g.add_value! a}
puts g.serialize(:json)

