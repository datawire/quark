def List_String___init__(): return []
def List_String___set__(list, key, value): list[key] = value
def List_String___get__(list, key): return list[key]
def List_String_size(list): return len(list)
def List_String_append(list, value): list.append(value)
def List_String_extend(list, another): list.extend(another)
def List_String_remove(list, key):
    ret = list[key]
    list[key:] = list[key+1:]
    return ret
