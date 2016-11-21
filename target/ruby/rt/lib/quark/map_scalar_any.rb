module Quark
  #
  # Map<Scalar,Any>
  #
  def self.Map_Scalar_Any___init__
    map = {}
    map.default= ""
    map
  end
  def self.Map_Scalar_Any___get__(map, key)
    map[key]
  end
  def self.Map_Scalar_Any___set__(map, key, value)
    map[key] = value
  end
  def self.Map_Scalar_Any_size(map)
    map.length
  end
  def self.Map_Scalar_Any_keys(map)
    map.keys
  end
end
