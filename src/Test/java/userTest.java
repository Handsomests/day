//import entity.User;
//import mapper.user.UserMapper;
//import org.apache.ibatis.session.SqlSession;
//import org.junit.Test;
//import util.mybatisUtil;
//
///* *
// * author: 阿帅
// * description: User测试类
// * date: 2018-10-12 16:59
// **/
//public class userTest {
//    //查询t_user表中数据行数
//    @Test
//    public void tUserCountTest(){
//        //创建SqlSession对象
//        SqlSession sqlSession = null;
//        User user=null;
//        try {
//            sqlSession = mybatisUtil.createSqlSession();
//            //根据ID查询用户
//            user = sqlSession.getMapper(UserMapper.class).userNameIsExist("admin");
//            System.out.println(user.getUserName()+"==="+user.getUserPass());
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            //释放资源
//            mybatisUtil.closeSqlSession(sqlSession);
//        }
//    }
//    //查询t_user表中数据所有信息
////    @Test
////    public void tUserAllTest(){
////        //创建SqlSession对象
////        SqlSession sqlSession = null;
////        try {
////            sqlSession = mybatisUtil.createSqlSession();
////            //查询user表中数据所有信息
////            List<User> list = sqlSession.getMapper(UserMapper.class).getAllUser();
////            for (User user: list) {
////                System.out.println(user);
////            }
////        } catch (Exception e) {
////            e.printStackTrace();
////        } finally {
////            //释放资源
////            mybatisUtil.closeSqlSession(sqlSession);
////        }
////    }
//}
