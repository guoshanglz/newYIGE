package com.springapp.mybatis;

import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * Created by acer on 2015/11/19.
 */
public class UserDaoImpl implements UserDao{
    public User FindByid(String username) {
        SqlSessionUtil s =new SqlSessionUtil();
        SqlSession session = s.getSession();
        User user = session.selectOne("FindByid",username);
        session.close();
        return user;
    }


}
