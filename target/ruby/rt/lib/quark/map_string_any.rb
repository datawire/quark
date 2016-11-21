module Quark
  #
  # Map<String,Any>
  #
  def self.Map_String_Any___init__
    map = {}
    map.default= ""
    map
  end
  def self.Map_String_Any___get__(map, key)
    map[key]
  end
  def self.Map_String_Any___set__(map, key, value)
    map[key] = value
  end
  def self.Map_String_Any_size(map)
    map.length
  end
  def self.Map_String_Any_keys(map)
    map.keys
  end
end
