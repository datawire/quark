package likes{

    class Color {
        List<String> favorites;
    } 
}

void main() {
    int i=0;
    String k="silver";
    likes.Color myColors=new likes.Color();
    myColors.favorites=new List<String>();
    myColors.favorites.add("red");
    myColors.favorites.add("green");
    myColors.favorites.add("blue");
    myColors.favorites.add("purple");

    while (i<myColors.favorites.size()) {         
        print(myColors.favorites.__get__(i));
        k="silver"+i.toString();
        myColors.favorites.__set__(i,k);
        i=i+1;
    }

    while (i>0) {         
        i=i-1;
        print(myColors.favorites.__get__(i));
    }
}