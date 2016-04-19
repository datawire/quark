package quark.spi_api_tracing;

public class TaskProxy extends Identifiable implements quark.Task, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_spi_api_tracing_TaskProxy_ref = quark_md.Root.quark_spi_api_tracing_TaskProxy_md;
    public quark.Task task_impl;
    public RuntimeProxy real_runtime;
    public TaskProxy(io.datawire.quark.runtime.Logger log, RuntimeProxy real_runtime, quark.Task task_impl) {
        super(log, "Task");
        (this).task_impl = task_impl;
        (this).real_runtime = real_runtime;
    }
    public void onExecute(quark.Runtime runtime) {
        ((this).log).debug(((((this).id) + (".onExecute(")) + ((this.real_runtime).id)) + (")"));
        (this.task_impl).onExecute(this.real_runtime);
    }
    public String _getClass() {
        return "quark.spi_api_tracing.TaskProxy";
    }
    public Object _getField(String name) {
        if ((name)==("namer") || ((Object)(name) != null && ((Object) (name)).equals("namer"))) {
            return Identifiable.namer;
        }
        if ((name)==("id") || ((Object)(name) != null && ((Object) (name)).equals("id"))) {
            return (this).id;
        }
        if ((name)==("log") || ((Object)(name) != null && ((Object) (name)).equals("log"))) {
            return (this).log;
        }
        if ((name)==("task_impl") || ((Object)(name) != null && ((Object) (name)).equals("task_impl"))) {
            return (this).task_impl;
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            return (this).real_runtime;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("namer") || ((Object)(name) != null && ((Object) (name)).equals("namer"))) {
            Identifiable.namer = (Identificator) (value);
        }
        if ((name)==("id") || ((Object)(name) != null && ((Object) (name)).equals("id"))) {
            (this).id = (String) (value);
        }
        if ((name)==("log") || ((Object)(name) != null && ((Object) (name)).equals("log"))) {
            (this).log = (io.datawire.quark.runtime.Logger) (value);
        }
        if ((name)==("task_impl") || ((Object)(name) != null && ((Object) (name)).equals("task_impl"))) {
            (this).task_impl = (quark.Task) (value);
        }
        if ((name)==("real_runtime") || ((Object)(name) != null && ((Object) (name)).equals("real_runtime"))) {
            (this).real_runtime = (RuntimeProxy) (value);
        }
    }
}
