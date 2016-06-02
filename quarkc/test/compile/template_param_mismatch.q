class X<A,B,C> {}
class NeedMore extends X<String,int> {}
class TooMuch extends X<String, List<int>, Map<bool, float>, byte> {}
class TooMuchTemplate<A,B,C,D> extends X<A, B, C, D> {}
class NeedMoreTemplate<A,B> extends X<A, B> {}
void foo() {
    new List<String, int>();
    new Map<String>();
    new Map<List<String, int>>();
    new Map<String,int,List<String>>();
    new Map<Map<String, int>>();
    new Map<void,String>();
    new X<void, void, void, void, void, void>();
    new X<void>();
}
