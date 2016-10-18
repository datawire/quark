module Q
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
