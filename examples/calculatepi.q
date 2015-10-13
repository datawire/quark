// Calculate pi using dartboard method

/* Consider a 1 by 1 square dart board with a radius 1 quarter circle
 * inscribed within. Throw darts at the board in an unbiased, uniform
 * manner. The ratio of the number of darts that hit the quarter
 * circle and the number of darts that hit the dart board is
 * approximately the ratio of area of the quarter circle (pi / 4) and
 * the area of the dart board (1).
 */

void main() {
    int numTrials = 1000000;

    importable.Random r = importable.Random(200);
    //r.test(5, 1000000);  # Fails for now. See random.q for details.
    int trial = 0;

    float inCircleCount = 0;
    float outCircleCount = 0;
    float curX = 0;
    float curY = 0;
    float radiusSq = 0;
    while (trial < numTrials) {
        curX = r.random();
        curY = r.random();
        radiusSq = curX * curX + curY * curY;

        if (radiusSq > 1.0) {
            outCircleCount = outCircleCount + 1;
        } else {
            inCircleCount = inCircleCount + 1;
        }
        trial = trial + 1;
    }

    float curPi = 4.0 * inCircleCount / (inCircleCount + outCircleCount);
    print("Result is " + curPi.toString());
}
