def List_Any___init__(): return []
def List_Any___set__(list, key, value): list[key] = value
def List_Any___get__(list, key): return list[key]
def List_Any_size(list): return len(list)
def List_Any_append(list, value): list.append(value)
def List_Any_extend(list, another): list.extend(another)
def List_Any_remove(list, key):
    ret = list[key]
    list[key:] = list[key+1:]
    return ret

