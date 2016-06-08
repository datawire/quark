quark *;
void test() {
    if (x) { y(); }
    if(x){y();}
    if (x) { y(); } else { z(); }
    if(x){y();}else{z();}
}
