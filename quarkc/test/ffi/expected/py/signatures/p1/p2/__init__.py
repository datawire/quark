from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("p1.p2")


def a():
    pass


def b():
    pass
_lazyImport.pump("p1.p2")
