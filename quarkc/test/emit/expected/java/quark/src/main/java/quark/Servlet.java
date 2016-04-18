package quark;

/**
 * A service addresable with an url
 */
public interface Servlet {
    public static quark.reflect.Class quark_Servlet_ref = quark_md.Root.quark_Servlet_md;
    /**
     * called after the servlet is successfully installed. The url will be the actual url used, important especially if ephemeral port was requested
     */
     void onServletInit(String url, Runtime runtime);
    /**
     * called if the servlet could not be installed
     */
     void onServletError(String url, String error);
    /**
     * called when the servlet is removed
     */
     void onServletEnd(String url);
}
