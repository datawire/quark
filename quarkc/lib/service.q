quark *;

namespace quark {

    class ServletError extends Error {}

    @doc("A service addresable with an url")
    interface Servlet {
        @doc("called after the servlet is successfully installed. The url will be the actual url used, important especially if ephemeral port was requested")
        void onServletInit(String url, Runtime runtime) {}
        @doc("called if the servlet could not be installed")
        void onServletError(String url, ServletError error) {}
        @doc("called when the servlet is removed")
        void onServletEnd(String url) {}
    }

    interface Resolver {
        List<String> resolve(String serviceName);
    }

    class ResponseHolder extends HTTPHandler {
        HTTPResponse response;
        HTTPError failure = null;

        void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
            self.response = response;
        }

        void onHTTPError(HTTPRequest request, HTTPError error) {
            failure = error;
        }

    }

    interface Service {
        String getName();
        ServiceInstance getInstance();
        float getTimeout();

        concurrent.Future rpc(String methodName, List<Object> args) {
            behaviors.RPC rpc = new behaviors.RPC(self, methodName);  // Must be allocated once per RPC!
            return rpc.call(args);
        }
    }

    class BaseService extends Service {
        String getName() { return null; }
        ServiceInstance getInstance() { return null; }
        float getTimeout() { return -1.0; }
    }

    class ServiceInstance {
        String serviceName;
        String url;
        behaviors.CircuitBreaker breaker;

        ServiceInstance(String serviceName, String url, int failureLimit, float retestDelay) {
            self.serviceName = serviceName;
            self.url = url;
            self.breaker = new behaviors.CircuitBreaker("[" + serviceName + " at " + url + "]",
                                                        failureLimit, retestDelay);
        }

        bool isActive() {
            return self.breaker.active;
        }

        String getURL() {
            return self.url;
        }

        void succeed(String info) {
            if (!self.isActive()) {
                Client.logger.info("- CLOSE breaker for " + self.serviceName + " at " + self.url);
            }

            self.breaker.succeed();
        }

        void fail(String info) {
            if (!self.isActive()) {
                Client.logger.warn("- OPEN breaker for " + self.serviceName + " at " + self.url);
            }

            self.breaker.fail();
        }
    }

    @doc("DegenerateResolver assumes that the serviceName is an URL.")
    class DegenerateResolver extends Resolver {
        List<String> resolve(String serviceName) {
            return [ serviceName ];
        }
    }

    class Client {
        static Logger logger = new Logger("quark.client");

        Resolver resolver;
        String serviceName;
        float _timeout;

        int _failureLimit = 3;
        float _retestDelay = 30.0;  // seconds (30?)

        concurrent.Lock mutex;
        Map<String, ServiceInstance> instanceMap;
        int counter;

        Client(String serviceName) {
            self.serviceName = serviceName;
            self.resolver = new DegenerateResolver();
            self._timeout = 0.0;

            self.mutex = new concurrent.Lock();
            self.instanceMap = {};
            self.counter = 0;

            int failureLimit = ?self.getField("failureLimit");
            if (failureLimit != null) {
                self._failureLimit = failureLimit;
            }
            logger.info(self.toString() + " failureLimit " + self._failureLimit.toString());

            float retestDelay = ?self.getField("retestDelay");
            if (retestDelay != null) {
                self._retestDelay = retestDelay;
            }
            logger.info(self.toString() + " retestDelay " + self._retestDelay.toString());
        }

        void setResolver(Resolver resolver) {
            self.resolver = resolver;
        }

        ServiceInstance getInstance() {
            List<String> urls = self.resolver.resolve(self.serviceName);

            if (urls.size() <= 0) {
                return null;
            }

            urls.sort();

            self.mutex.acquire();

            ServiceInstance result = null;
            int next = self.counter % urls.size();
            self.counter = self.counter + 1;

            // print("Service " + self.serviceName + " has " + urls.size().toString() + " URLs.");

            int idx = next;
            while (true) {
                String url = urls[idx];

                ServiceInstance instance = self.instanceMap[url];
                if (instance == null) {
                    instance = new ServiceInstance(self.serviceName, url, _failureLimit, _retestDelay);
                    self.instanceMap[url] = instance;
                    // print("- Created instance for service " + self.serviceName + " on url " +
                    //       (idx + 1).toString() + ": " + url);
                }

                if (instance.isActive()) {             // Found an active instance
                    Client.logger.info("- " + self.serviceName + " using instance " + (idx + 1).toString() + ": " + url);

                    result = instance;
                    break;
                }

                // print("- " + self.serviceName + " skipping instance " + (idx + 1).toString() + ": " + url);

                idx = (idx + 1) % urls.size();
                if (idx == next) {                     // Wrapped all the way around, found nothing.
                    Client.logger.info("- " + self.serviceName + ": no live instances! giving up.");
                    break;
                }
            }

            self.mutex.release();
            return result;
        }

        String getName() { return self.serviceName; }
        float getTimeout() { return self._timeout; }
        void setTimeout(float timeout) {
            self._timeout = timeout;
        }

    }

    class ServerResponder extends concurrent.FutureListener {
        bool sendCORS;
        HTTPRequest request;
        HTTPResponse response;

        ServerResponder(bool sendCORS, HTTPRequest request, HTTPResponse response) {
            self.sendCORS = sendCORS;
            self.request = request;
            self.response = response;
        }

        void onFuture(concurrent.Future result) {
            Error error = result.getError();

            if (error != null) {
                response.setCode(404);
            }
            else {
                if (self.sendCORS) {
                    self.response.setHeader("Access-Control-Allow-Origin", "*");
                }

                self.response.setBody(toJSON(result, null).toString());
                self.response.setCode(200);
            }
            concurrent.Context.runtime().respond(request, response);
        }
    }

    class Server<T> extends HTTPServlet {

        T impl;
        bool _sendCORS;

        Server(T impl) {
            self.impl = impl;
            self._sendCORS = false;
        }

        void sendCORS(bool send) {
            self._sendCORS = send;
        }

        //// This doesn't work, although it seems that it should. cf
        //// https://github.com/datawire/quark/issues/121
        //
        // static Server<T> withCORS(T impl) {
        //     Server<T> server = new Server<T>(impl);
        //     server._sendCORS = true;

        //     return server;
        // }

        void onHTTPRequest(HTTPRequest request, HTTPResponse response) {
            String body = request.getBody();
            JSONObject envelope = body.parseJSON();
            if (envelope["$method"] == envelope.undefined() ||
                envelope["rpc"] == envelope.undefined()) {
                response.setBody("Failed to understand request.\n\n" + body + "\n");
                response.setCode(400);
                concurrent.Context.runtime().respond(request, response);
            } else {
                String methodName = envelope["$method"];
                JSONObject json = envelope["rpc"];
                // XXX: contexty stuff
                reflect.Method method = self.getClass().getField("impl").getType().getMethod(methodName);
                List<reflect.Class> params = method.getParameters();
                List<Object> args = [];
                int idx = 0;
                while (idx < params.size()) {
                    args.add(fromJSON(params[idx], null, json.getListItem(idx)));
                    idx = idx + 1;
                }
                concurrent.Future result = ?method.invoke(impl, args);
                result.onFinished(new ServerResponder(self._sendCORS, request, response));
                // XXX: we should also start a timeout here if the impl does not .finish() the result
            }
        }

        void onServletError(String url, ServletError error) {
            concurrent.Context.runtime().fail("RPC Server failed to register " + url + " due to: " + error.getMessage());
        }

    }

