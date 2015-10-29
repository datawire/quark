:tocdepth: 2

Functions
---------

Quark defines the following functions:

.. toctree::
  :maxdepth: 1
  
  float::__add__()
  float::__div__()
  float::__gt__()
  float::__lt__()
  float::__mul__()
  float::__neg__()
  float::__sub__()
  float::toString()
  int::__add__()
  int::__div__()
  int::__gt__()
  int::__lt__()
  int::__mod__()
  int::__mul__()
  int::__neg__()
  int::__sub__()
  int::toString()
  List::__get__()
  List::__set__()
  List::add()
  List::size()
  long::__add__()
  long::__div__()
  long::__gt__()
  long::__lt__()
  long::__mul__()
  long::__neg__()
  long::__sub__()
  long::toString()
  Map::__get__()
  Map::__set__()
  Map::contains()
  Map::update()
  Object::__eq__()
  Object::__nq__()
  now()
  parseInt()
  print()
  sleep()
  String::__add__()
  url_get()
  
  
[[JMK Some of these may be pulled into a separate library - but we'll need to document that library if that happens so we can just pull out those entries]]

[[JMK I know we agreed to list by type first then put the supported functions underneath, but I'm wondering if it would make more sense to list by function and then indicate which types support it/any variations]]
  
.. _floatAdd:

float::__add__()
~~~~~~~~~~~~~~~~
Used to add two floating point values together.

Syntax
++++++

float *A*.__add__(*B*)

where *A* and *B* are floating point values

This function is used under the covers by the + operator; *A* **+** *B* is equivalent to *A*.__add__(*B*).

[[JMK Also, we should clarify what we want to call a function vs a method - I find myself stumbling over this a bit]]
  
.. _floatDivide:

float::__div__()
~~~~~~~~~~~~~~~~
Used to divide one floating point value into another.

Syntax
++++++

float *A*.__div__(*B*)

where *A* is the floating point numerator and *B* is the floating point denominator.

This function is used under the covers by the / operator; *A* **/** *B* is equivalent to *A*.__div__(*B*).


.. _floatGreaterThan:

float::__gt__()
~~~~~~~~~~~~~~~
Used to evaluate whether one floating point value is greater than another.

Syntax
++++++

int *A*.__gt__(*B*)

where *A* and *B* are floating point values. Returns true (1) if *A* is greater than *B* and false (0) if *A* is less than or equal to *B*.

This function is used under the covers by the > operator; *A* **>** *B* is equivalent to *A*.__gt__(*B*).

.. _floatLessThan:

float::__lt__()
~~~~~~~~~~~~~~~
Used to evaluate whether one floating point value is less than another.

Syntax
++++++

int *A*.__lt__(*B*)

where *A* and *B* are floating point values. Returns true (1) if *A* is less than *B* and false (0) if *A* is greater than or equal to *B*.

This function is used under the covers by the < operator; *A* **<** *B* is equivalent to *A*.__lt__(*B*).

.. _floatMultiply:

float::__mul__()
~~~~~~~~~~~~~~~~
Used to multiply two floating point values together.

Syntax
++++++

float *A*.__mul__(*B*)

where *A* and *B* are floating point values

This function is used under the covers by the * operator; *A* **\*** *B* is equivalent to *A*.__mul__(*B*).

.. _floatNegate:

float::__neg__()
~~~~~~~~~~~~~~~~
Used to flip the sign of a floating point value.

Syntax
++++++

float *A*.__neg__()

where *A* is a floating point value.

This function is used under the covers by the - operator; **-** *A* is equivalent to *A*.__neg__().

.. _floatSubtract:

float::__sub__()
~~~~~~~~~~~~~~~~
Used to subtract one floating point value from another.

Syntax
++++++

float *A*.__sub__(*B*)

where *A* and *B* are floating point values and *B* is being subtracted from *A*.

This function is used under the covers by the - operator; *A* **-** *B* is equivalent to *A*.__sub__(*B*).

.. _floatToString:

float::toString()
~~~~~~~~~~~~~~~~~
Used to cast a floating point value to a string.

Syntax
++++++

float *A*.toString()

where *A* is a floating point value.

.. _intAdd:

int::__add__()
~~~~~~~~~~~~~~
Used to add two integers together.

Syntax
++++++

int *A*.__add__(*B*)

where *A* and *B* are integers.

This function is used under the covers by the + operator; *A* **+** *B* is equivalent to *A*.__add__(*B*).

.. _intDivide:

int::__div__()
~~~~~~~~~~~~~~
Used to divide one integer value into another.

Syntax
++++++

int *A*.__div__(*B*)

where *A* is the integer numerator and *B* is the integer denominator.

This function is used under the covers by the / operator; *A* **/** *B* is equivalent to *A*.__div__(*B*).

.. _intGreaterThan:

int::__gt__()
~~~~~~~~~~~~~
Used to evaluate whether one integer value is greater than another.

Syntax
++++++

int *A*.__gt__(*B*)

where *A* and *B* are both integers. Returns true (1) if *A* is greater than *B* and false (0) if *A* is less than or equal to *B*.

This function is used under the covers by the > operator; *A* **>** *B* is equivalent to *A*.__gt__(*B*).

.. _intLessThan:

int::__lt__()
~~~~~~~~~~~~~
Used to evaluate whether one integer value is less than another.

Syntax
++++++

int *A*.__lt__(*B*)

where *A* and *B* are integers. Returns true (1) if *A* is less than *B* and false (0) if *A* is greater than or equal to *B*.

This function is used under the covers by the < operator; *A* **<** *B* is equivalent to *A*.__lt__(*B*).

.. _intModulo:

int::__mod__()
~~~~~~~~~~~~~~
Used to determine the remainer (modulo) when one integer value is divided into another.

Syntax
++++++

int *A*.__mod__(*B*)

where *A* is the integer numerator and *B* is the integer denominator.

This function is used under the covers by the % operator; *A* **%** *B* is equivalent to *A*.__mod__(*B*).

.. _intMultiply:

int::__mul__()
~~~~~~~~~~~~~~
Used to multiply two integers values together.

Syntax
++++++

int *A*.__mul__(*B*)

where *A* and *B* are integers.

This function is used under the covers by the * operator; *A* **\*** *B* is equivalent to *A*.__mul__(*B*).

.. _intNegate:

int::__neg__()
~~~~~~~~~~~~~~
Used to flip the sign of an integer.

Syntax
++++++

int *A*.__neg__()

where *A* is any integer value.

This function is used under the covers by the - operator; **-** *A* is equivalent to *A*.__neg__().

.. _intSubtract:

int::__sub__()
~~~~~~~~~~~~~~
Used to subtract one integer from another.

Syntax
++++++

int *A*.__sub__(*B*)

where *A* and *B* are integers and *B* is being subtracted from *A*.

This function is used under the covers by the - operator; *A* **-** *B* is equivalent to *A*.__sub__(*B*).

.. _intToString:

int::toString()
~~~~~~~~~~~~~~~
Used to cast an integer to a string.

Syntax
++++++

int *A*.toString()

where *A* is an integer.

List::__get__()
List::__set__()
List::add()
List::size()

.. _longAdd:

long::__add__()
~~~~~~~~~~~~~~~
Used to add two long integers together.

Syntax
++++++

long *A*.__add__(*B*)

where *A* and *B* are long integers.

This function is used under the covers by the + operator; *A* **+** *B* is equivalent to *A*.__add__(*B*).

.. _longDivide:

long::__div__()
~~~~~~~~~~~~~~~
Used to divide one long integer into another.

Syntax
++++++

long *A*.__div__(*B*)

where *A* is the long integer numerator and *B* is the long integer denominator.

This function is used under the covers by the / operator; *A* **/** *B* is equivalent to *A*.__div__(*B*).

.. _longGreaterThan:

long::__gt__()
~~~~~~~~~~~~~~
Used to evaluate whether one long integer is greater than another.

Syntax
++++++

long *A*.__gt__(*B*)

where *A* and *B* are long integers. Returns true (1) if *A* is greater than *B* and false (0) if *A* is less than or equal to *B*.

This function is used under the covers by the > operator; *A* **>** *B* is equivalent to *A*.__gt__(*B*).

.. _longLessThan:

long::__lt__()
~~~~~~~~~~~~~~
Used to evaluate whether one long integer is less than another.

Syntax
++++++

long *A*.__lt__(*B*)

where *A* and *B* are long integers. Returns true (1) if *A* is less than *B* and false (0) if *A* is greater than or equal to *B*.

This function is used under the covers by the < operator; *A* **<** *B* is equivalent to *A*.__lt__(*B*).

.. _longMultiply:

long::__mul__()
~~~~~~~~~~~~~~~
Used to multiply two long integers together.

Syntax
++++++

long *A*.__mul__(*B*)

where *A* and *B* are long integers.

This function is used under the covers by the * operator; *A* **\*** *B* is equivalent to *A*.__mul__(*B*).

.. _longNegate:

long::__neg__()
~~~~~~~~~~~~~~~
Used to flip the sign of a long integer.

Syntax
++++++

long *A*.__neg__()

where *A* is a long integer.

This function is used under the covers by the - operator; **-** *A* is equivalent to *A*.__neg__().

.. _longSubtract:

long::__sub__()
~~~~~~~~~~~~~~~
Used to subtract one long integer from another.

Syntax
++++++

long *A*.__sub__(*B*)

where *A* and *B* are long integers and *B* is being subtracted from *A*.

This function is used under the covers by the - operator; *A* **-** *B* is equivalent to *A*.__div__(*B*).

long::toString()
~~~~~~~~~~~~~~~~
Used to cast a long integer to a string.

Syntax
++++++

int *A*.toString()

where *A* is a long integer.


Map::__get__()
Map::__set__()
Map::contains()
Map::update()
Object::__eq__()
Object::__nq__()

.. _now:

now()
~~~~~
Returns the current time in UTC milliseconds.

Syntax
++++++

void now()

.. _parseInt:

parseInt()
~~~~~~~~~~
Used to represent a string as a base 10 integer. If rounding is needed, the value is rounded according to the default rounding rules of the target language.

Syntax
++++++

int parseInt(*A*)

where *A* is the string to convert.

.. _print:

print()
~~~~~~~
Used to print strings to stdout. Integers and floats can be printed if passed through toString() first.

Syntax
++++++

void print(*A*)

where *A* is the string to print.

.. _sleep:

sleep()
~~~~~~~
Used to pause code execution for a specified period of time.

Syntax
++++++

void sleep(*A*)

where *A* is the number of seconds to halt execution of code.

.. _stringAdd:

String::__add__()
~~~~~~~~~~~~~~~~~
Used to concatenate strings.

Syntax
++++++

String *A*.__add__(*B*)

where *A* and *B* are both strings.

This function is used under the covers by the + operator; *A* **+** *B* is equivalent to *A*.__add__(*B*).

.. _urlGet:

url_get()
~~~~~~~~~
TBD

[[JMK need to sort this out further. Also, should this be renamed to camel case? The _ looks odd to me]]
