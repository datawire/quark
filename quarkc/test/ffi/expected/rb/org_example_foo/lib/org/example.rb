module Quark
require "quark"
def self.org; Org; end
module Org
def self.example; Example; end
module Example
require_relative 'example/foo' # 1 ('example',) ()

end # module Example
end # module Org
end # module Quark