namespace behaviors {

    class RPCError extends Error {}

    // an instance of this could be the target of the @delegate annotation.
    class RPC {
        Service service;
        reflect.Class returned;
        float timeout;
        String methodName;
        ServiceInstance instance;

        RPC(Service service, String methodName) {
            float timeout = ?service.getField("timeout");
            if (timeout == null || timeout <= 0.0) {
                timeout = 10.0;
            }
            float override = service.getTimeout();
            if (override != null && override > 0.0) {
                timeout = override;
            }
            self.returned = service.getClass().getMethod(methodName).getType();
            self.timeout = timeout;
            self.methodName = methodName;
            self.service = service;
        }

        concurrent.Future call(List<Object> args) {
            concurrent.Future result = null;
            self.instance = self.service.getInstance();

            // It's possible for getInstance to return nothing, if all the options have been exhausted.
            if (self.instance != null) {
                HTTPRequest request = new HTTPRequest(self.instance.getURL());
                // XXX: assume message is not a Future, or at least not a pending one
                JSONObject json = toJSON(args, null);
                JSONObject envelope = new JSONObject();
                envelope["$method"] = self.methodName;
                envelope["$context"] = "TBD"; // XXX: serialize intersting bits of the context (define interesting while there)
                envelope["rpc"] = json;
                String body = envelope.toString();
                //print("Request: " + body);
                request.setBody(body);
                request.setMethod("POST");

                RPCRequest rpc = new RPCRequest(args, self);

                result = rpc.call(request);
            } else {
                result = ?returned.construct([]);
                result.finish(RPCError("all services are down"));
            }

            concurrent.FutureWait.waitFor(result, 10.0);
            // XXX: sync users still need to check result.getError()...
            return result;
        }

