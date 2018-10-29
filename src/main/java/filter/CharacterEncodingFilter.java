package filter;

import javax.servlet.*;
import java.io.IOException;
/* *
 *   description :
 *   web.xml    在web程序启动的时候实例化，只会实例化一次过滤器
 *   init（）   初始化。         加载初始化信息，只执行一次
 *   doFilter()                 可执行多次。
 *   销毁：web容器关闭的时候执行destroy()方法销毁过滤器对象
 *   date    2018/10/24 21:02
 **/
public class CharacterEncodingFilter implements Filter {
    private static String encoding; // 定义变量接收初始化的值

    public void destroy() {
        System.out.println("过滤器销毁");
    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        // 设置字符编码链锁
        request.setCharacterEncoding(encoding);
        response.setCharacterEncoding(encoding);
        chain.doFilter(request, response);
    }
    // 初始化
    public void init(FilterConfig config) throws ServletException {
        // 接收web.xml配置文件中的初始参数
        System.out.println("过滤器初始化");
        encoding = config.getInitParameter("CharsetEncoding");
    }
}
