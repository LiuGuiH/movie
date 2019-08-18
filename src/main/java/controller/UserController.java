package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.User;
import service.UserService;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String main(){
        return "index";
    }

    @RequestMapping("/login")
    public String login(HttpServletRequest request){
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        User user=userService.selectByUsername(username);
        if(password.equals(user.getPassword())){
            request.getSession().setAttribute("user",user);
        }
        return "redirect:/";
    }

    @RequestMapping("/signup")
    public String signup(User user,HttpServletRequest request){
        if (userService.insert(user)>0){
            request.getSession().setAttribute("user",user);
        }else {

        }
        return "redirect:/";
    }
}
