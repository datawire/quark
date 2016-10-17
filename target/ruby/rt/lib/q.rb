module Q
  #
  # Int
  #
  def self.int__add__(a,b)
    a + b
  end
  def self.int__sub__(a,b)
    a - b
  end
  def self.int__eq__(a,b)
    a == b
  end

  #
  # Map<String,String>
  #
  def self.map_string_string__init__
    map = {}
    map.default= ""
    map
  end
  def self.map_string_string__get__(map, key)
    map[key]
  end
  def self.map_string_string__set__(map, key, value)
    map[key] = value
  end
  def self.map_string_string__len__(map)
    map.length
  end

  #
  # Map<String,int>
  #
  def self.map_string_int__init__
    map = {}
    map.default= 0
    map
  end
  def self.map_string_int__get__(map, key)
    map[key]
  end
  def self.map_string_int__set__(map, key, value)
    map[key] = value
  end
  def self.map_string_int__len__(map)
    map.length
  end
end
