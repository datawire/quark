from quark_runtime import *

import pkg


def main():
    box = pkg.StringBox(u"asdf");
    _println((box).contents);
    foo = pkg.StringFoo();
    _println((foo).foo());


if __name__ == "__main__":
    main()
