module Quark
  #
  # List<String>
  #
  def self.List_String___init__
    list = []
    list
  end
  def self.List_String___get__(list, key)
    list[key]
  end
  def self.List_String___set__(list, key, value)
    list[key] = value
  end
  def self.List_String_size(list)
    list.length
  end
  def self.List_String_append(list, value)
    list.push(value)
  end
  def self.List_String_extend(list, another)
    list.push(*another)
  end
  def self.List_String_remove(list, key)
    list.delete_at(key)
  end
end
