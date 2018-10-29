package util;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;

/* *
 * author: 阿帅
 * description: mybatis工具类
 * date: 2018-10-12 16:57
 **/
public class mybatisUtil {
    //创建SqlSession对象
    public static SqlSession createSqlSession(){
        try {
            //mybatis-config.xml在util下面
            //InputStream inputStream = mybatisUtil.class.getResourceAsStream("mybatis-conf.xml");
            //配置文件在resources下
            InputStream inputStream= mybatisUtil.class.getClassLoader().getResourceAsStream("mybatis-conf.xml");
            //工厂读取配置文件
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            SqlSession session=sqlSessionFactory.openSession();
            return session;
        } catch (Exception e) {
            e.printStackTrace();
            return  null;
        }
    }
}
