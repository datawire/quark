Operators
---------

Quark defines the following operators:

.. toctree::
  :maxdepth: 1

  Add (+) <Add>
  And (&&) <And>
  Bitwise Complement (~) <Bitwise Complement>
  Divide (/) <Divide>
  Equals (=) <Equals>
  Equivalent (==) <Equivalent>
  Greater Than (>) <Greater Than>
  Greater Than or Equal (>=) <Greater Than or Equal>
  Less Than (<) <Less Than>
  Less Than or Equal (<=) <Less Than or Equal>
  Modulo (%) <Modulo>
  Multiply (*) <Multiply>
  Negate (-) <Negate>
  Not (!) <Not>
  Not Equivalent (!=) <Not Equivalent>
  Or (||) <Or>
  Subtract (-) <Subtract>

.. _AddOperator:

Add
~~~

The Add operator is a binary operator that adds the value on the left of the operator and the value on the right of the operator together.

Syntax
++++++

The Add operator syntax is:

*A* **+** *B*

where *A* and *B* are the two values being added together. If the values are numbers, the addition is standard arithmetic addition. If the values are strings, the addition appends the string on the right side to the string on the left side.

.. _AndOperator:

And
~~~

The And operator is a binary operator that evaluates to true if both the value on the left side of the operator and the value on the right side of the operator evaluate to true. The And operator evaluates to false if only one of the two values evaluates to true or if they both evaluate to false.

Syntax
++++++

The And operator syntax is:

*A* **&&** *B*

where *A* and *B* are the two values being evaluated.

Note that Quark uses 1/0 for true/false and the && operator is not supported for integers.   See `linkIssue24`_ for more information. 

.. _linkIssue24: https://github.com/datawire/quark/issues/24

[[JMK Unless I'm missing something, this means && isn't supported at all right now - should I just say that]]

.. _ComplementOperator:

Bitwise Complement
~~~~~~~~~~~~~~~~~~
The Bitwise Complement operator is a unary operator that evaluates switches the bits of the supplied value.

Syntax
++++++

The Bitwise Complement operator syntax is:

**~** *A*

where *A* is the value to switch.

The Bitwise Complement operator is only partially supported at the moment. See `linkIssue34`_ for more information.

.. _linkIssue34: https://github.com/datawire/quark/issues/34

.. _DivideOperator:

Divide
~~~~~~

The Divide operator is a binary operator that divides the value on the right hand side (the denominator) into the value on the left hand side (the numerator).

Syntax
++++++

The Divide operator syntax is:

