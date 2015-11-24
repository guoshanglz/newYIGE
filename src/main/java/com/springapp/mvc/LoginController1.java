//package com.springapp.mvc;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.sql.SQLException;
//
///**
// * Created by acer on 2015/11/17.
// */
//@Controller
//public class LoginController {
//    @RequestMapping("/no.form")
//    public String checklogin(@RequestParam("username")String name,@RequestParam("password")String pwd) throws  ClassNotFoundException,SQLException{
//        DBUtil db=new DBUtil();
//        //a1Îª¼ì²é
//        boolean a1=db.loginSuccess(name,pwd);
//        System.out.println(name+";"+pwd);
//
//        if (!a1){
//            return "buok";
//
//        }
//        return "ok";
//    }
//
//}
