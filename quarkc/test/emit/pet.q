quark *;
namespace pets {

    class Pet {
        void greet();
    }

    class Cat extends Pet {
        void greet() {
	    print("meow!");
	}
    }

    class Dog extends Pet {
       void greet() {
           print("woof!");
       }
    }

}

void main(List<String> args) {
    pets.Pet evil = new pets.Cat();
    pets.Pet good = new pets.Dog();

    evil.greet();
    good.greet();
}
