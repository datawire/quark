namespace fancyprim {
    @mapping($java{java.util.LinkedList} $py{_List} $js{Array})
    primitive LinkedList<T> {
	macro LinkedList(List<T> elements) $java{new java.util.LinkedList($elements)}
	                                   $py{$elements}
				           $js{$elements};
    }
}

void main() {
    fancyprim.LinkedList<int> s = new fancyprim.LinkedList<int>([1, 2, 3]);
    print(s);
}
