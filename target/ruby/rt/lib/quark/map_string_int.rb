module Quark
  #
  # Map<String,int>
  #
  def self.Map_String_int___init__
    map = {}
    map.default= 0
    map
  end
  def self.Map_String_int___getitem__(map, key)
    map[key]
  end
  def self.Map_String_int___setitem__(map, key, value)
    map[key] = value
  end
  def self.Map_String_int_size(map)
    map.length
  end
  def self.Map_String_int_keys(map)
    map.keys
  end
end
