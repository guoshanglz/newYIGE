package com.springapp.mybatis;

/**
 * Created by acer on 2015/11/19.
 */
public class UserDaotest {
    public static void main(String[] args){
        UserDao userdao = new UserDaoImpl();
        User user =  userdao.FindByid("gs");
        System.out.println(user.getUsername()+":"+user.getPassword());
    }
}
