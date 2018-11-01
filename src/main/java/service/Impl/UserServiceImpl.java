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
     private static  SqlSession sqlSession = null;
    /* *
       * description  判断用户名是否存在
       * date         2018/10/24 15:24
       **/
    public Boolean userNameIsExist(String userName){
        Boolean flag=false;
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
        User user=null;
        try {
            sqlSession = mybatisUtil.createSqlSession();
            UserMapper userMapper=sqlSession.getMapper(UserMapper.class);
            //如果用户名存在
            if(userNameIsExist(userName)){
               user=userMapper.getUserByUserNameAndUserPass(userName,userPass);
               logger.info(user.toString());
               if(user!=null) flag=true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sqlSession.close();
        }
        return flag;
    }
    public int register(User user){
        int count=0;
        try {
            sqlSession=mybatisUtil.createSqlSession();
            count=sqlSession.getMapper(UserMapper.class).insertUser(user);
            sqlSession.commit();
            logger.info(user.toString());
        }
        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            sqlSession.close();
        }
        return count;
    }
}
