quark *;
include io/datawire/quark/runtime/RuntimeSpi.java;

namespace quark {
namespace spi {

    interface RuntimeSpi extends Runtime {
        macro RuntimeSpi() $java{io.datawire.quark.runtime.RuntimeSpi.Factory.create()}
        $py{_RuntimeFactory.create()}
        $rb{::DatawireQuarkCore::Runtime.new}
        $js{_qrt.RuntimeFactory.create()};
    }


    class RuntimeFactory {
        static RuntimeFactory factory = new RuntimeFactory();

        static String quark_trace = null;

        quark.Runtime makeRuntime() {
            RuntimeSpi spi = new RuntimeSpi();
            Runtime api;
            if ((quark_trace == null) ||
                (quark_trace == "") ||
                (quark_trace == "0") ||
                (quark_trace.toLower() == "false")) {
                api = new quark.spi_api.RuntimeProxy(spi);
            } else {
                Logger logger;
                if ((quark_trace == "1") || (quark_trace.toLower() == "true")) {
                    logging.makeConfig().setLevel("DEBUG").configure();
                    logger = spi.logger("api");
                } else {
                    logging.makeConfig().setLevel("DEBUG").setAppender(logging.file(quark_trace)).configure();
                    logger = spi.logger("api");
                }
                api = new quark.spi_api_tracing.RuntimeProxy(spi, logger);
            }
            return api;
        }
    }
}}
