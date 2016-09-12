from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("p1")
import p1.p2



def c():
    pass


def d():
    pass
_lazyImport.pump("p1")
