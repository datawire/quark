module Quark
  #
  # String
  #
  def self.String___add__(a,b)
    a + b
  end
  def self.String___eq__(a,b)
    a == b
  end
  def self.String_size(a)
    a.size
  end
  def self.String_substring(a, s, e)
    a.slice(s, e-s)
  end
end
