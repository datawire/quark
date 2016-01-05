:tocdepth: 2

Data Types
----------

Quark data types typically have analogues in each target language and Quark uses the equivalent type when generating code in the supported languages.

Quark defines the following data types:

.. toctree::
   :maxdepth: 1

.. _bool:

bool
~~~~

Quark bool values are booleans and indicate truthfulness.

Constraints
+++++++++++

Boolean values are either true or false. Quark represents these states with the keywords true and false.

[[JMK should I discuss null? It compiles in Quark and evaluates to false in js/python, causes NPEs in Java]]

Generated Code
++++++++++++++

Booleans are translated in generated code as follows:

===========  ======= ==============
Language     Type    Allowed values
===========  ======= ==============
Java         Boolean true|false
Javascript   Boolean true|false
Python       bool    True|False
===========  ======= ==============

.. _byte:

byte
~~~~

Documentation coming soon

.. _Class:

Class
~~~~~

Documentation coming soon

.. _Field:

Field
~~~~~

Documentation coming soon.


.. _float:

float
~~~~~

Quark float values are floating point numbers.

Constraints
+++++++++++

Floating point values in Quark are constrained only by the rules of each generated language.

Generated Code
++++++++++++++

Floats are translated in generated code as follows:

+------------+---------+-------------------------------------------------------------+
| Language   | Type    | Allowed Values                                              |
+============+=========+=============================================================+
| Java       | Double  | -(2-2\ :sup:`-52` \)·2\ :sup:`1023` \ to -2\ :sup:`-1074` \ |
+            +         +                                                             +
|            |         | 0                                                           |
+            +         +                                                             +
|            |         | 2\ :sup:`-1074` to (2-2\ :sup:`-52`\ )·2\ :sup:`1023` \     |
+------------+---------+-------------------------------------------------------------+
| Javascript | Number  | -2\ :sup:`53` \ - 1 to -5*10\ :sup:`-324` \                 |
+            +         +                                                             +
|            |         | 0                                                           |
+            +         +                                                             +
|            |         | 5*10\ :sup:`-324` \ to 2\ :sup:`53` \ - 1                   |
+------------+---------+-------------------------------------------------------------+
| Python     | float   | varies; see sys.float.info                                  |
+------------+---------+-------------------------------------------------------------+

.. _int:

int
~~~

Quark ints are integers.

Constraints
+++++++++++

Integers in Quark are constrained only by the rules of each generated language.

Generated Code
++++++++++++++

Integers are translated in generated code as follows:

+------------+---------+-------------------------------------------------------------+
| Language   | Type    | Allowed Values                                              |
+============+=========+=============================================================+
| Java       | Integer | -2\ :sup:`31` \ - 1 to 2\ :sup:`31` \ - 1                   |
+------------+---------+-------------------------------------------------------------+
| Javascript | Number  | -2\ :sup:`53` \ - 1 to 2\ :sup:`53` \ - 1                   |
+------------+---------+-------------------------------------------------------------+
| Python     | int     | -2\ :sup:`31` \ - 1 to 2\ :sup:`31` \ - 1                   |
+            +         +                                                             +
|            |         | or                                                          |
+            +         +                                                             +
|            |         | -2\ :sup:`63` \ - 1 to 2\ :sup:`63` \ - 1                   |
+------------+---------+-------------------------------------------------------------+

.. _integral:

integral
~~~~~~~~

The integral type is a base type for all integers. It should not be used directly within Quark code.

.. _list:

List
~~~~

Quark lists are strongly typed and can contain elements of any other defined data type including other lists and objects.

Constraints
+++++++++++

Every element in a list must be the same type of data. For example, you cannot mix strings and floats or floats and objects.

List types are specified as follows when a new List is declared:

**List<** *type* **>**

where *type* is the type of the list elements.

Lists may be further constrained by the rules of each generated language.

Generated Code
++++++++++++++

Lists are translated in generated code as follows:

===========  =================== =========================
Language     Type                Allowed values           
===========  =================== =========================
Java         java.util.ArrayList constrained by definition
Javascript   Array               constrained by definition
Python       _List               constrained by definition
===========  =================== =========================

.. _long:

long
~~~~

