module Q
  def self.int__add__(a,b)
    a + b
  end
  def self.int__sub__(a,b)
    a - b
  end
  def self.int__eq__(a,b)
    a == b
  end
  def self.map_string_string__init__
    {}
  end
  def self.map_string_string__get__(map, key)
    map[key]
  end
  def self.map_string_string__set__(map, key, value)
    map[key] = value
  end
end
