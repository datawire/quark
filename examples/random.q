// Simple pseudorandom number generator from
// http://www.codeproject.com/Articles/25172/Simple-Random-Number-Generation
// and
// https://en.wikipedia.org/wiki/Random_number_generation

package importable {
    @doc("Simple pseudorandom number generator. See:",
         "http://www.codeproject.com/Articles/25172/Simple-Random-Number-Generation",
         "https://en.wikipedia.org/wiki/Random_number_generation")
    class Random {
        int m_z;
        int m_w;

        @doc("The supplied seed value determines the sequence produced")
        Random(int seed) {
            self.m_z = seed;
            self.m_w = 38632;
        }

        @doc("Return a random integer n such that 0 <= n < 65536")
        int next() {
            m_z = 36969 * (m_z % 65536) + (m_z / 65536);
            m_w = 18000 * (m_w % 65536) + (m_w / 65536);
            int intermediate = (m_z / 65536) + m_w;
            return intermediate % 65536;
        }

        @doc("Return a random float f such that 0 <= f < 1")
        float random() {
            float numerator = self.next() * 1.0;
            float denominator = 65536.0;
            return numerator / denominator;
        }

        @doc("Generate a histogram of random() results to demonstrate uniform distribution",
             "FIXME: Doesn't compile correctly, so important lines have been commented out.",
             "(commented-out lines will not show up in the generated code)")
        void test(int numBins, int numTrials) {
            List<int> hist = new List<int>();
            int idx = 0;
            while (idx < numBins) {
                hist.add(0);
                idx = idx + 1;
            }
            int counter = 0;
            float temp = 0.0;
            while (counter < numTrials) {
                temp = self.random();
                //idx = (temp * numBins);     // This fails during javac: "double cannot be converted to Integer"
                //hist[idx] = hist[idx] + 1;  // This fails in JS and Python because idx is not an integer
                counter = counter + 1;
                //print(counter.toString() + " temp=" + temp.toString() + " idx=" + idx.toString());
            }
            idx = 0;
            String res = "";
            while (idx < numBins) {
                res = res + "b" + idx.toString() + ":" + hist[idx].toString() + " ";
                idx = idx + 1;
            }
            print(res);
        }
    }
}
