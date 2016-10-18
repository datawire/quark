module Q
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
end
