import six

def unsafe(a): return a

def Any_type(a):
    if a is None:
        return 0
    elif isinstance(a, (list, tuple)):
        return 5
    elif isinstance(a, dict):
        return 6
    elif isinstance(a, six.text_type):
        return 3
    elif a is True or a is False:
        # order wrt int check is important. bool isinstance int
        return 1
    elif isinstance(a, six.integer_types):
        return 2
    elif isinstance(a, float):
        return 4
    else:
        return -1


def Any_asBool(a):
    if a is True or a is False:
        return a
    else:
        return False


def Any_asInt(a):
    if a is True or a is False:
        return 0
    if isinstance(a, six.integer_types):
        return a
    else:
        return 0

def Any_asString(a):
    if isinstance(a, six.text_type):
        return a
    else:
        return u""

def Any_asList(a):
    if isinstance(a, list):
        return a
    elif isinstance(a, tuple):
        return list(a)
    else:
        return None

def Any_asMap(a):
    if isinstance(a, dict):
        return a
    else:
        return None
