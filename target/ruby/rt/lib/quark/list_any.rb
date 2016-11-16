module Quark
  #
  # List<int>
  #
  def self.List_any___init__
    list = []
    list
  end
  def self.List_any___get__(list, key)
    list[key]
  end
  def self.List_any___set__(list, key, value)
    list[key] = value
  end
  def self.List_any_size(list)
    list.length
  end
  def self.List_any_append(list, value)
    list.push value
  end
  def self.List_any_extend(list, another)
    list.push *another
  end
  def self.List_any_remove(list, key)
    list.delete_at key
  end
end
