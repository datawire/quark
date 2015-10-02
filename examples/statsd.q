package statsd {

    // XXX: we don't have super yet, so I had to copy the constructors
    // to all the subclasses, this will go away soon!

    class Stat {
	String name;
        int value;

	String toString() {
	    return name + ":" + value.toString() + "|" + self.type();
	}

	String type();
    }

    class Counter extends Stat {
	Counter(String name, int value) {
	    self.name = name;
	    self.value = value;
	}

	String type() {
	    return "c";
	}
    }

    class Sample extends Stat {
	float interval;
	Sample(String name, int value, float interval) {
	    //super(name, value);
	    self.name = name;
	    self.value = value;
	    self.interval = interval;
	}

	String type() {
	    return "c@" + interval.toString();
	}
    }

    class Gauge extends Stat {
	Gauge(String name, int value) {
	    self.name = name;
	    self.value = value;
	}

	String type() {
	    return "g";
	}
    }

    class Set extends Stat {
	Set(String name, int value) {
	    self.name = name;
	    self.value = value;
	}

	String type() {
	    return "s";
	}
    }

}
