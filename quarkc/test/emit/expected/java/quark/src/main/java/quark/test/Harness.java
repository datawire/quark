package quark.test;

public class Harness implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_List_quark_test_Test__ref = quark_md.Root.quark_List_quark_test_Test__md;
    public static quark.reflect.Class quark_test_Harness_ref = quark_md.Root.quark_test_Harness_md;
    public String pkg;
    public java.util.ArrayList<Test> tests = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    public Integer filtered = 0;
    public Harness(String pkg) {
        (this).pkg = pkg;
    }
    public void collect(java.util.ArrayList<String> filters) {
        java.util.ArrayList<String> names = new java.util.ArrayList((quark.reflect.Class.classes).keySet());
        java.util.Collections.sort(names, null);
        Integer idx = 0;
        String pfx = (this.pkg) + (".");
        while ((idx) < ((names).size())) {
            String name = (names).get(idx);
            if ((Boolean.valueOf((name).startsWith(pfx))) && (Boolean.valueOf((name).endsWith("Test")))) {
                quark.reflect.Class klass = quark.reflect.Class.get(name);
                java.util.ArrayList<quark.reflect.Method> methods = (klass).getMethods();
                Integer jdx = 0;
                while ((jdx) < ((methods).size())) {
                    quark.reflect.Method meth = (methods).get(jdx);
                    String mname = (meth).getName();
                    if ((Boolean.valueOf((mname).startsWith("test"))) && ((((meth).getParameters()).size())==(0) || ((Object)(((meth).getParameters()).size()) != null && ((Object) (((meth).getParameters()).size())).equals(0)))) {
                        Test test = new MethodTest(klass, meth);
                        if ((test).match(filters)) {
                            (this.tests).add(test);
                        } else {
                            this.filtered = (this.filtered) + (1);
                        }
                    }
                    jdx = (jdx) + (1);
                }
            }
            idx = (idx) + (1);
        }
    }
    public void list() {
        Integer idx = 0;
        while ((idx) < ((this.tests).size())) {
            Test test = (this.tests).get(idx);
            do{System.out.println((test).name);System.out.flush();}while(false);
            idx = (idx) + (1);
        }
    }
    public void run() {
        do{System.out.println(Functions.bold("=============================== starting tests ==============================="));System.out.flush();}while(false);
        Integer idx = 0;
        Integer failures = 0;
        while ((idx) < ((this.tests).size())) {
            Test test = (this.tests).get(idx);
            (test).start();
            (test).run();
            (test).stop();
            if ((((test).failures).size()) > (0)) {
                failures = (failures) + (1);
            }
            idx = (idx) + (1);
        }
        Integer passed = ((this.tests).size()) - (failures);
        do{System.out.println(Functions.bold("=============================== stopping tests ==============================="));System.out.flush();}while(false);
        String result = ((((((("Total: ") + (Integer.toString(((this.tests).size()) + (this.filtered)))) + (", Filtered: ")) + (Integer.toString(this.filtered))) + (", Passed: ")) + (Integer.toString(passed))) + (", Failed: ")) + (Integer.toString(failures));
        if ((failures) > (0)) {
            do{System.out.println(Functions.red(result));System.out.flush();}while(false);
        } else {
            do{System.out.println(Functions.green(result));System.out.flush();}while(false);
        }
    }
    public String _getClass() {
        return "quark.test.Harness";
    }
    public Object _getField(String name) {
        if ((name)==("pkg") || ((Object)(name) != null && ((Object) (name)).equals("pkg"))) {
            return (this).pkg;
        }
        if ((name)==("tests") || ((Object)(name) != null && ((Object) (name)).equals("tests"))) {
            return (this).tests;
        }
        if ((name)==("filtered") || ((Object)(name) != null && ((Object) (name)).equals("filtered"))) {
            return (this).filtered;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("pkg") || ((Object)(name) != null && ((Object) (name)).equals("pkg"))) {
            (this).pkg = (String) (value);
        }
        if ((name)==("tests") || ((Object)(name) != null && ((Object) (name)).equals("tests"))) {
            (this).tests = (java.util.ArrayList<Test>) (value);
        }
        if ((name)==("filtered") || ((Object)(name) != null && ((Object) (name)).equals("filtered"))) {
            (this).filtered = (Integer) (value);
        }
    }
}
