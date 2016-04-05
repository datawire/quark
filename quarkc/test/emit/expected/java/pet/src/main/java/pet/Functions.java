package pet;

public class Functions {

    static pet_md.Root root = new pet_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        pets.Pet evil = new pets.Cat();
        pets.Pet good = new pets.Dog();
        (evil).greet();
        (good).greet();
    }
}
