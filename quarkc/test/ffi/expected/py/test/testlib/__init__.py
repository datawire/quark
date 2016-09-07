from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *



def atest():
    return _cast(None, lambda: unicode)


def foo():
    return _cast(None, lambda: unicode)
