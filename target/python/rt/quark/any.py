import six

def unsafe(a): return a

def Any_type(a):
    if a is None:
        return 0
    elif isinstance(a, (list, tuple)):
        return 2
    elif isinstance(a, dict):
        return 3
    elif isinstance(a, six.text_type):
        return 1
    elif a is True or a is False:
        # order wrt int check is important. bool isinstance int
        return 1
    elif isinstance(a, six.integer_types):
        return 1
    elif isinstance(a, float):
        return 1
    else:
        return -1


def Any_asBool(a):
    if a is None:
        return False
    elif isinstance(a, six.text_type):
        return bool(a)
    elif a is True or a is False:
        # order wrt int check is important. bool isinstance int
        return a
    elif isinstance(a, six.integer_types):
        return bool(a)
    elif isinstance(a, float):
        return bool(a)
    else:
        return False


def Any_asInt(a):
    if a is None:
        return 0
    elif isinstance(a, six.text_type):
        return 0
    elif a is True or a is False:
        return int(a)
    elif isinstance(a, six.integer_types):
        return a
    elif isinstance(a, float):
        return int(a)
    else:
        return 0

def Any_asString(a):
    if a is None:
        return u""
    elif isinstance(a, six.text_type):
        return a
    elif a is True or a is False:
        return a and "true" or "false"
    elif isinstance(a, six.integer_types):
        return six.text_type(a)
    elif isinstance(a, float):
        return six.text_type(a)
    else:
        return u""

def Any_asScalar(a):
    if isinstance(a, (list, tuple, dict)):
        return None
    else:
        return a

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
