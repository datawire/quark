module Quark
require "quark"
def self.org; Org; end
module Org
require_relative 'org/example' # 0 ('org',) ()

end # module Org
end # module Quark
