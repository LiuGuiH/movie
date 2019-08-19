package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Movie;
import pojo.User;
import service.MovieService;
import service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private MovieService movieService;

    @RequestMapping("/")
    public String main(HttpServletRequest request){
        List<Movie> movieList=movieService.selectAll();
        request.getSession().setAttribute("movies",movieList);
        System.out.println(movieList);
        System.out.println(1111);
        return "index1";
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

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "redirect:/";
    }
}
