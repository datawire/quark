module Quark
  #
  # Map<String,String>
  #
  def self.map_string_string___init__
    map = {}
    map.default= ""
    map
  end
  def self.map_string_string___get__(map, key)
    map[key]
  end
  def self.map_string_string___set__(map, key, value)
    map[key] = value
  end
  def self.map_string_string___len__(map)
    map.length
  end
end
