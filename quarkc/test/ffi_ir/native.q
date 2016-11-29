void printany(Any o);
int pow(int a, int b);

void printany(Any o) for java {
    System.out.println($o);
}
void printany(Any o) for python
import "sys"
{
    sys.stdout.write("%s\n" % o)
}
void printany(Any o) for ruby {
    puts(o)
}
void printany(Any o) for go
import "fmt"
{
    fmt.Println(o)
}
void printany(Any o) for javascript {
    console.log(o)
}

int pow(int a, int b) for java {
    return (int) Math.pow(a, b);
}
int pow(int a, int b) for javascript {
    return Math.pow(a, b);
}
int pow(int a, int b) for python {
    return a**b
}
int pow(int a, int b) for ruby {
    return a**b
}
int pow(int a, int b) for go
import "math"
{
    return int(math.Pow(float64(a), float64(b)))
}

void testprintany() {
    printany(unsafe("yay, it works!!!"));
    assertEqual(1, 1);
}

void testpow() {
    assertEqual(8, pow(2, 3));
    printany(unsafe("the result is: " + unsafe(pow(2, 3)).asString()));
}

primitive imaginary
for java {int}
for go {int}
for python {int}
for ruby {Integer}
for javascript {}
{

    imaginary(int n);

    bool __eq__(imaginary o);

    bool __ne__(imaginary o);

    imaginary __add__(imaginary o);

}

imaginary imaginary___init__(int n);

imaginary imaginary___init__(int n) for go {
    return n;
}
imaginary imaginary___init__(int n) for ruby {
    return n
}
imaginary imaginary___init__(int n) for python {
    return n
}
imaginary imaginary___init__(int n) for java {
    return n;
}
imaginary imaginary___init__(int n) for javascript {
    return n
}

void testimaginary() {
    imaginary x = new imaginary(3);
    assertEqual(1 + 2, x);
}

primitive List<T>
for java import "java.util.List" {List<$T_boxed>}
for go {*[]$T}
{

    List<T> __init__();

    List<T> __init__() for go {
        var arr []$T = make([]$T,0,10)
	return &arr
    }

    List<T> __init__() for java {
        return new java.util.ArrayList<$T_boxed>();
    }

    List<T> __init__() for ruby {
        return []
    }

    List<T> __init__() for python {
        return []
    }

    List<T> __init__() for javascript {
        return []
    }

    void append(T item);

    void append(T item) for go {
        *$self = append(*$self, $item)
    }

    void append(T item) for java {
        $self.add($item);
    }

    void append(T item) for ruby {
        $self.push($item)
    }

    void append(T item) for python {
        $self.append($item)
    }

    void append(T item) for javascript {
        $self.push($item)
    }

    T __get__(int index);

    T __get__(int index) for go {
        return (*$self)[index]
    }

    T __get__(int index) for java {
        return $self.get(index);
    }

    void __get__(int index) for ruby {
        return $self[$index]
    }

    void __get__(int index) for python {
        return $self[$index]
    }

    void __get__(int index) for javascript {
        return $self[$index]
    }

    int size();

    int size() for go {
        return len(*$self)
    }

    int size() for java {
        return $self.size();
    }

    int size() for ruby {
        return $self.size()
    }

    int size() for python {
        return len($self)
    }

    int size() for javascript {
        return $self.length
    }
}

void testlist() {
    List<int> li = [];
    List<String> ls = [];
    assertEqual(0, li.size());
    assertEqual(0, ls.size());
    li.append(3);
    ls.append("pi");
    assertEqual(1, li.size());
    assertEqual(1, ls.size());
    assertEqual(3, li[0]);
    assertEqual("pi", ls[0]);
    printany(unsafe("--"));
    printany(unsafe(ls[0]));
    printany(unsafe("--"));
    printany(unsafe(li[0]));
}

class Foo {}

void testlistfoo() {
    List<Foo> foos = [new Foo()];
    assertEqual(1, foos.size());
}
