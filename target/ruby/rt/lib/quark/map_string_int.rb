module Quark
  #
  # Map<String,int>
  #
  def self.map_string_int___init__
    map = {}
    map.default= 0
    map
  end
  def self.map_string_int___get__(map, key)
    map[key]
  end
  def self.map_string_int___set__(map, key, value)
    map[key] = value
  end
  def self.map_string_int___len__(map)
    map.length
  end
end
