package mapper.user;

import entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

/* *
 * author: 阿帅
 * description:用户接口
 * date: 2018-10-12 16:08
 *
 *
 * 添加了@Mapper注解之后这个接口在编译时会生成相应的实现类
 *
 * 需要注意的是：这个接口中不可以定义同名的方法，因为会生成相同的id
 * 也就是说这个接口是不支持重载的
 *
 **/
public interface UserMapper {
    /* *
     * description  获取所有的用户
     * param []
     **/
    @Select("select * from user order by Id")
    List<User> getAllUser();
    /* *
     * description  根据Id获取指定用户
     * param [id]
     **/
    @Select("select * from user where id=#{id}")
    User getUserById(@Param("id") int id);
    /* *
     *description  检查邮箱是否存在
     *date    2018/10/24 14:02
     **/
    @Select("select * from user where email=#{email}")
    User eamilIsExist(@Param("email") String email);
    /* *
     *description  检查登录名是否存在
     *date    2018/10/24 14:02
     **/
    @Select("select * from user where userName=#{userName}")
    User userNameIsExist(@Param("userName") String userName);
    /* *
     *description  根据用户名和密码查询用户
     *date    2018/10/24 18:36 
     **/
    @Select("select * from user where userName=#{userName} and userPass=#{userPass}")
    User getUserByUserNameAndUserPass(@Param("userName") String userName,@Param("userPass") String userPass);
    /* *
     *description  更新用户信息
     *date    2018/10/24 19:13 
     **/
    @Update("update user set userName=#{userName},userPass=#{userPass},userPassEnter=#{userPassEnter},email=#{email} where Id=#{id}")
    int updateUser(User user);
    /* *
     *description  插入新用户
     *date    2018/10/24 19:19 
     **/
    @Insert("insert into user(userName,userPass,userPassEnter,email,regDate) values (#{userName},#{userPass},#{userPassEnter},#{email},#{regDate})")
    int insertUser(User user);
    /* *
     *description  根据id删除用户
     *date    2018/10/24 22:58
     **/
    @Delete("delete from user where Id=#{id}")
    int deleteUser(int id);
}
