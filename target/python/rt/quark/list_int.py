def List_int___init__(): return []
def List_int___set__(list, key, value): list[key] = value
def List_int___get__(list, key): return list[key]
def List_int_size(list): return len(list)
def List_int_append(list, value): list.append(value)
def List_int_extend(list, another): list.extend(another)
def List_int_remove(list, key):
    ret = list[key]
    list[key:] = list[key+1:]
    return ret
