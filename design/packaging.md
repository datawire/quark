## Packaging

### Issues:

 - Mapping from quark files/packages to backend namespace constructs
   is currently poorly defined, e.g. builtin does not go to a stable
   namespace so any constructs defined within cannot be used from
   outside of quark.

 - Further, this is difficult to fix because the "global" metadata
   produced by the compiler is specific to a given distro/compilation
   unit.

 - The quark "standard library" needs to be able to grow beyond what
   is manually included in builtin.q, e.g. for ardana we need to pull
   in functionality from hub.q.

### Solutions:

 - We need to precisely define what constitutes a distributable unit
   and define an explicit mechanism for specifying dependencies
   between these distributable units.

 - By defining an explicit external dependency mechanism that
   references other quark files by URL, we have allowed for a single
   top level quark file to define a distribution unit that can be
   mapped into backend artifacts with proper dependencies.


### Packaging Model:

package foo 1.2.3; <--- package statement, marks a quark file as an entrypoint and a distribution/compilation unit

use bar;  <--- use statement, declares a dependency on another distribution/compilation unit

namespace blah; <--- sets the default namespace for a file, if absent the namespace defaults to the package name

namespace bleh {} <--- sets the namespace for constructs within the braces, this is a top level namespace

namespace .blah {} <--- sets the namespace for the constructs within, but relative to the file's namespace

namespace foo.bar.baz {} <--- shorthand for nested namespace

namespace foo { <--- longhand for nested namespace
   namespace bar {
       namespace baz {
          ...;
       }
   }
}

include url-or-path; <--- lexical inclusion

include url-or-path.java; <--- include for java backend
include url-or-path.py; <--- include for py backend

import foo.*; <--- import all names from given namespace
import foo as bar; <--- alias a namespace
import foo.Bar as Baz; <--- alias a name

$java {
  java statement
}

$py {
  python statement
}

$ruby {
  ruby statement
}

$java(java expression)

$py(python expression)


Distribution Unit == Compilation Unit == file/url-that-is-passed-to-compiler == later maybe replaced with construct in entry-point file that includes name, version, and possibly allows for customization of how name is mapped to backend package.

Namespace is independent of distribution unit.

A single distribution unit unit may bring with it many namespaces.


use statement specifies dependencies between distribution units

include statement operates as textual include

Import/alias statement operates on namespaces.

include mechanism also operates on native files

how do included files get pulled into namespace? -- maybe not at all, include foo.py and then native statement to import foo
need native statement construct





```
entry.q:
  use http://example.org/foo.q;
  use foo/bar/baz.q;
  ...
  include qux.q;
  ...
  p1.p2.p3.Bar;

  import p1.p2.p3.Bar as Bar;
  import p1.p2.p3.*;
```

```
use --> inter-project dependency, not an import
  for python install_requires or requirements.txt
  for js this means depencey in package.json
  for java this means dependency in pom.xml

include --> intra-project dependency, i.e. like catting the files together

distribution package vs namespace package

pip install foo --> distribution package
import foo --> namespace package

build A.q --> B.2

   A.whl --> B.whl

quark install A.q produces A.whl --> B.whl
  B.q           is correct whl intalled? if no build and install
  builtin.q
  directory.q

quark install A.q

pip install slack --> slack and datawire-quark-core

we replace builtin with these two implicit statements at the start of every .q file:
  use http://github.blah/master/datawire-quark-core.q;
  import datawire.*;

hello service

hello.q --> hub.q;
goodbye.q --> hub.q;

hub.q has a singleton routing table;

quark freeze hello.q goodbye.q --> one giant static thing;

1. simplify our release process
2. be able to actually use quark to spec out the full runtime API

use "users.q";
//  -- or --
use "http://users.blah.com/v1/users.q";
//  -- or --
use "http://users.blah.com/users.q";

include "util.q"; // the same as use except "statically links" util.q
                  // into the current distribution unit

// With this statement as a pure extension of the current quark model,
// the names made available by an include statement have no *enforced*
// relationship with the argument passed to use.

// This makes it difficult to figure out where stuff is defined from
// reading its usage.

// We could make file name == top level package. File names would
// become important, and we would address the above issue. With just
// this change, builtin becomes magic or we need a way to do from blah
// import *, e.g.:

from "builtin.q" include *

// We could decouple these things, e.g.:

use "builtin.q";
from builtin import *;


foo/user.q:
include "user/one.q";
include "user/two.q";

namespace user {
  from one export *;
  from two export *;
}

foo/user/one.q:
namespace user.one {
}

foo/user/two.q:
namespace user.two {
}

//===============

user.q:
include "user/one.q";
include "user/two.q";
namespace user {

}

one.q:
namespace user {
    // stuff
}

two.q:
namespace user {
    // other stuff
}



// Magic path becomes a concern here. We don't want to have classpath
// hell.

package hello {

    class Request {...}
    class Response {...}

    interface Hello extends Service {
        @delegate(rpc)
        Response hello(Request request);

        @delegate(rpc)
        users.User introduction(); // I can do this because User is defined in users.q
    }

    class HelloClient extends Client, Hello  {}
    class HelloServer extends Server<Hello> {}

}

// What happens if I am a user that has both a direct dependency on
// users and an indirect dependency on users via the hello service?
//  - Do I need to compile all my service dependencies in one go?
//  - Can we be smart enough to produce backend packages with the
//    right set of interdependencies?
//  - What do users actually want here?

// How do we tell where the boundaries between distriution units are?
// We want the hello.q distribution unit to depend on the users.q
// distribution unit, however hello.q might include/import/use some
// sort of util.q which is in a separate file, but does not want to be
// independently distributed. In this example we want to "refer to"
// users, but "contain" util.


pip install datawire-quark                         # Wow, this quark thing is super easy to install!

-- pick your language --

quark package --python https://hello.datawire.io/hello.q
pip install hello/py/dist/hello*.whl --user
python
>>> import hello
>>> hello.Client().hello("foo")                    # Wow, its super easy to access the hello service with a real API (as opposed to reading tons of english)
"Hello foo, greetings from datawire!"

quark package --python https://slack.datawire.io/slack.q
pip install slack/py/dist/slack*.whl --user
python
>>> import slack
>>> client = slack.SlackClient("*api-token*")
>>> client.post("#lobby", "Hello world!")          # Wow, I just accessed the slack service without reading through pages of documentation to understand their calling convention.
```
