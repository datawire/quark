##Language Elements

add stuff here

###Keywords

Keywords are reserved words that have a specific meaning within Quark. They cannot be used as names of user-generated content (packages, classes, functions, etc).

Quark defines the following keywords:

* [class](#class)
* [else](#else)
* [extends](#extends)
* [if](#if) 
* [interface](#interface) 
* [macro](#macro) 
* [new](#new)
* [null](#null)
* [package](#package) 
* [primitive](#primitive)
* [return](#return) 
* [while](#while)

<a name="class"/>
####class keyword

The class keyword is used to define a data structure and set of methods that together encapsulate the allowed behaviors of a specific type of object.

#####Syntax

__class__ *className* __{__
*definition*
__}__

where className is a unique name within the scope of the package (if one is defined) or the Quark file (if one is not defined).

[[JMK is this true? need to explore scope of things a bit more]]

<a name="else"/>
####else keyword

The else keyword is used to indicate the alternate code to run when the condition of the related if statement is false.

#####Syntax

__else {__
*executeIfConditionFalse*
__}__

where *executeIfConditionFalse* is run if *condition* evaluates to false.

However, else is subordinate to if and cannot be used separately. The full syntax for the combination is:

__if (__*condition*__) {__
*executeIfConditionTrue*
__}__
__else {__
*executeIfConditionFalse*
__}__

where *condition* is the code being evaluated, *executeIfConditionTrue* is run if *condition* evaluates to true, and *executeIfConditionFalse* is run if *condition* evaluates to false.

