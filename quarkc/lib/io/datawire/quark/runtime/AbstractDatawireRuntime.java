package io.datawire.quark.runtime;

import quark.WSHandler;
import quark.WebSocket;
import quark.WSServlet;
import quark.HTTPHandler;
import quark.HTTPRequest;
import quark.HTTPResponse;
import quark.HTTPServlet;
import quark.Runtime;
import quark.Task;

public abstract class AbstractDatawireRuntime {

    public AbstractDatawireRuntime() {
        super();
    }

    protected abstract void initialize();

    protected abstract void wakeup();

    public abstract boolean isAllowSync();

    protected abstract void busy();
    protected abstract void idle();

    protected WSHandler wrap(final WSHandler handler) {
        if (handler == null)
            return null;
        initialize();
        busy();
        return new WSHandler() {
            @Override
            public void onWSBinary(WebSocket socket, Buffer message) {
                try {
                    handler.onWSBinary(socket, message);
                } finally {
                    wakeup();
                }
            }
            @Override
            public void onWSMessage(WebSocket socket, String message) {
                try {
                    handler.onWSMessage(socket, message);
                } finally {
                    wakeup();
                }

            }
            @Override
            public void onWSInit(WebSocket socket) {
                try {
                    handler.onWSInit(socket);
                } finally {
                    wakeup();
                }
            }
            @Override
            public void onWSFinal(WebSocket socket) {
                try {
                    handler.onWSFinal(socket);
                } finally {
                    wakeup();
                    idle();
                }
            }
            @Override
            public void onWSError(WebSocket socket) {
                try {
                    handler.onWSError(socket);
                } finally {
                    wakeup();
                }
            }
            @Override
            public void onWSConnected(WebSocket socket) {
                try {
                    handler.onWSConnected(socket);
                } finally {
                    wakeup();
                }
            }
            @Override
            public void onWSClosed(WebSocket socket) {
                try {
                    handler.onWSClosed(socket);
                } finally {
                    wakeup();
                }
            }
        };
    }

    protected HTTPHandler wrap(final HTTPHandler handler) {
        if (handler == null)
            return null;
        initialize();
        busy();
        return new HTTPHandler() {
            @Override
            public void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
                try {
                    handler.onHTTPResponse(request, response);
                } finally {
                    wakeup();
                }
            }
            @Override
            public void onHTTPInit(HTTPRequest request) {
                try {
                    handler.onHTTPInit(request);
                } finally {
                    wakeup();
                }
            }
            @Override
            public void onHTTPFinal(HTTPRequest request) {
                try {
                    handler.onHTTPFinal(request);
                } finally {
                    wakeup();
                    idle();
                }
            }
            @Override
            public void onHTTPError(HTTPRequest request, String message) {
                try {
                    handler.onHTTPError(request, message);
                } finally {
                    wakeup();
                }
            }
        };
    }

    protected Task wrap(final Task handler) {
        if (handler == null)
            return null;
        initialize();
        busy();
        return new Task() {
            @Override
            public void onExecute(Runtime runtime) {
                try {
                    handler.onExecute(runtime);
                } finally {
                    wakeup();
                    idle();
                }
            }
        };
    }

    protected HTTPServlet wrap(final HTTPServlet servlet) {
        if (servlet == null)
            return null;
        initialize();
        busy();
        return new HTTPServlet() {

            @Override
            public void onServletInit(String url, Runtime runtime) {
                try {
                    servlet.onServletInit(url, runtime);
                } finally {
                    wakeup();
                }
            }

            @Override
            public void onHTTPRequest(HTTPRequest request, HTTPResponse response) {
                try {
                    servlet.onHTTPRequest(request, response);
                } finally {
                    wakeup();
                }
            }

            @Override
            public void onServletError(String url, String error) {
                try {
                    servlet.onServletError(url, error);
                } finally {
                    wakeup();
                }
            }

            @Override
            public void onServletEnd(String url) {
                try {
                    servlet.onServletEnd(url);
                } finally {
                    wakeup();
                    idle();
                }
            }

            @Override
            public void serveHTTP(String url) {
                throw new RuntimeException("Quark should always hide this method");
            }
        };
    }

    protected WSServlet wrap(final WSServlet servlet) {
        if (servlet == null)
            return null;
        initialize();
        busy();
        return new WSServlet() {

            @Override
            public void onServletInit(String url, Runtime runtime) {
                try {
                    servlet.onServletInit(url, runtime);
                } finally {
                    wakeup();
                }
            }

            @Override
            public void onServletError(String url, String error) {
                try {
                    servlet.onServletError(url, error);
                } finally {
                    wakeup();
                }
            }

            @Override
            public void onServletEnd(String url) {
                try {
                    servlet.onServletEnd(url);
                } finally {
                    wakeup();
                    idle();
                }
            }

            @Override
            public WSHandler onWSConnect(HTTPRequest upgrade_request) {
                try {
                    return wrap(servlet.onWSConnect(upgrade_request));
                } finally {
                    wakeup();
                }
            }

            @Override
            public void serveWS(String url) {
                throw new RuntimeException("Quark should always hide this method");
            }
        };
    }

    public void fail(String message) {
        throw new RuntimeException(message);
    }

    public Logger logger(String topic) {
        return new QuarkJavaLogger(topic);
    }
}
