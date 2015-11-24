package com.springapp.mybatis;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;

/**
 * Created by acer on 2015/11/19.
 */
public class SqlSessionUtil {
    public SqlSession getSession() {
        SqlSessionFactoryBuilder factoryBuilder=new SqlSessionFactoryBuilder();
        InputStream conf = this.getClass().getResourceAsStream("/SqlMapConfig.xml");
        System.out.println("InputStream----------"+conf);
        SqlSessionFactory sf =factoryBuilder.build(conf);
        SqlSession session = sf.openSession();
        return session;
    }
}
