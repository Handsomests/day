package controller;

import com.google.gson.Gson;
import mapper.BookDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import service.Impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/* *
   * description  验证用户名，邮箱是否存在
   * date         2018/10/26 22:48 
   **/
@WebServlet("/check")
public class CheckController extends HttpServlet {
    private static final Logger logger = LoggerFactory.getLogger(CheckController.class);
    private static UserServiceImpl userService=new UserServiceImpl();
    private static BookDao bookDao=new BookDao();
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
             doPost(request,response);
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
       String type=request.getParameter("type");
       //验证用户名
       if("checkUserName".equals(type)){
           String userName=request.getParameter("userName");
           Boolean flag=userService.userNameIsExist(userName);
           if(flag){
               response.getWriter().print("true");
           }
       }
       //验证邮箱
       else if("checkEmail".equals(type)){
            String email=request.getParameter("email");
            Boolean flag=userService.emailIsExist(email);
            if(flag){
                response.getWriter().print("true");
            }
       }
       //ajax搜索提示功能
       else  if ("search".equals(type)){
           String keywords=request.getParameter("keywords");
           logger.info(keywords+"--------------");
           List list=bookDao.prompt(keywords);
           Gson gson=new Gson();
           System.out.println(gson.toJson(list));
           response.getWriter().print(gson.toJson(list));
       }
    }
}
