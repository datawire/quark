void main(List<String> args) {
    Map<String,Object> map = new Map<String,Object>();
    map["pi"] = 3.14159;

    // We have to limit to one value because the underlying maps
    // produce different order of parameters.

    //map["even"] = 2;
    //map["odd"] = "snowball";
    //map["list"] = [1, 2, 3];
    print(map.urlencode());
}
