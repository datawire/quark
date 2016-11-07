module Quark
  #
  # Map<String,String>
  #
  def self.Map_String_String___init__
    map = {}
    map.default= ""
    map
  end
  def self.Map_String_String___getitem__(map, key)
    map[key]
  end
  def self.Map_String_String___setitem__(map, key, value)
    map[key] = value
  end
  def self.Map_String_String_size(map)
    map.length
  end
  def self.Map_String_String_keys(map)
    map.keys
  end
end
