quark *;

void main(List<String> args) {
   long k = 1024L;
   long g = k * k * k;
   long t = k * k * k * k;

   // long iXg = 4 * g;   // xfail:java this coerces g to int because int.__add__(int_)
   long gXi = g * 4;
   long lXg = 4L * g;  // xfail:java this coerces g to int because quark thinks 4L is int
   long gXl = g * 4L;

   // print("4  * "+g.toString()+"L  = " + iXg.toString());
   print(""+g.toString()+"L  * 4  = " + gXi.toString());
   print("4L * "+g.toString()+"L  = " + lXg.toString());
   print(""+g.toString()+"L  * 4L = " + gXl.toString());

   // long iXt = 4 * t;
   long tXi = t * 4;
   long lXt = 4L * t; 
   long tXl = t * 4L;

   // print("4  * "+t.toString()+"L  = " + iXt.toString());
   print(""+t.toString()+"L  * 4  = " + tXi.toString());
   print("4L * "+t.toString()+"L  = " + lXt.toString());
   print(""+t.toString()+"L  * 4L = " + tXl.toString());
}
