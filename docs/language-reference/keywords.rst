Keywords
--------

Keywords are reserved words that have a specific meaning within Quark. They cannot be used as names of user-generated content (packages, classes, functions, etc).

Quark defines the following keywords:

.. toctree::
  :maxdepth: 1

class
else
extends
if
interface
macro
new
null
package
primitive
return
while

.. _classKeyword:

class
~~~~~

The class keyword is used to define a data structure and set of methods that together encapsulate the allowed behaviors of a specific type of object.

Syntax
++++++

The class keyword syntax is:

**class** *className* **{**
*definition*
**}**

where *className* is a unique name within the scope of the package (if one is defined) or the set of Quark files being compiled together (if no package is defined) and *definition* is the list of properties and methods within the class and their definitions.

.. _elseKeyword:

else
~~~~

The else keyword is used to indicate the alternate code to run when the condition of the related :ref:`if statement <ifKeyword>` is false.

Syntax
++++++

The else keyword syntax is:

**else {**
*executeIfConditionFalse*
**}**

where *executeIfConditionFalse* is run if *condition* evaluates to false.

.. _ifElseSyntax:

However, else is subordinate to if and cannot be used separately. The full syntax for the combination is:

**if (** *condition* **) {**
*executeIfConditionTrue*
**}
else {**
*executeIfConditionFalse*
**}**

where *condition* is the code being evaluated, *executeIfConditionTrue* is run if *condition* evaluates to true, and *executeIfConditionFalse* is run if *condition* evaluates to false.

See the :ref:`if keyword syntax section <ifElseSyntax>` for more information about constructing conditional clauses.

.. _extendsKeyword:

extends
~~~~~~~

The extends keyword indicates a parent class of the class currently being defined.

Syntax
++++++

The extends keyword syntax is:

**class** *className* **extends** *superClassName* **{**
*additionalClassDefinition*
**}**

where *className* is a unique name within the scope of the package (if one is defined) or the set of Quark files being compiled together (if no package is defined), *superClassName* is the unique name of the chosen superclass, and *definition* is the list of properties and methods within the class and their definitions.

.. _ifKeyword:

if
~~

The if keyword is used to provide code to be run only if the supplied condition evaluates to true. It can be used in conjunction with the :ref:`else keyword <elseKeyword>` to provide alternate code paths when the condition evaluates to true and when it evaluates to false.


.. _ifSyntax:

Syntax
++++++

The if keyword syntax is:

**if (** *condition* **) {**
*executeIfConditionTrue*
**}**

where *condition* is the code being evaluated and *executeIfConditionTrue* is run if *condition* evaluates to true. 

Note that Quark uses 1/0 for true/false and each independent clause of the condition is treated like an integer. This currently places some limitations on the construction of conditionals. See `linkIssue24`_ for more information.

.. _linkIssue24: https://github.com/datawire/quark/issues/24

See the :ref:`else keyword syntax section <ifElseSyntax>` for the syntax of if-else statements.

.. _interfaceKeyword:

interface
~~~~~~~~~

[[JMK this isn't working at all like I expected - skipping for now]]

.. _macroKeyword:

macro
~~~~~

The macro keyword is used to define a top-level function available to use within any Quark program compiled at the same time as the macro. Macros are defined at the top level of the file outside of any package, class, or main definitions. After compilation they become part of the Quark runtime code generated along with your other generated code.

Syntax
++++++

The macro keyword syntax is:

**macro** *type* **(** *parameters* **) ${** *macroDefinition* **};**

where *type* is the expected type of the macro results, *parameters* is a comma-separated list of typed input values, and *macroDefinition* is the code to run when the macro is executed. This code may be general or it may be defined separately for each language. If separate definitions are required, the syntax is as follows:

**macro** *type* **(** *parameters* **) $java{** *javaMacroDefinition* **}**
                                        **$js{** *javascriptMacroDefinition* **}**
                                        **$py{** *pythonMacroDefinition* **}** 

The languages may be specified in any order. However, all supported languages must be defined individually if any need to be; any omitted languages will result in the macro resolving to null which could cause errors or result in unexpected behavior in that language. See `linkIssue27`_ for more information.

.. _linkIssue27: https://github.com/datawire/quark/issues/27

.. _newKeyword:

new
~~~

The new keyword is used to instantiate objects.

Syntax
++++++

The new keyword syntax is:

*className objectHandle* **= new** *classConstructor* **;**

where *className* is the name of the class of the new object, *objectHandle* is a variable pointing to the new object, and *classConstructor* is the constructor method used to create the new object including any relevant parameters.

.. _nullKeyword:

null
~~~~
The null keyword is used to explicitly indicate a value is undefined. It is not the same as a value that has never been set.

Syntax
++++++

The null keyword syntax is:

*variable* **= null;**

where *variable* is the handle to the value you want to set to null.

.. _packageKeyword:

package
~~~~~~~

The package keyword is used to indicate a namespace containing groups of similar or related classes. Packages are automatically available to any Quark files compiled at the same time as the file or files with the package definition. 

Syntax
++++++

The package keyword syntax is:

**package** *packageName* **{**
    *definition*
**}**

where *definition* is the content of the package and *packageName* is the name of the package. Package names are treated as unique within the scope of the Quark files being compiled together. If the same package name is used multiple times, the contents of each definition section are combined and treated as a single package. Quark packages cannot be the same as the name of the file they are defined within. See `linkIssue6`_ for more information.

.. _linkIssue6: https://github.com/datawire/quark/issues/6


.. _primitiveKeyword:

primitive
~~~~~~~~~
The primitive keyword is used to define basic data types in Quark.

[JMK Can users define new primitives and if so will they work/what can they do with them/how are they mapped to the languages - should I just say this is a reserved keyword?]]

.. _returnKeyword:

return
~~~~~~

The return keyword is used to indicate the return value of a function or method.

Syntax
++++++

The return keyword syntax is:

*functionType* *functionType* **(** *parameters* **) {**
    *code*
    **return** *valueOfTypeFunctionType*
**}**

where *functionType* is the type of the value returned by the function, *functionName* is the name of the function, *parameters* is a comma-separated list of parameters for the function, *code* is the code being run by the function, and *valueOfTypeFunctionType* is the value returned by the function. It must use the data type specified in the *functionType* declaration.

.. _whileKeyword:

while
~~~~~

The while keyword is used to provide code to be run repeatedly as long as the supplied condition continues to evaluate to true.

Syntax
++++++

The while keyword syntax is:

**while (** *condition* **) {**
*executeIfConditionTrue*
**}**

where *condition* is the code being evaluated and *executeIfConditionTrue* is run as long as *condition* evaluates to true. If the state of the condition is not changed in some way within this code block so it eventually evaluates to false the code will continue to execute in an infinite loop.

Note that Quark uses 1/0 for true/false and each independent clause of the condition is treated like an integer. This currently places some limitations on the construction of conditionals. See `linkIssue24`_ for more information.

.. _linkIssue24: https://github.com/datawire/quark/issues/24