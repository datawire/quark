module Quark
  #
  # List<int>
  #
  def self.List_Any___init__
    list = []
    list
  end
  def self.List_Any___get__(list, key)
    list[key]
  end
  def self.List_Any___set__(list, key, value)
    list[key] = value
  end
  def self.List_Any_size(list)
    list.length
  end
  def self.List_Any_append(list, value)
    list.push value
  end
  def self.List_Any_extend(list, another)
    list.push *another
  end
  def self.List_Any_remove(list, key)
    list.delete_at key
  end
end
