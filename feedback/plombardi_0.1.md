# Phil Lombardi's Initial Feedback

## Introduction

Good introduction. Wouldn't mind seeing a simple little example here just to give me a taste of what Quark looks like. Maybe a simple Hello World? It's not really immediately clear how I'd use this thing at all or what I would really want to use it for. The example probably needs to show both the quark code and also a basic service implementation in say Python so that I can mentally map the two in my head and get a better picture of what's going on.

## Core Concepts

"Quark is a Turing-complete..." - I'm not really convinced telling me this is useful. I'd be more interested in the paradigm of the language, for example, "Quark is an imperative programming language for codifying the interface and protocol between services and clients".

## Language structure

1. I'd really like each construct to be shown with an example of the construct in use, for example, don't just describe a Package to me, but show me how one is defined. Same for Class etc. Take a look at some of these other programming languages for how they introduce language concepts:
  - https://kotlinlang.org/docs/reference/
  - http://ceylon-lang.org/documentation/1.2/spec/html/
  - http://www.groovy-lang.org/structure.html

2. I'd really love an example of a "well-structured" quark project. That includes, how my directories should be laid out ideally, how I should setup and name things etc.
3. With certain constructs, for example packages I'd like to see how they map from Quark to another programming language... It's not clear how this would look in Java-land "Classes and functions defined outside of a package belong to a default, unnamed root package", because everything in Java must belong in a Class.
4. Instead of showing me the abstract concept of a method, show me an actual method.
5. Need to better explain why the language has *both* methods and functions. How do functions map in languages where functions **are not** first class citizens?

### Inheritance

Probably need a good example of why this feature is necessary or useful in Quark.

### Object Instantion

I think we should drop the `new` keyword which isn't really necessary and adds verbosity.

### Overloading

Ugh, why operator overloading...? This is one of the most obnoxious features in programming language history because people do stupid stuff with it all the time. This is one of the reasons Scala is a <insert bad word> mess. If I have to maintain three or four Quark services and they all use different semantics for different operators i'll be pretty annoyed.

### Typing

Should move the "strongly, statically typed language" thing 

### End of Statement

We should drop the semi-colon. Just a personal preference, but modern languages seem to be doing away with it and languages that aren't, for example, Java usually have an IDE that makes it so people don't remember to need to do it. Since we lack an IDE we're just opening ourselves up to people making syntax mistakes rather easily.

## Language Elements

1. While I think the idea of having documentation about each language element is useful in a way this is probably NOT the best way to learn how to write a language. I want to go from first principles (how do I do *something*) to increasingly more complex and detailed stuff, for example, "What are my basic control structures?", "How do I define a class?", "How do I extend a class?". This should be done with real world (or realish) examples.
2. It's really weird to order stuff alphabetically. I end up seeing "else" before I get to "if" which is just... weird.

## Documentation

1. Documentation format... We need way better styling... the documentation is hard to read because instruction and code look too similar. This would be a good place for syntax highlighting.

## Misc

1. Interface default method resolution rules...
  - What does Java do?
2. Why the different casing for types. For example, bool, int, and float vs List, String. I'm guessing this was done because it's like Java, but we should strive for language consistency rather than appealing to some obscure


# Other Thoughts and Comments

A class-based language for defining client-service communication is weird. I think it immediately feels too low-level as a language construct. Why are we not defining constructs in terms of Services, for example, a Service <identifier> { } construct where the top-level methods in the Service construct map to the service API somehow.