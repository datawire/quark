primitive Object {
    macro int __eq__(Object other) $java{($self).equals($other)}
                                   $py{($self) == ($other)}
                                   $js{($self) === ($other)};
    macro int __ne__(Object other) $java{!(($self).equals($other))}
                                   $py{($self) != ($other)}
                                   $js{($self) !== ($other)};
}

primitive void {}

primitive number {
    macro number __neg__() ${-($self)};
    macro number __add__(number other) ${($self) + ($other)};
    macro number __sub__(number other) ${($self) - ($other)};
    macro number __mul__(number other) ${($self) * ($other)};
    macro number __div__(number other) ${($self) / ($other)};
    macro number __lt__(number other) ${($self) < ($other)};
    macro number __gt__(number other) ${($self) > ($other)};
}

primitive int extends number {
    macro int __neg__() ${-($self)};
    macro int __div__(int other) $java{~((~($self)) / ($other))}
                                 $py{($self) / ($other)}
                                 $js{Math.floor(($self) / ($other))};
    macro int __mod__(int other) $java{Math.floorMod(($self), ($other))}
                                 $py{($self) % ($other)}
                                 $js{_qrt.modulo(($self), ($other))};
    macro String toString() $java{Integer.toString($self)}
                            $py{str($self)}
                            $js{_qrt.toString($self)};
}

primitive long extends number {}

primitive float extends number {
    macro float __div__(float other) $java{($self) / ($other)}
                                     $py{float($self) / float($other)}
                                     $js{($self) / ($other)};
    macro String toString() $java{Double.toString($self)}
                            $py{str($self)}
                            $js{_qrt.toString($self)};
}

primitive String {
    macro String __add__(String other) ${($self) + ($other)};
}

primitive List<T> {
    macro void add(T element) $java{($self).add($element)}
                              $py{($self).append($element)}
                              $js{($self).push($element)};
    macro T __get__(int index) $java{($self).get($index)}
                               $py{($self)[$index]}
                               $js{($self)[$index]};
    macro void __set__(int index, T value) $java{($self).set(($index), ($value))}
                                           $py{($self)[$index] = ($value)}
                                           $js{($self)[$index] = ($value)};
    macro int size() $java{($self).size()}
                     $py{len($self)}
                     $js{($self).length};
}

primitive Map<K,V> {
    macro void __set__(K key, V value) $java{($self).put(($key), ($value))}
                                       $py{($self)[$key] = ($value)}
                                       $js{($self).set(($key), ($value))};
    macro V __get__(K key) $java{($self).get($key)}
                           $py{($self).get($key)}
                           $js{_qrt.map_get(($self), ($key))};
    macro int contains(K key) $java{($self).containsKey($key)}
                              $py{($key) in ($self)}
                              $js{($self).has($key)};
    macro void update(Map<K,V> other) $java{($self).putAll($other)}
                                      $py{($self).update($other)}
                                      $js{($other).forEach(function (v, k) { ($self).set(k, v); })};
}

macro void print(String msg) $java{System.out.println($msg)}
                             $py{_println($msg)}
                             $js{_qrt.print($msg)};

macro long now() $java{System.currentTimeMillis()}
                 $py{long(time.time()*1000)}
                 $js{Date.now()};
