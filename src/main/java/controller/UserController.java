package controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Movie;
import pojo.TVPlay;
import pojo.User;
import service.MovieService;
import service.TVPlayService;
import service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private MovieService movieService;
    @Autowired
    private TVPlayService tvPlayService;

    @RequestMapping("/")
    public String main(HttpServletRequest request){
        List<Movie> movieList=movieService.selectAll();
        request.getSession().setAttribute("movies",movieList);
        List<TVPlay> tvPlays=tvPlayService.selectAll();
        request.getSession().setAttribute("tvPlays",tvPlays);
        return "index1";
    }

    @RequestMapping("/search")
    public String search(@RequestParam(value = "search") String search,@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        PageHelper.startPage(pn, 5);
        String table=request.getParameter("show_type");
        request.setAttribute("table",table);
        if ("Movie".equals(table)){
            List<Movie> movies=movieService.searchByLike(search);
            PageInfo pageInfoMovies = new PageInfo(movies,3);
            request.setAttribute("pageInfo", pageInfoMovies);
        }else if ("TVPlay".equals(table)){
            List<TVPlay> tvPlays=tvPlayService.searchByLike(search);
            PageInfo pageInfoTVPlays = new PageInfo(tvPlays,3);
            request.setAttribute("pageInfo",pageInfoTVPlays);
        }
        return "search";
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

    @RequestMapping("/movielist")
    public String ShowList(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<Movie> mediaList = movieService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(mediaList,3);
        request.setAttribute("pageInfo", pageInfo);
        return "movielist";
    }

    @RequestMapping("/moviegrid")
    public String ShowByMoviegrid(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 12);
        List<Movie> mediaList = movieService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(mediaList,3);
        request.setAttribute("pageInfo", pageInfo);
        return "moviegrid";
    }

    @RequestMapping("/moviegridfw")
    public String ShowByMoviegridfw(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 12);
        List<Movie> mediaList = movieService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(mediaList,3);
        request.setAttribute("pageInfo", pageInfo);
        return "moviegridfw";
    }

    @RequestMapping("/tvplaylist")
    public String Show(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<TVPlay> mediaList = tvPlayService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(mediaList,3);
        request.setAttribute("pageInfo", pageInfo);
        return "tvplaylist";
    }

    @RequestMapping("/moviesingle")
    public String moviesingle(HttpServletRequest request){
        String movieid1=request.getParameter("movieid");
        Integer movieid=Integer.parseInt(movieid1);
        //System.out.println(movieid);
        Movie movie=movieService.selectByPrimaryKey(movieid);
        int ms= (int) Math.round(movie.getMoviestar());
        request.getSession().setAttribute("ms",ms);
        request.getSession().setAttribute("movie",movie);
        return "moviesingle";
    }

    @RequestMapping("/seriessingle")
    public String seriessingle(HttpServletRequest request){
        String tvid1=request.getParameter("tvid");
        Integer tvid=Integer.parseInt(tvid1);
        TVPlay tvPlay=tvPlayService.selectByPrimaryKey(tvid);
        int ts= (int) Math.round(tvPlay.getTvstar());
        request.getSession().setAttribute("ts",ts);
        request.getSession().setAttribute("tvPlay",tvPlay);
        return "seriessingle";
    }

    @RequestMapping("/movieComment")
    public String movieComment(){
        return null;
    }
}
