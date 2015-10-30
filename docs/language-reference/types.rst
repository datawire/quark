:tocdepth: 2

Data Types
----------

Quark defines the following data types:

.. toctree::
  :maxdepth: 1

  bool
  float
  int
  List
  long
  numerical
  Map
  Object
  String
  void

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

.. _float:

float
~~~~~

Quark float values are floating point numbers. 

Constraints
+++++++++++

Floating point values in Quark are constrained only by the rules of each generated language.

Generated Code
++++++++++++++

+------------+---------+-------------------------------------------------------------+
| Language   | Type    | Allowed Values                                              |
+============+=========+=============================================================+
| Java       | Double  | -(2-2\ :sup:`-52` \)·2\ :sup:`1023` \ to -2\ :sup:`-1074` \ |
+            +         +                                                             +
|            |         | 0                                                           |
+            +         +                                                             +
|            |         | 2\ :sup:`-1074` to (2-2\ :sup:`-52`\ )·2\ :sup:`1023` \     |
+------------+---------+-------------------------------------------------------------+
| Javascript | Number  | -(2\ :sup:`53` \ - 1) to -5*10\ :sup:`-324` \               |
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
| Java       | Integer | -2,147,483,648 to 2,147,483,648                             |
+------------+---------+-------------------------------------------------------------+
| Javascript | Number  | -(2\ :sup:`53` \ - 1) to (2\ :sup:`53` \ - 1)               |
+------------+---------+-------------------------------------------------------------+
| Python     | int     | -2\ :sup:`31` \ - 1 to 2\ :sup:`31` \ - 1                   |
+            +         +                                                             +
|            |         | or                                                          |
+            +         +                                                             +
|            |         | -2\ :sup:`63` \ - 1 to 2\ :sup:`63` \ - 1                   |
+------------+---------+-------------------------------------------------------------+


.. _list:

List
~~~~

Java:

    public java.util.ArrayList li;

.. _long:

long
~~~~

Java:

    public long lo;

.. _number:

numerical
~~~~~~~~~
The numerical type is a base type for all numbers. It should not be used directly within Quark code.

.. _map:

Map
~~~

Java:

    public java.util.HashMap m;

.. _object:

Object
~~~~~~


Java:

    public Object o;


.. _String:

String
~~~~~~

Java:

    public String s;

.. _void:

void
~~~~


Java:

    public void v;

