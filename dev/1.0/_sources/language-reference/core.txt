Core Concepts
=============

{{{language}}} is a Turing-complete language designed primarily for facilitating microservice communication pathways although it is not limited to this function.

.. toctree::
   :maxdepth: 3

Language Structure
------------------

{{{language}}} uses many of the standard elements of object-oriented programming languages including namespaces, interfaces, classes, methods, properties, functions, variables, annotations, operators, and keywords. It includes inheritance, operator overloading, and method overriding capabilities.

{{{language}}} may be used to write libraries or applications. Applications must contain a single top-level main() function containing the executions structure for the application; this function may reference code from any defined class or package within the application.

Files
~~~~~

{{{language}}} code is stored in text files with a {{{file_extension}}} file extension. Unlike some languages, {{{language}}} is not tied to any specific file structure and code may be split among as many files as desired provided an entire library or application is compiled together. Namespaces may be defined across multiple files (within the same distribution unit) or in multiple locations across the same file and, if desired, an entire library or application could be defined in a single {{{file_extension}}} file. However, the set of files comprising an application may only have one main() function declaration.

{{{language}}} distribution units, known as packages, are declared using the :ref:`package keyword <packageKeyword>`, which tells the compiler the name of the distribution unit being defined in the file. If not specified, the default package name is the name of the source file without the {{{file_extension}}} extension.

The following table lists the terminology used by {{{language}}} and the supported target languages to describe distribution units, as above, and namespaces within code, as discussed next. Note that the terminology conflicts somewhat between languages.

==============  ======================  =====================
Language        Unit of distribution    Namespace within code
==============  ======================  =====================
{{{language}}}  package                 namespace
Java            artifact                package
Python          PyPI package/egg/wheel  package/module
Javascript      NPM package             object/closure/etc.
Ruby            gem                     module
==============  ======================  =====================

Namespaces
~~~~~~~~~~

Namespaces are defined using the :ref:`namespace keyword <namespaceKeyword>` and provide namespaces for class and function definitions. Namespaces cannot directly contain variables or runnable code; only classes, functions, and other namespaces are allowed. Namespaces are optional, but provide an easy mechanism for organizing code so that related elements can be grouped together. They also allow code to be referenced from anywhere within a library or application.

As mentioned above, namespaces can be nested. Classes and functions directly inside a top-level namespace must use nested namespace name when referencing classes or functions defined inside a nested namespace but the members of the nested namespace have direct access to classes and functions in the top-level namespace without needing to specify their namespace name.

Classes and functions defined outside of a namespace belong to the default namespace, which has the same name as the package (distribution unit) being defined. This namespace is logically identical to the explicitly-named namespace with the same name.

Classes
~~~~~~~

Classes are defined using the :ref:`class keyword <classKeyword>` and provide a template for a specific type of object. Classes can contain properties to store data and methods to provide actions that can be performed on that data. {{{language}}} classes cannot be nested and do not support static properties or methods.

Properties
++++++++++

Properties are typed variables meant to store a specific piece of data within an object. Properties are declared within the class definition and may be given default values. Properties defined within a specific class may be accessed and manipulated within the methods of that class.

Methods
+++++++

Methods typically define actions that can be taken on data within an object. Methods may require input parameters (which are typed) and may return a value (also typed). Methods are defined as follows:

*returnType* *methodName* **(** *parameters* **) {**
    *codeToExecute*

**}**

where *returnType* is the type of the return value (void if no value is returned), *methodName* is the name of the method, *parameters* is a comma-separated list of parameter type and parameter name pairs, and *codeToExecute* is the code executed by the method.

Methods can directly access any properties defined within the same class as well as methods defined in other classes using dot syntax references to those methods. {{{language}}} does not support static or class methods; all methods are invoked on a specific object.

self
++++

{{{language}}} uses self to reference the current object inside method definitions. In particular, the value of a property of the current object is referenced as self.propertyName.

Abstractness
++++++++++++

{{{language}}} does not support explicitly declaring abstract classes or methods using a keyword. Instead, just define method signatures without a corresponding body component. Doing so will automatically make both that method and the class containing it abstract. Trying to instantiate such a class directly will result in an error.

Note: {{{language}}} is not currently throwing an error in this case. See `linkIssue54`_ for more information.

.. _linkIssue54: https://github.com/datawire/{{{github_directory}}}/issues/54

Constructors
++++++++++++

