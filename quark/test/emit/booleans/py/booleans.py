from quark_runtime import *


def main():
    if (True):
        _println(u"Hi!");

    b = (1) > (0);
    if (b):
        _println(u"Hey!");

    c = False;
    if (not (c)):
        _println(u"Ho!");

    count = 0;
    while (True) :
        if ((count) > (3)):
            return

        count = (count) + (1)



if __name__ == "__main__":
    main()
