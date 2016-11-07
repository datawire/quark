module Quark
  #
  # List<int>
  #
  def self.List_int___init__
    list = []
    list
  end
  def self.List_int___getitem__(list, key)
    list[key]
  end
  def self.List_int___setitem__(list, key, value)
    list[key] = value
  end
  def self.List_int_size(list)
    list.length
  end
  def self.List_int_append(list, value)
    list.push value
  end
  def self.List_int_extend(list, another)
    list.push *another
  end
  def self.List_int_remove(list, key)
    list.delete_at key
  end
end
