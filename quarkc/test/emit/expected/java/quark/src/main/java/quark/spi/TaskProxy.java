package quark.spi;

public class TaskProxy implements quark.Task, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_TaskProxy_ref = quark_md.Root.quark_spi_TaskProxy_md;
    public quark.Task task_impl;
    public quark.Runtime real_runtime;
    public TaskProxy(quark.Runtime real_runtime, quark.Task task_impl) {
        (this).task_impl = task_impl;
        (this).real_runtime = real_runtime;
    }
    public void onExecute(quark.Runtime runtime) {
        (this.task_impl).onExecute(this.real_runtime);
    }
    public String _getClass() {
        return "quark.spi.TaskProxy";
    }
    public Object _getField(String name) {
        if ((name)==("task_impl") || ((Object)(name) != null && ((Object) (name)).equals("task_impl"))) {
            return (this).task_impl;
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            return (this).real_runtime;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("task_impl") || ((Object)(name) != null && ((Object) (name)).equals("task_impl"))) {
            (this).task_impl = (quark.Task) (value);
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            (this).real_runtime = (quark.Runtime) (value);
        }
    }
}
