package com.springapp.mvc;




import com.springapp.mybatis.User;
import com.springapp.mybatis.UserDao;
import com.springapp.mybatis.UserDaoImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
* Created by acer on 2015/11/19.
*/
@Controller
public class LoginController01 {
    @RequestMapping("/no1.form")
    public String checklogin(@RequestParam("username")String name,@RequestParam("password")String pwd) {
        UserDao dao = new UserDaoImpl();
        User user =dao.FindByid(name);//jspµÄname
        String username=user.getUsername();
        String password=user.getPassword();
        if(username.equals(name) && password.equals(pwd)){
            return "ok";
        }else {
            return "buok";
        }
    }
}
