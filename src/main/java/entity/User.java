package entity;

import java.io.Serializable;
import java.util.Date;

/* *
 * author: 阿帅
 * description:用户实体类
 * date: 2018-10-12 16:06
 **/
public class User implements Serializable {
    /* 主键*/
    private int Id;
    /*应户名*/
    private String userName;
    private String userPass;
    private String userPassEnter;
    private String email;
    private Date regDate=new Date();

    public int getId() {
        return Id;
    }

    public String getUserName() {
        return userName;
    }

    public String getUserPass() {
        return userPass;
    }

    public String getUserPassEnter() {
        return userPassEnter;
    }

    public String getEmail() {
        return email;
    }


    public Date getRegDate() {
        return regDate;
    }

    public void setId(int id) {
        Id = id;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public void setUserPassEnter(String userPassEnter) {
        this.userPassEnter = userPassEnter;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public User(int id, String userName, String userPass, String userPassEnter, String email, Date regDate) {
        Id = id;
        this.userName = userName;
        this.userPass = userPass;
        this.userPassEnter = userPassEnter;
        this.email = email;
        this.regDate = regDate;
    }

    public User() {
    }
    @Override
    public String toString(){
        return "userName:"+getUserName()+"userPass:"+getUserPass();
    }
}
