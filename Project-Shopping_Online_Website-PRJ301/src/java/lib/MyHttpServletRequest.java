/*
 * DuyDuc94
 */
package lib;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletRequestWrapper;

/**
 * @author duy20
 */
public class MyHttpServletRequest extends HttpServletRequestWrapper {

    private String method;

    public MyHttpServletRequest(HttpServletRequest request, String method) {
        super(request);
        this.method = method;
    }

    @Override
    public String getMethod() {
        return method;
    }
}
