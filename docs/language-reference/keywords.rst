:tocdepth: 2

Keywords
--------

Keywords are reserved words that have a specific meaning within Quark. They cannot be used as names of user-generated content (packages, classes, functions, etc).

Quark defines the following keywords:

.. toctree::
   :maxdepth: 1

.. _breakKeyword:

break
~~~~~

Documentation Coming Soon

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

.. _continueKeyword:

continue
~~~~~~~~

Documentation Coming Soon

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

The extends keyword indicates a parent class of the class currently being defined or an interface used by the class.

Syntax
++++++

The extends keyword syntax is:

**class** *className* **extends** *superClassName* **{**
*additionalClassDefinition*
**}**

where *className* is a unique name within the scope of the package (if one is defined) or the set of Quark files being compiled together (if no package is defined), *superClassName* is the unique name of the chosen superclass, and *definition* is the list of properties and methods within the class and their definitions.

or

**class** *className* **extends** *interfaces* **{**
*additionalClassDefinition*
**}**

where *className* is a unique name within the scope of the package (if one is defined) or the set of Quark files being compiled together (if no package is defined), *interfaces* is a comma-separated list of interfaces used by this class, and *additionalClassDefinition* is the list of properties and methods within the class and their definitions.

or

**class** *className* **extends** *superClassName* **,** *interfaces* **{**
*additionalClassDefinition*
**}**

where *className* is a unique name within the scope of the package (if one is defined) or the set of Quark files being compiled together (if no package is defined), *superClassName* is the unique name of the chosen superclass, *interfaces* is a comma-separated list of interfaces used by this class, and *additionalClassDefinition* is the list of properties and methods within the class and their definitions.

.. _falseKeyword:

false
~~~~~

The false keyword indicates that a particular condition is not true. It is one of the two allowed states of a boolean.

Syntax
++++++

The false keyword does not have specific syntax, per se. Rather it can be used as a value of any boolean variable, boolean property, or any conditional clause of code.

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

See the :ref:`else keyword syntax section <ifElseSyntax>` for the syntax of if-else statements.

.. _interfaceKeyword:

interface
~~~~~~~~~

The interface keyword defines an interface containing template information for classes. Interfaces can contain default methods (which can be redefined in classes using the interface) and method signatures (to be defined in classes using the interface).

Syntax
++++++

The interface keyword syntax is:

**interface** *interfaceName* {
*interfaceDefinition*
}

where *interfaceName* is the name of the interface, used to include it in class definitions, and *interfaceDefinition* is the content of the interface.

.. _macroKeyword:

macro
~~~~~

The macro keyword is used to define a top-level function available to use within any Quark program compiled at the same time as the macro. Macros are defined at the top level of the file outside of any package, class, or main definitions. Macros are evaluated at runtime and may have either a single definition used for all target languages or be defined separately for each language supported by Quark.

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
The primitive keyword is used to define basic data types in Quark. At the current time it is reserved for use by the system.

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

.. _selfKeyword:

self
~~~~

The self keyword is used to reference the current object inside method definitions particularly the value of a property of the current object.

Syntax
++++++

The self keyword syntax is:

**self.** *propertyName*

where *propertyName* is the name of a property defined in the current class and the entire expression evaluates to the value stored in the current object's *propertyName* property.

.. _staticKeyword:

static
~~~~~~

Documentation Coming Soon

.. _superKeyword:

super
~~~~~

The super keyword is used to indicate that a referenced method is defined in the current class's superclass.

Note: A variant of the super keyword, super(), is used to reference the constructor of the superclass inside the subclass's constructor. Any parameters defined in the superclass constructor must be supplied when super() is called (either as variables or as default values).

Syntax
++++++

The super keyword syntax is:

**super.** *method*

where *method* is the method being called including the trailing parentheses and any necessary parameters.

For instance, the following method is defined in class A:

``void enrollInClass(String classId, String studentId){...}``

Class B is a subclass of class A. A method inside class B calls the enrollInClass() method as follows:

``super.enrollInClass("Phys123", "84-42956");``


.. _trueKeyword:

true
~~~~

The true keyword indicates that a particular condition is true. It is one of the two allowed states of a boolean.

Syntax
++++++

The true keyword does not have specific syntax, per se. Rather it can be used as a value of any boolean variable, boolean property, or any conditional clause of code.

.. _useKeyword:

use
~~~

Documentation Coming Soon

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
