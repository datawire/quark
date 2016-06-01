quark 0.6.100;
void test() {
    if (x) { y(); }
    if(x){y();}
    if (x) { y(); } else { z(); }
    if(x){y();}else{z();}
}
