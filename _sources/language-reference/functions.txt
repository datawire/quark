:tocdepth: 2

Functions
---------

Quark defines the following functions:

.. toctree::
   :maxdepth: 1
  
   bool::__and__()
   bool::__eq__()
   bool::__ne__()
   bool::__not__()
   bool::__or__()
   bool::toJSON()
   bool::_to_JSONObject()
   bool::toString()
   byte::__add__()
   byte::__div__()
   byte::__eq__()
   byte::__gt__()
   byte::__lt__()
   byte::__mod__()
   byte::__mul__()
   byte::__ne__()
   byte::__neg__()
   byte::__sub__()
   byte::toFloat()
   byte::toJSON()
   byte::_to_JSONObject()
   byte::toString()
   defaultCodec()
   float::__add__()
   float::__div__()
   float::__eq__()
   float::__gt__()
   float::__lt__()
   float::__mul__()
   float::__ne__()
   float::__neg__()
   float::__round__()
   float::__sub__()
   float::toJSON()
   float::_to_JSONObject()
   float::toString()
   int::__add__()
   int::__div__()
   int::__eq__()
   int::__gt__()
   int::__lt__()
   int::__mod__()
   int::__mul__()
   int::__ne__()
   int::__neg__()
   int::__sub__()
   int::_to_byte()
   int::toFloat()
   int::toJSON()
   int::_to_JSONObject()
   int::_to_long()
   int::_to_short()
   int::toString()
   List::__eq__()
   List::__get__()
   List::__ne__()
   List::__set__()
   List::add()
   List::size()
   long::__add__()
   long::__div__()
   long::__eq__()
   long::__gt__()
   long::__lt__()
   long::__mod__()
   long::__mul__()
   long::__ne__()
   long::__neg__()
   long::__sub__()
   long::toFloat()
   long::toJSON()
   long::_to_JSONObject()
   long::toString()
   Map::__eq__()
   Map::__get__()
   Map::__ne__()
   Map::__set__()
   Map::contains()
   Map::update()
   Map::urlencode()
   Object::__eq__()
   Object::__nq__()
   now()
   parseInt()
   print()
   short::__add__()
   short::__div__()
   short::__eq__()
   short::__gt__()
   short::__lt__()
   short::__mod__()
   short::__mul__()
   short::__ne__()
   short::__neg__()
   short::__sub__()
   short::toFloat()
   short::toJSON()
   short::_to_JSONObject()
   short::toString()
   sleep()
   String::__add__()
   String::endsWith()
   String::__eq__()
   String::find()
   String::join()
   String::__ne__()
   String::parseJSON()
   String::replace()
   String::size()
   String::split()
   String::startsWith()
   String::substring()
   String::toJSON()
   String::_to_JSONObject()
   url_get()
  

.. _boolAnd:

bool::__and__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _boolEqual:

bool::__eq__()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _boolNotEqual:

bool::__ne__()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _boolNot:

bool::__not__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _boolOr:

bool::__or__()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _boolToJson:

bool::toJSON()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _boolToJSONObject:

bool::_to_JSONObject()
~~~~~~~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _boolToString:

bool::toString()
~~~~~~~~~~~~~~~~

Documentation Coming Soon


.. _byteAdd:

byte::__add__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteDivide:

byte::__div__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteEqual:

byte::__eq__()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteGreaterThan:

byte::__gt__()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteLessThan:

byte::__lt__()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteModulo:

byte::__mod__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteMultiply:

byte::__mul__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteNotEqual:

byte::__ne__()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteNegate:

byte::__neg__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteSubtract:

byte::__sub__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteToFloat:

byte::toFloat()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteToJSON:

byte::toJSON()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _byteToJSONObject:

byte::_to_JSONObject()
~~~~~~~~~~~~~~~~~~~~~~

Documentation Coming Soon


.. _byteToString:

byte::toString()
~~~~~~~~~~~~~~~~

Documentation Coming Soon


.. _defaultCodec:

defaultCodec()
~~~~~~~~~~~~~~

Documentation Coming Soon
  
.. _floatAdd:

float::__add__()
~~~~~~~~~~~~~~~~
Used to add two floating point values together.

Syntax
++++++

float *A*.__add__(*B*)

where *A* and *B* are floating point values

This function is used under the covers by the + operator; *A* **+** *B* is equivalent to *A*.__add__(*B*).
  
.. _floatDivide:

float::__div__()
~~~~~~~~~~~~~~~~
Used to divide one floating point value into another.

Syntax
++++++

float *A*.__div__(*B*)

where *A* is the floating point numerator and *B* is the floating point denominator.

