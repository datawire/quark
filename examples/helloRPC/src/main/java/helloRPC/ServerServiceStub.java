package helloRPC;

import io.datawire.quark.runtime.Runtime;
import hello.Service; // XXX: this should come from quark runtime package

// XXX: server really doesn't need those, they are for client...
public class ServerServiceStub implements Service {

    @Override
    public String getURL() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Runtime getRuntime() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Object rpc(String name, Object message) {
        // TODO Auto-generated method stub
        return null;
    }

}