*A* **/** *B*

where *A* is any numerical value and *B* is any non-zero numerical value.

.. EqualsOperator:

Equals
~~~~~~
The Equals operator is a binary operator that sets the value on the left hand side to the value on the right hand side.

Syntax
++++++

The Equals operator syntax is:

*A* **=** *B*

where *A* is the value being set and *B* is the new value it is assigned.


.. _EquivalentOperator:

Equivalent
~~~~~~~~~~
The Equivalent operator is a binary operator that evaluates to true if the value on the left side is equivalent to the value on the right hand side and evaluates to false if they are not equivalent.

Syntax
++++++

The Equivalent operator syntax is:

*A* **==** *B*

where *A* and *B* are the values being evaluated for equivalence.

.. _GreaterThanOperator:

Greater Than
~~~~~~~~~~~~

The Greater Than operator is a binary operator that evaluates to true if the value on the left side is greater than the value on the right side. It evaluates to false if the value on the right side is greater than the value on the left side or if the two values are equal.

Syntax
++++++

The Greater Than operator syntax is:

*A* **>** *B*

where *A* and *B* are both numerical values.

.. _GreaterThanOrEqualOperator:

Greater Than or Equal
~~~~~~~~~~~~~~~~~~~~~
The Greater Than or Equal operator is a binary operator that evaluates to true if the value on the left side is greater than the value on the right side or if the two values are equal. It evaluates to false if the value on the right side is greater than the value on the left side.

Syntax
++++++

The Greater Than or Equal operator syntax is:

*A* **>=** *B*

where *A* and *B* are both numerical values.


.. _LessThanOperator:

Less Than
~~~~~~~~~

The Less Than operator is a binary operator that evaluates to true if the value on the left side is less than the value on the right side. It evaluates to false if the value on the right side is less than the value on the left side or if the two values are equal.

Syntax
++++++

The Less Than operator syntax is:

*A* **<** *B*

where *A* and *B* are both numerical values.


.. _LessThanOrEqualOperator:

Less Than or Equal
~~~~~~~~~~~~~~~~~~
The Less Than or Equal operator is a binary operator that evaluates to true if the value on the left side is less than the value on the right side or if the two values are the equal. It evaluates to false if the value on the right side is less than the value on the left side.

Syntax
++++++

The Less Than or Equal operator syntax is:

*A* **<=** *B*

where *A* and *B* are both numerical values.

.. _ModuloOperator:

Modulo
~~~~~~
The Modulo operator is a binary operator that evaluates to the remainder when the value on the right hand side is divided into the value on the left hand side.

Syntax
++++++

The Modulo operator syntax is:

*A* **%** *B*

where *A* and *B* are both integers.

.. _MultiplyOperator:

Multiply
~~~~~~~~
The Multiply operator is a binary operator that multiplies the value on the left of the operator and the value on the right of the operator together.

Syntax
++++++

The Multiply operator syntax is:

*A* **\*** *B*

where *A* and *B* are the two numbers being multiplied together.


.. _NegateOperator:

Negate
~~~~~~
The Negate operator is a unary operator that switches the sign of a signed number.

Syntax
++++++

The Negate operator syntax is:

**-** *A*

where *A* is a number.

.. _NotOperator:

Not
~~~
The Not operator is a unary operator that inverts the truthfulness of an expression. If the expression evaluates to true on its own then it will evaluate to false when the Not operator is applied and vice versa.

Syntax
++++++

The Not operator syntax is:

**!** *expression*

where *expression* is the expression being inverted.

Note that Quark uses 1/0 for true/false and the ! operator is not supported for integers.   See `linkIssue24`_ for more information. 

.. _linkIssue24: https://github.com/datawire/quark/issues/24

[[JMK Should I just say it's not currently supported? Clearly there is no case where ! will work given the above and that ! only operates on true/false]]

.. _NotEquivalentOperator:

Not Equivalent
~~~~~~~~~~~~~~
The Not Equivalent operator is a binary operator that evaluates to true if the value on the left side of the operator is not equivalent to the value on the right side of the operator and evaluates to false if the two values are equivalent.

Syntax
++++++

The Not Equivalent operator syntax is:

* expression1* **!=** *expression2*

where *expression1* and *expression2* are the expressions being compared.

.. _linkIssue24: https://github.com/datawire/quark/issues/24

.. _OrOperator:

Or
~~

The Or operator is a binary operator that evaluates to true if either or both of the values on the left side of the operator and the right side of the operator evaluate to true. The Or operator evaluates to false only if both of these values evaluate to false.

Syntax
++++++

The Or operator syntax is:

*A* **||** *B*

where *A* and *B* are the two values being evaluated.

Note that Quark uses 1/0 for true/false and the && operator is not supported for integers.   See `linkIssue24`_ for more information. 

.. _linkIssue24: https://github.com/datawire/quark/issues/24

[[JMK Unless I'm missing something, this means || isn't supported at all right now - should I just say that?]]

.. _SubtractOperator:

Subtract
~~~~~~~~
The Subtract operator is a binary operator that subtracts the value on the right hand side of the operator from the value on the left hand side of the operator.

Syntax
++++++

The Subtract operator syntax is:

*A* **-** *B*

where *A* and *B* are numerical values.