//package com.springapp.mvc;
//
//import org.springframework.stereotype.Controller;
//
//import java.sql.*;
//
///**
// * Created by acer on 2015/11/17.
// */
//@Controller
//public class DBUtil {
//    boolean b=false;
//
//    public  void JDBC() throws ClassNotFoundException{
//        Class.forName("com.mysql.jdbc.Driver");
//        b=true;
//        System.out.println("JDBC加载成功");
//    }
//
//    public Connection getConnection() throws ClassNotFoundException, SQLException {
//        if(!b){
//            JDBC();
//        }
//        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/user","root","123456");
//                return conn;
//    }
//
//
//    public  boolean loginSuccess(String userName,String passWord){
//        boolean a=false;//return Value
//        String sql="select * from login1";
//        Connection conn=null;
//        Statement stmt=null;//声明一下
//        ResultSet rs=null;
//        try{
//            conn=getConnection();
//            stmt=conn.createStatement();
//            rs=stmt.executeQuery(sql);//执行查询sql 然后顺序向下执行
//            while(rs.next()){
//                String us=rs.getString("username");
//                String ps=rs.getString("password");
//                if(us.equals(userName) && ps.equals(passWord)){
//                    a=true;
//                    break;
//                }
//            }
//
//
//        }catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return a;
//    }
//
//
//    }
//
//
//
//
//
//
//
//
