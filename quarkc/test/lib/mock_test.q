quark *;
import quark.test;
import quark.mock;

void main(List<String> args) {
    test.run(args);
}

class TestTask extends Task {
    int called = 0;

    void onExecute(Runtime runtime) {
        called = called + 1;
    }
}


class MockTest extends MockRuntimeTest {
    // Advancing time changes Runtime.now()
    void testAdvance() {
        long current = self.mock.now();
        self.mock.advanceClock(500L);
        checkEqual(self.mock.now() - current, 500L);
    }

    // Scheduling interacts correctly with time
    void testSchedule() {
        TestTask task = new TestTask();
        self.mock.schedule(task, 2.5);

        self.pump();
        checkEqual(0, task.called);
        checkEqual(0, self.mock.executed);

        self.mock.advanceClock(2499);
        self.pump();
        checkEqual(0, task.called);
        checkEqual(0, self.mock.executed);

        self.mock.advanceClock(1);
        self.pump();
        checkEqual(1, task.called);
        checkEqual(1, self.mock.executed);
    }

    // Tasks are only called once
    void testScheduledOnce() {
        TestTask task = new TestTask();
        self.mock.schedule(task, 1.0);
        self.mock.advanceClock(1000);
        self.pump();
        checkEqual(1, task.called);
        checkEqual(1, self.mock.executed);
        self.pump();
        self.mock.advanceClock(1000);
        self.pump();
        checkEqual(1, task.called);
        checkEqual(1, self.mock.executed);
    }
}
