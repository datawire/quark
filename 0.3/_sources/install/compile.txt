Compilation
===========

The Quark compiler can perform four distinct functions: generating code in one or more target languages, compiling and running the generated code, generating HTML documentation based on annotations in the code, and generating distribution packages for one or more target languages. These are ordered tasks; each requires that the previous task was performed as a prerequisite. To make this easier to manage, the command to run each task automatically runs the previous tasks in the chain before running the requested task.

Syntax
------

The general syntax for the Quark compiler is:

**quark** *command* *options* *files*

where *command* indicates which of the supported actions Quark should run, *options* is a space-separated list of options (which may be omitted if the default options are acceptable), and *files* is a space-separated list of files to perform the specified action on.

Note: The command and the options may appear in any order (the command may even be supplied between different options) but the files must be listed at the end after both the command and all of the options.

Commands
--------

Quark supports four commands, each corresponding to one of the supported actions. They are:

* compile
* build
* doc
* package

Compile
~~~~~~~

The Quark compile command is used to generate code in one or more target languages. In addition to code, it also creates some supporting files including a Quark runtime file, documentation source files (if needed for the target languages), and package definition files (if needed for the target languages).

Quark supports two compilation modes: generating code for all target languages (used by default) or generating code for one or more specific target languages.

Build
~~~~~

The Quark build command generates code in one or more target languages (runs the compile command) then compiles and runs that code.

Doc
~~~

The Quark doc command generates code in one or more target languages, compiles and runs that code (runs the build command), then generates HTML versions of the documentation based on the source files and comments generated during the compilation process.

Separate documentation is generated for each target language as follows:

========== ======================= =====================================
Language   Source Format           Output Location                      
========== ======================= =====================================
Java       Javadoc                 *base*/target/site/apidocs/index.html
Javascript README.md               *base*/README.html                   
Python     restructured text (rST) *base*/build/sphinx/html/index.html  
========== ======================= =====================================

where *base* is the code output directory for the relevant target language.

Note: The documentation generation process also copies README.md to the Javascript documentation output directory.

Package
~~~~~~~

The Quark package command generates code in one or more target languages, compiles and runs that code, generates HTML versions of the documentation (runs the doc command), then creates language-specific packages that can be distributed to client developers.

Separate packages are generated for each target language as follows:

========== ======================= ============================================
Language   Package Format          Output Location                             
========== ======================= ============================================
Java       Jar                     *base*/target/test-*version*.jar                
Javascript npm                     *base*/*package*.tgz                        
Python     pip                     *base*/dist/*package*-*version*-py2-none-any.whl  
========== ======================= ============================================

where *base* is the code output directory for the relevant target language, *package* is the name of the first package encountered within the supplied Quark code starting from the start of the first file in the list of files, and *version* is the value of the first @version annotation encountered within the supplied Quark code starting from the start of the first file in the list of files. If no @version annotation is encountered, the default 0.0.1 version number is used.

Command Options
---------------

Quark supports a variety of options that provide additional instructions to the compiler while it runs commands. These options all act upon the compile step to control how target code is generated. However, because the execution of all of the commands starts with compilation, the options are valid with any Quark command.

Quark includes a minimal set of defaults that will generate and output code in a subdirectory of your base quark directory (given the name of the first file in the list of files) and put generated Java, Javascript, and Python code in java, js, and py subdirectories. If this is the desired behavior, no options are needed.

The available options come in sets that either act upon all languages or act upon compilation in a specific language. You may mix and match these options; it is perfectly valid to direct the compiler to generate all languages and use the defaults for some languages and explicit options for others.

Options Applying to All Languages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following options control generating code for all languages:

==================== ============================================================= ===============================================================
Command              Description                                                   Default Behavior                                                       
==================== ============================================================= ===============================================================
--all                Indicates code should be generated in all supported languages Used if no language-specific options are supplied                      
-o *directory*       Indicates the base directory for generated files              Name of the first file in the list of files                            
--output *directory* Indicates the base directory for generated files              Name of the first file in the list of files                            
--in-place           Outputs everything to the current directory                   Use the current directory for all output. Overrides all other settings.
==================== ============================================================= ===============================================================

Note: Directory names based on file names do not include .q

Java Options
~~~~~~~~~~~~

The following options control generating code in Java:

========== ==================================== ===========================================
Command    Description                          Default Behavior                                
========== ==================================== ===========================================
--java     generate Java code and related files Java code is generated        
--java-out location for generated code.         java subdirectory under directory with name of the first file in the list of files
========== ==================================== ===========================================

Note: Directory names based on file names do not include .q

Javascript Options
~~~~~~~~~~~~~~~~~~

The following options control generating code in Javascript:

================ ========================================== ===========================================
Command          Description                                Default Behavior                              
================ ========================================== ===========================================
--javascript     generate Javascript code and related files Javascript code is generated        
--javascript-out location for generated code.               js subdirectory under directory with name of the first file in the list of files
================ ========================================== ===========================================

Note: Directory names based on file names do not include .q

Python Options
~~~~~~~~~~~~~~

The following options control generating code in Python:

================ ====================================== ===========================================
Command          Description                            Default Behavior                                
================ ====================================== ===========================================
--python         generate Python code and related files Python code is generated        
--python-out     location for generated code.           py subdirectory under directory with name of the first file in the list of files
================ ====================================== ===========================================

Note: Directory names based on file names do not include .q

Other Options
-------------

Quark supports two top-level options that are independent of compiler commands: help and version

Help
~~~~

The help option prints a compiler options cheat sheet to stdout.

Syntax
++++++

**quark --help**

or

**quark -H**

or

**quark -h**

Version
~~~~~~~

The version option prints the current version of Quark to stdout.

Syntax
++++++

**quark --version**
