package statsd {

    class Stat {
	String name;
        int value;

	Stat(String name, int value) {
	    self.name = name;
	    self.value = value;
	}

	String toString() {
	    return name + ":" + value.toString() + "|" + self.type();
	}

	String type();
    }

    class Counter extends Stat {
	String type() {
	    return "c";
	}
    }

    class Sample extends Stat {
	float interval;
	Sample(String name, int value, float interval) {
	    super(name, value);
	    self.interval = interval;
	}

	String type() {
	    return "c@" + interval.toString();
	}
    }

    class Gauge extends Stat {
	String type() {
	    return "g";
	}
    }

    class Set extends Stat {
	String type() {
	    return "s";
	}
    }

}
