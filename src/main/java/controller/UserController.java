package controller;

import entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import service.Impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


/* *
 * author: 阿帅
 * description:   登录注册
 * date: 2018-10-12 16:01
 **/
@WebServlet("/loginOrRegister")
public class UserController extends HttpServlet {
    private static UserServiceImpl userServiceImpl=new UserServiceImpl();
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        //登录操作
        if("login".equals(action)){
            String userName=request.getParameter("userName");
            String userPass=request.getParameter("userPass");
            Boolean flag=userServiceImpl.login(userName,userPass);
            logger.info(userName+"=======");
            logger.info(flag.toString());
            if (flag){
                //创建session对象
                HttpSession session=request.getSession();
                session.setAttribute("userName",userName);
                session.setAttribute("userPass",userPass);
                //只能在url中带parameter或者放在session中   进行传值
                response.sendRedirect("/view/home/home.jsp");
            }
            else{
                request.setAttribute("flag",flag);
                request.getRequestDispatcher("/index.jsp").forward(request,response);
            }
        }
        //注册操作
        else {
            User user=new User();
            user.setUserName(request.getParameter("userName"));
            user.setUserPass(request.getParameter("userPass"));
            user.setUserPassEnter(request.getParameter("userPassEnter"));
            user.setEmail(request.getParameter("email"));
            if(userServiceImpl.register(user)>0){
                HttpSession session=request.getSession();
                session.setAttribute("userName",user.getUserName());
                session.setAttribute("userPass",user.getUserPass());
                response.sendRedirect("/view/home/home.jsp");
            }
            else {
                request.setAttribute("registerMessage","注册失败");
                request.getRequestDispatcher("/index.jsp").forward(request,response);
            }
        }
    }


}
