package filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/* *
 *description  实现用户登录认证
 *date    2018/10/24 20:26 
 **/
public class LoginFilter implements Filter {
    private FilterConfig config = null;
    public void destroy() {
        this.config = null;
    }
    public void doFilter(ServletRequest request, ServletResponse response,FilterChain chain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest) request).getSession();
        String userName= String.valueOf(session.getAttribute("userName"));
        String path = ((HttpServletRequest) request).getRequestURI();
        //首页不进行过滤
        if(path.indexOf("/index.jsp") > -1) {
            chain.doFilter(request, response);
            return;
        }
        if (userName.equals(new String("null"))) {
            ((HttpServletResponse)response).sendRedirect("/index.jsp");
        } else {
            chain.doFilter(request, response);
        }
    }
    public void init(FilterConfig config) throws ServletException {
        this.config = config;
    }
}
