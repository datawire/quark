quark *;
namespace fancyprim {
    @mapping($java{java.util.LinkedList} $py{_List} $js{Array} $rb{DatawireQuarkCore::List})
    primitive LinkedList<T> {
	macro LinkedList(List<T> elements) $java{new java.util.LinkedList($elements)}
	                                   $py{$elements}
	                                   $rb{(DatawireQuarkCore::List.new $elements)}
				           $js{$elements};
    }
}

void main(List<String> args) {
    fancyprim.LinkedList<int> s = new fancyprim.LinkedList<int>([1, 2, 3]);
    print(s);
}
