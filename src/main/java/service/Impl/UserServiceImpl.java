package service.Impl;

import entity.User;
import mapper.user.UserMapper;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import service.UserServiceInter;
import util.mybatisUtil;

/* *
   * author: 阿帅
   * description:用户服务层
   * date: 2018-10-12 16:08
   **/
public class UserServiceImpl implements UserServiceInter {
     private  static  final Logger logger= LoggerFactory.getLogger(UserServiceImpl.class);
    /* *
       * description  判断用户名是否存在
       * date         2018/10/24 15:24
       **/
    public Boolean userNameIsExist(String userName){
        Boolean flag=false;
        //创建SqlSession对象
        SqlSession sqlSession = null;
        User user=null;
        try {
            sqlSession = mybatisUtil.createSqlSession();
            user = sqlSession.getMapper(UserMapper.class).userNameIsExist(userName);
            if(user!=null) flag=true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
           sqlSession.close();
        }
        return flag;
    }
    /* *
       * description  判断邮箱是否存在
       * date         2018/10/24 15:24
       **/
    public Boolean emailIsExist(String email){
        Boolean flag=false;
        SqlSession sqlSession = null;
        User user=null;
        try {
            sqlSession = mybatisUtil.createSqlSession();
            user = sqlSession.getMapper(UserMapper.class).eamilIsExist(email);
            if(user!=null) flag=true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sqlSession.close();
        }
        return flag;
    }
    /* *
       * description  用户登录
       * date         2018/10/24 21:07
       **/
    public Boolean login(String userName,String userPass){
        logger.info(userName+userPass);
        Boolean flag=false;   //密码错误
        SqlSession session = null;
        User user=null;
        try {
            session = mybatisUtil.createSqlSession();
            UserMapper userMapper=session.getMapper(UserMapper.class);
            //如果用户名存在
            if(userNameIsExist(userName)){
               user=userMapper.getUserByUserNameAndUserPass(userName,userPass);
               logger.info(user.toString());
               if(user!=null) flag=true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return flag;
    }
    public int register(User user){
        SqlSession session=null;
        int count=0;
        try {
            session=mybatisUtil.createSqlSession();
            count=session.getMapper(UserMapper.class).insertUser(user);
            session.commit();
            logger.info(user.toString());
        }
        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        return count;
    }

}
