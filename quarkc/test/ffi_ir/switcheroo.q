void switch_int() {
    int idx = 0;
    List<int> switched = [];
    while (idx < 10) {
        switch (idx) {
        case 1, 3, 5, 7, 9:
            switched.append(idx);
        }
        idx = idx + 1;
    }

    assertEqual(5, switched.size());
    assertEqual(1, switched[0]);
    assertEqual(3, switched[1]);
    assertEqual(5, switched[2]);
    assertEqual(7, switched[3]);
    assertEqual(9, switched[4]);
}

void switch_string() {
    List<String> count = ["one", "two", "three"];
    int idx = 0;
    List<String> switched = [];
    while (idx < count.size()) {
        switch (count[idx]) {
        case "one":
            switched.append("single");
        case "two", "three":
            switched.append("many");
        }
        idx = idx + 1;
    }

    assertEqual("single", switched[0]);
    assertEqual("many", switched[1]);
    assertEqual("many", switched[2]);
}

void switch_bool() {
    int idx = 0;
    List<String> switched = [];
    while (idx < 10) {
        switch (true) {
        case idx < 5:
            switched.append("<5");
        case idx > 5:
            switched.append(">5");
        case true:
            switched.append("5");
        }
        idx = idx + 1;
    }

    idx = 0;
    while (idx < 5) {
        assertEqual("<5", switched[idx]);
        idx = idx + 1;
    }

    assertEqual("5", switched[idx]);
    idx = idx +1;

    while (idx < 10) {
        assertEqual(">5", switched[idx]);
        idx = idx + 1;
    }
}

void switch_nested() {
    List<String> l = ["one", "two", "three"];
    int ecount = 0;
    int ocount = 0;
    int idx = 0;

    while (idx < l.size()) {
        switch (idx) {
        case 0, 2:
            String s = l[idx];
            int sidx = 0;
            while (sidx < s.size()) {
                switch (s.substring(sidx, sidx + 1)) {
                case "e":
                    ecount = ecount + 1;
                case "o":
                    ocount = ocount + 1;
                }
                sidx = sidx + 1;
            }
        }
        idx = idx + 1;
    }

    assertEqual(3, ecount);
    assertEqual(1, ocount);
}
