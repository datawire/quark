package helloRPC;

import builtin.Service;
import builtin.concurrent.Future;

// XXX: server really doesn't need those, they are for client...
public class ServerServiceStub implements Service {

    @Override
    public String getURL() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Long getTimeout() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Future rpc(String name, Object message, java.util.ArrayList<Object> options) {
        // TODO Auto-generated method stub
        return null;
    }


}
