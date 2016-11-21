from .bool_ import *
from .int_ import *
from .any import *
from .string import *
from .list_int import *
from .list_any import *
from .list_string import *
from .map_string_int import *
from .map_string_string import *
from .map_string_any import *
from .map_scalar_any import *

import sys

def print_(o):
    sys.stdout.write("%s\n" % o);
