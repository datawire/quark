quark *;
use js ws 1.0;
use js request 2.69.0;
use js timers 0.1.1;
use js lodash 4.8.2;
include quark_runtime.js;
include quark_node_runtime.js;

use py ws4py 0.3.4;
use py future 0.15.2;
include quark_runtime.py;
include quark_threaded_runtime.py;
include quark_runtime_logging.py;
include quark_ws4py_fixup.py;

// These should be kept in sync with Gemfile:
use rb concurrent-ruby 1.0.1;
use rb reel 0.6.1;
use rb websocket-driver 0.6.3;
use rb logging 2.1.0;
use rb event_emitter 0.2.5;
include datawire-quark-core.rb;

use java com.fasterxml.jackson.jr jackson-jr-objects 2.5.3;
use java io.netty netty-all 4.0.32.Final;
use java junit junit 4.12;
include io/datawire/quark/runtime/AbstractDatawireRuntime.java;
include io/datawire/quark/runtime/Builtins.java;

package quark 1.0.452;

import quark.error;

include primitives.q;
include logging.q;
include reflect.q;
include json.q;
include service.q;
include concurrent.q;
include http.q;
include ws.q;
include testing.q;
include url.q;
include spi.q;
include spi_api.q;
include spi_api_tracing.q;
include os.q;
include mock.q;
include promise.q;
include io.q;

macro void print(Object msg) $java{do{System.out.println($msg);System.out.flush();}while(false)}
                             $py{_println($msg)}
                             $rb{::DatawireQuarkCore.print($msg)}
                             $js{_qrt.print($msg)};

macro String url_get(String url) $java{io.datawire.quark.runtime.Builtins.url_get($url)}
                                 $py{_url_get($url)}
                                 $rb{::DatawireQuarkCore.url_get($url)}
                                 $js{_qrt.url_get($url)};

macro int parseInt(String st) $java{Integer.parseInt($st)}
                              $py{int($st)}
                              $rb{Integer($st)}
                              $js{parseInt($st)};

macro Codec defaultCodec() $java{io.datawire.quark.runtime.Builtins.defaultCodec()}
                           $py{_default_codec()}
                           $rb{::DatawireQuarkCore.default_codec}
                           $js{_qrt.defaultCodec()};

macro void _trace() $java{do{new Throwable().printStackTrace();} while(false)}
                    $py{__import__("traceback").print_stack()}
                    $js{console.trace()}
                    $rb{puts caller};

macro void panic(String msg) $java{throw new RuntimeException($msg)}
                             $py{raise Exception($msg)}
                             $rb{raise ($msg)}
                             $js{throw ($msg)};

interface Task {
    void onExecute(Runtime runtime); // XXX: right now, context is not
                                     // restored for these. We should
                                     // offer a context-aware
                                     // scheduling API on top and have
                                     // this as internal thing
}

interface Runtime {
    void open(String url, WSHandler handler);
    void request(HTTPRequest request, HTTPHandler handler);
    void schedule(Task handler, float delayInSeconds);
    Codec codec();
    void serveHTTP(String url, HTTPServlet servlet);
    void serveWS(String url, WSServlet servlet);
    void respond(HTTPRequest request, HTTPResponse response);

    @doc("Display the explanatory message and then terminate the program")
    void fail(String message);

    @doc("Get a logger for the specified topic.")
    Logger logger(String topic);

    @doc("Get epoch time in milliseconds")
    long now();

    @doc("Suspend execution of this thread for some number of seconds")
    void sleep(float seconds);

    @doc("Get a v4 random UUID (Universally Unique IDentifier)")
    String uuid();

    @doc("""
    Call a UnaryCallable safely, catching native exceptions.

    The UnaryCallable is called with null.

    The result of calling the UnaryCallable will be returned, unless an
    exception is caught in which case the default is returned.
    """)
    Object callSafely(UnaryCallable callable, Object defaultResult);
}

@doc("Get epoch time in milliseconds")
long now() { return quark.concurrent.Context.runtime().now(); }

@doc("Suspend execution of this thread for some number of seconds")
void sleep(float seconds) { quark.concurrent.Context.runtime().sleep(seconds); }

@doc("Get a v4 random UUID (Universally Unique IDentifier)")
String uuid() { return quark.concurrent.Context.runtime().uuid(); }
