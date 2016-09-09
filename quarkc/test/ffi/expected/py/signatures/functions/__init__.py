from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("functions")


def factorial(n):
    return _cast(None, lambda: int)

_lazyImport.pump("functions")
