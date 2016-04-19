package io.datawire.quark.runtime;

import quark.Runtime;

public interface RuntimeSpi extends quark.spi.RuntimeSpi {
    public final class Factory {
        public static RuntimeSpi create() {
            String className = "io.datawire.quark.netty.QuarkNettyRuntime";
            // TODO: SPI things
            Class<? extends RuntimeSpi> runtimeClass;
            RuntimeSpi ret;
            try {
                 runtimeClass = Class.forName(className).asSubclass(RuntimeSpi.class);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("Cannot find quark runtime " + className, e);
            }
            try {
                ret = runtimeClass.getConstructor().newInstance();
            } catch (Exception e) {
                throw new RuntimeException("Cannot instantiate quark runtime " + className, e);
            }
            return ret;
        }
    }
}