This function is used under the covers by the / operator; *A* **/** *B* is equivalent to *A*.__div__(*B*).

.. _floatEqual:

float::__eq__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

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

.. _floatNotEqual:

float::__ne__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _floatRound:

float::round()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _floatSubtract:

float::__sub__()
~~~~~~~~~~~~~~~~
Used to subtract one floating point value from another.

Syntax
++++++

float *A*.__sub__(*B*)

where *A* and *B* are floating point values and *B* is being subtracted from *A*.

This function is used under the covers by the - operator; *A* **-** *B* is equivalent to *A*.__sub__(*B*).

.. _floatToJSON:

float::toJSON()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _floatToJSONObject:

float::_to_JSONObject()
~~~~~~~~~~~~~~~~~~~~~~~

Documentation Coming Soon


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

.. _intEqual:

int::__equal__()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

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

.. _intNotEqual:

int::__ne__()
~~~~~~~~~~~~~

Documentation Coming Soon

.. _intSubtract:

int::__sub__()
~~~~~~~~~~~~~~
Used to subtract one integer from another.

Syntax
++++++

int *A*.__sub__(*B*)

where *A* and *B* are integers and *B* is being subtracted from *A*.

This function is used under the covers by the - operator; *A* **-** *B* is equivalent to *A*.__sub__(*B*).

.. _intToByte:

int::_to_Byte()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _intToFloat:

float::toFloat()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _intToJSON:

int::toJSON()
~~~~~~~~~~~~~

Documentation Coming Soon

.. _intToJSONObject:

int::_to_JSONObject()
~~~~~~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _intToLong:

int::_to_Long()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _intToShort:

int::_to_Short()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _intToString:

int::toString()
~~~~~~~~~~~~~~~
Used to cast an integer to a string.

Syntax
++++++

int *A*.toString()

where *A* is an integer.

.. _listGet:

List::__get__()
~~~~~~~~~~~~~~~
Used to retrieve the value of a specific element in a list.

Syntax
++++++

*elementType* *A*.__get__(*B*)

where *elementType* is the declared type of list elements, *A* is the list and *B* is the 0-based index of the element value to return.

This function is used under the covers by list [] notation; *A* **[** *B* **]** is equivalent to *A*.__get__(*B*)

.. _listSet:

List::__set__()
~~~~~~~~~~~~~~~
Used to modify an existing element in a list.

Syntax
++++++

void *A*.__set__(*B*,*C*)

where *A* is the list, *B* is the 0-based index number of the element to modify, and *C* is the new value of the element.

This function is used under the covers by list [] notation; *A* **[** *B* **] =** *C* is equivalent to *A*.__set__(*B*,*C*)

.. _listAdd:

List::add()
~~~~~~~~~~~
Used to add a new element to a list. The element is always added to the end of the list.

Syntax
++++++

void *A*.__add__(*B*)

where *A* is the list and *B* is the element to add to the list.

This function is used under the covers by list [] notation; *A* **[** *B* **]** is equivalent to *A*.__add__(*B*)

.. _listSize:

List::size()
~~~~~~~~~~~~
Returns the number of elements in a list.

Syntax
++++++

int *A*.__size__()

where *A* is the list.

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

.. _longEqual:

long::__eq__()
~~~~~~~~~~~~~~

Documentation Coming Soon

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

.. _longToFloat:

long::toFloat()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _longToJSON:

long::toJSON()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _longToJSONObject:

long::_to_JSONObject()
~~~~~~~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _longToString:

long::toString()
~~~~~~~~~~~~~~~~
Used to cast a long integer to a string.

Syntax
++++++

long *A*.toString()

where *A* is a long integer.

.. _MapContains:

Map::contains()
~~~~~~~~~~~~~~~

Documentation Coming Soon


.. _MapEqual:

Map::__eq__()
~~~~~~~~~~~~~

Documentation Coming Soon

.. _MapGet:

Map::get()
~~~~~~~~~~

Documentation Coming Soon

.. _MapNotEqual:

Map::__ne__()
~~~~~~~~~~~~~

Documentation Coming Soon

.. _MapSet:

Map::set()
~~~~~~~~~~

Documentation Coming Soon

.. _MapUpdate:

Map::update()
~~~~~~~~~~~~~

Documentation Coming Soon

.. _ObjectEqual:

Object::__eq__()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _ObjectNotEqual:

Object::__ne__()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

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

.. _shortAdd:

short::__add__()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortDivide:

short::__div__()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortEqual:

short::__eq__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortGreaterThan:

short::__gt__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortLessThan:

short::__lt__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortModulo:

short::__mod__()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortMultiply:

short::__mul__()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortNotEqual:

short::__ne__()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortNegate:

short::__neg__()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortSubtract:

short::__sub__()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortToFloat:

short::toFloat()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortToJSON:

short::toJSON()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortToJSONObject:

short::toJSONObject()
~~~~~~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _shortToString:

short::toString()
~~~~~~~~~~~~~~~~~

Documentation Coming Soon

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

.. _stringEndsWith:

string::endsWith()
~~~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringEqual:

string::__eq__()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringFind:

string::find()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringJoin:

string::join()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringNotEqual:

string::__ne__()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringParseJSON:

string::parseJSON()
~~~~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringReplace:

string::replace()
~~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringSize:

string::size()
~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringSplit:

string::split()
~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringStartsWith:

string::startsWith()
~~~~~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringSubstring:

string::substring()
~~~~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringToJSON:

string::toJSON()
~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _stringToJSONObject:

string::_to_JSONObject()
~~~~~~~~~~~~~~~~~~~~~~~~

Documentation Coming Soon

.. _urlGet:

url_get()
~~~~~~~~~

Documentation Coming Soon