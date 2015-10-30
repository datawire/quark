from quark_runtime import *


def main():
    map = _Map();
    (map)[u"pi"] = (3.14159);
    _println(_urlencode(map));


if __name__ == "__main__":
    main()
