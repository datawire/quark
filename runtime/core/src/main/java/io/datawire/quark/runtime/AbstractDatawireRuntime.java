package io.datawire.quark.runtime;


public abstract class AbstractDatawireRuntime {

	public AbstractDatawireRuntime() {
		super();
	}

	protected abstract void initialize();

	protected abstract void wakeup();

	public abstract boolean isAllowSync();

	protected WSHandler wrap(final WSHandler handler) {
	    initialize();
	    if (!isAllowSync()) {
	        return handler;
	    }
	    return new WSHandler() {
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
	    initialize();
	    if (!isAllowSync()) {
	        return handler;
	    }
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
	            }
	        }
	        @Override
	        public void onHTTPError(HTTPRequest request) {
	            try {
	                handler.onHTTPError(request);
	            } finally {
	                wakeup();
	            }
	        }
	    };
	}

	protected Task wrap(final Task handler) {
	    initialize();
	    if (!isAllowSync()) {
	        return handler;
	    }
	    return new Task() {
	        @Override
	        public void onExecute(Runtime runtime) {
	            try {
	                handler.onExecute(runtime);
	            } finally {
	                wakeup();
	            }
	        }
	    };
	}

}