Quark longs are long integers.

Constraints
+++++++++++

Quark does not permit declaration of long literal values by adding L to the end of an integer.

Long integers may be further constrained by the rules of each generated language.

Generated Code
++++++++++++++

Long integers are translated in generated code as follows:

+------------+---------+-------------------------------------------------------------+
| Language   | Type    | Allowed Values                                              |
+============+=========+=============================================================+
| Java       | Long    | -2\ :sup:`63` \ - 1 to 2\ :sup:`63` \ - 1                   |
+------------+---------+-------------------------------------------------------------+
| Javascript | Number  | -2\ :sup:`53` \ - 1 to 2\ :sup:`53` \ - 1                   |
+------------+---------+-------------------------------------------------------------+
| Python     | int     | unlimited                                                   |
+------------+---------+-------------------------------------------------------------+

Note: Currently Quark can only handle up to 48bit values. See `linkIssue58`_ for more information.

.. _linkIssue58: https://github.com/datawire/quark/issues/58

.. _numerical:

numerical
~~~~~~~~~
The numerical type is a base type for all numbers. It should not be used directly within Quark code.

.. _map:

Map
~~~

Quark Maps are sets of key-value pairs. They do not have an inherent order.

Constraints
+++++++++++

Quark Maps are strongly typed. Quark supports using any defined type of data in Maps. However, every key in a specific map must be the same type and every value in a specific Map must also be the same type (the keys and values may be different types). Also, Quark expect the values of keys to be immutable. Quark Maps are also constrained by additional rules in

Map types are specified as follows when a new Map is declared:

**Map<** *keyType* **,** *valueType* **>**

where *keyType* is the type of the map keys and *valueType* is the type of the value keys.

Maps may be further constrained by the rules of each generated language.

Generated Code
++++++++++++++

Maps are translated in generated code as follows:

===========  ================= =========================
Language     Type              Allowed values           
===========  ================= =========================
Java         java.util.HashMap constrained by definition
Javascript   Map               constrained by definition
Python       _Map              constrained by definition
===========  ================= =========================

.. _object:

Object
~~~~~~

Quark Objects are objects instantiated from a defined class.

Constraints
+++++++++++

Objects in Quark are constrained only by the relevant class definition and by the rules of each generated language.

Generated Code
++++++++++++++

Objects are translated in generated code as follows:

===========  ================= =========================
Language     Type              Allowed values           
===========  ================= =========================
Java         Object            constrained by definition
Javascript   Object            constrained by definition
Python       object            constrained by definition
===========  ================= =========================

.. _short:

short
~~~~~

Documentation coming soon

.. _String:

String
~~~~~~
Quark Strings are strings of characters.

Constraints
+++++++++++

Strings in Quark are constrained only by the rules of each generated language. Additional variable-specific constraints such as a set of allowed enumerated values are not supported.

Generated Code
++++++++++++++

Strings are translated in generated code as follows:

+------------+---------+-----------------------------------------------------------------+
| Language   | Type    | Allowed Values                                                  |
+============+=========+=================================================================+
| Java       | String  | Can contain up to 2\ :sup: `31`\ - 1 characters                 |
+            +         +                                                                 + 
|            |         | Can contain any character that can be UTF-16 encoded            |
+------------+---------+-----------------------------------------------------------------+
| Javascript | String  | Can contain an unlimited number of characters                   |
+            +         +                                                                 + 
|            |         | Can contain any character that can be UTF-16 encoded            |
+------------+---------+-----------------------------------------------------------------+
| Python     | str     | Can contain an unlimited number of characters                   |
+            +         +                                                                 +
|            |         | Can contain any character that can be UTF-8 encoded             |
+------------+---------+-----------------------------------------------------------------+

.. _void:

void
~~~~

Quark voids are used to indicate functions and methods that do not return a value.

Constraints
+++++++++++

voids in Quark are constrained only by the rules of each generated language.

Generated Code
++++++++++++++

voids are translated in generated code as follows:

===========  ================= ===================================
Language     Type              Allowed values                     
===========  ================= ===================================
Java         void              any function without a return value
Javascript   N/A               any function returning undefined
Python       N/A               any function returning None        
===========  ================= ===================================