Constructors are methods called when an object is instantiated. Every instantiable class has a default constructor with no parameters defined for it automatically, but additional constructors that accept initial values for properties defined within the class may be added to any class.

Functions
~~~~~~~~~

Functions typically define actions that can be taken outside of the context of a specific class. Functions may require input parameters (which are typed) and may return a value (also typed). Functions do not act on specific objects unless those objects are passed in as input parameters. Functions may belong to a namespace or be defined as part of the default unnamed namespace. They are defined as follows:

*returnType* *functionName* **(** *parameters* **) {**
    *codeToExecute*

**}**

where *returnType* is the type of the return value (void if no value is returned), *functionName* is the name of the function, *parameters* is a comma-separated list of parameter type and parameter name pairs, and *codeToExecute* is the code executed by the function.

Interfaces
~~~~~~~~~~

Interfaces define a group of default methods and method signatures that can be used and defined in other classes. Interfaces cannot contain properties and may not be directly instantiated in any way. They are essentially template code ensuring that a library or application implements a common feature somewhat consistently throughout and making maintenance of common code easier.

Classes that use an interface must provide a body definition for each method signature (without changing the signature) or the class will automatically include the method signature and become abstract.

[[JMK check this last statement ETA issue 55 preventing testing]]

{{{language}}} does not contain a default keyword; rather default methods are defined by providing a functional method body inside the interface instead of just a method signature. Classes that use an interface may use the default method as is or redefine it (without changing the signature). If a class using the interface declares the method signature of a default method a without redefining the body contents, the method and class becomes abstract.

[[JMK check this last statement ETA issue 55 preventing testing]]

.. To be added later

  Scoping
  ~~~~~~~

Constants
~~~~~~~~~

{{{language}}} does not currently have a mechanism for declaring global constants.


Naming and Other Conventions
----------------------------
{{{language}}} names are case sensitive and may contain only alphanumeric characters or underscores (_). Names of elements must be unique within the scope of a namespace, library, or application (in the case of a library or application, fully-qualified names are considered so namespace1.name1 and namespace2.name1 are perfectly acceptable).

Namespace names are not tied to the location of files and are not expected to match directory structures. There are no global rules for naming conventions; if generating Java code this may result in unconventional package names and file locations within the resulting Java files.

By convention, {{{language}}} expects the following casing rules:

* Package names are lower case
* Namespace names are lower case
* Class names are capitalized
* variable, property, method, and function names are camel case
* annotation names are lower case

Inheritance
-----------

{{{language}}} supports single inheritance of classes using the :ref:`extends keyword <extendsKeyword>`. Multiple inheritance is not supported. However, all types within {{{language}}} automatically inherit from the Object type and contain all properties and methods defined therein.

Properties are inherited but their definition may not be overridden. In particular, you cannot add or change the default value directly. Properties defined in the superclass may be referenced directly using self.propertyName within methods of the subclass.

Methods are inherited and may be overridden in the subclass. The superclass constructor is called automatically for all subclasses. A subclass may define its own constructor with fewer input parameters than its superclass so long as default values are provided for all of the other parameters in a super() call at the top of the constructor. If the superclass uses a constructor with no parameters defined then the subclass may define its own constructor with however many parameters are appropriate.

Overloading
-----------

{{{language}}} does not currently support method overloading. {{{language}}} supports operator overloading by defining classes that provide alternate code for the functions underlying the operator execution. When the related operators are used on objects of that type, this code is executed.

Object Instantiation
--------------------
{{{language}}} objects must be explicitly instantiated in all cases. This is done using the :ref:`new keyword <newKeyword>`.

Typing
------

{{{language}}} is a strongly, statically typed language with support for type inheritance and generics. {{{language}}} uses primitives as the base data types; primitives are defined by the system and cannot be modified by users.

Comments
--------

Single line comments in {{{language}}} can be specified using //. Multiple line comments can be specified using /\* *comment* \*/.

White Space
-----------

In general, {{{language}}} requires at least one white space character between language elements. It typically ignores any additional whitespace, allowing for variances in indentation conventions and extra lines within code.

White space may be supplied between operators and the elements they act upon (either to their left or to their right) but it is not required.

End of Statement
----------------

Executable statements in {{{language}}} must end with a semi-colon (;). Using a modern code presentation style, this typically means that each line of {{{language}}} code ends with a semi-colon excepting the following:

* Keywords followed by an opening curly brace ({)
* The corresponding closing curly brace (})
* Annotations (which typically end with parentheses).
* Comments
