def List_any___init__(): return []
def List_any___set__(list, key, value): list[key] = value
def List_any___get__(list, key): return list[key]
def List_any_size(list): return len(list)
def List_any_append(list, value): list.append(value)
def List_any_extend(list, another): list.extend(another)
def List_any_remove(list, key):
    ret = list[key]
    list[key:] = list[key+1:]
    return ret

