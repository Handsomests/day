package service;

import entity.User;

public interface UserServiceInter {
    Boolean userNameIsExist(String userName);
    Boolean emailIsExist(String email);
    Boolean login(String userName,String userPass);
    int register(User user);

}