        void succeed(String info) {
            self.instance.succeed(info);
        }

        void fail(String info) {
            self.instance.fail(info);
        }

        String toString() {
            return "RPC " + self.service.getName() + " at " + self.instance.getURL() + ": " + self.methodName + "(...)";
        }

    }

    class RPCRequest extends HTTPHandler,  concurrent.TimeoutListener {
        RPC rpc;
        concurrent.Future retval;
        List<Object> args;
        concurrent.Timeout timeout;
        RPCRequest(List<Object> args, RPC rpc) {
            self.retval = ?rpc.returned.construct([]); // capture current context;
            self.args = args;
            self.timeout = new concurrent.Timeout(rpc.timeout);
            self.rpc = rpc;
        }

        concurrent.Future call(HTTPRequest request) {
            self.timeout.start(self);
            concurrent.Context.runtime().request(request, self);
            return self.retval;
        }

        void onHTTPResponse(HTTPRequest rq, HTTPResponse response) {
            String info;

            self.timeout.cancel(); // technically not strictly necessary as future fires only once

            if (response.getCode() != 200) {
                info = self.rpc.toString() + " failed: Server returned error " + response.getCode().toString();
                self.retval.finish(RPCError(info));
                self.rpc.fail(info);
                return;
            }

            String body = response.getBody();
            //print("Response: " + body);
            JSONObject obj = body.parseJSON();
            String classname = obj["$class"];
            if (classname == null) {
                info = self.rpc.toString() + " failed: Server returned unrecognizable content";
                self.retval.finish(RPCError(info));
                self.rpc.fail(info);
                return;
            } else {
                fromJSON(self.rpc.returned, self.retval, obj);
                self.retval.finish(null);
                self.rpc.succeed("Success in the future...");
            }
        }

        void onTimeout(concurrent.Timeout timeout) {
            self.retval.finish(RPCError("request timed out"));
            self.rpc.fail("request timed out");
        }
    }

    class CircuitBreaker extends Task {
        String id;
        int failureLimit;
        float retestDelay;

        // Internal state
        bool active = true;
        int failureCount = 0;
        concurrent.Lock mutex = new concurrent.Lock();

        CircuitBreaker(String id, int failureLimit, float retestDelay) {
            self.id = id;
            self.failureLimit = failureLimit;
            self.retestDelay = retestDelay;
        }

        void succeed() {
            self.mutex.acquire();

            if (self.failureCount > 0) {
                Client.logger.info("- CLOSE breaker on " + self.id);
            }

            self.failureCount = 0;
            self.mutex.release();
        }

        void fail() {
            bool doSchedule = false;
            self.mutex.acquire();
            self.failureCount = self.failureCount + 1;
            if (self.failureCount >= self.failureLimit) {
                self.active = false;
                doSchedule = true;

                Client.logger.warn("- OPEN breaker on " + self.id);
            }
            self.mutex.release();

            if (doSchedule) {
                concurrent.Context.runtime().schedule(self, self.retestDelay);
            }
        }

        void onExecute(Runtime runtime) {
            self.mutex.acquire();
            self.active = true;
            Client.logger.warn("- RETEST breaker on " + self.id);
            self.mutex.release();
        }
    }

}}
