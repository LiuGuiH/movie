package controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.*;
import service.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;



@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private UserInfoService userInfoService;
    @Autowired
    private MovieService movieService;
    @Autowired
    private TVPlayService tvPlayService;
    @Autowired
    private MovieCommentService movieCommentService;
    @Autowired
    private TVPlayCommentService tvPlayCommentService;
    @Autowired
    private FavoriteService favoriteService;
    @RequestMapping("/")
    public String main(HttpServletRequest request){
        List<Movie> movieList=movieService.selectAll();
        request.getSession().setAttribute("movies",movieList);
        List<TVPlay> tvPlays=tvPlayService.selectAll();
        request.getSession().setAttribute("tvPlays",tvPlays);
        List<Movie> orders=movieService.searchByOrder();
        request.getSession().setAttribute("orders",orders);
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
        request.setAttribute("MoviePageInfo", pageInfo);
        return "movielist";
    }

    @RequestMapping("/moviegrid")
    public String ShowByMoviegrid(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 12);
        List<Movie> mediaList = movieService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(mediaList,3);
        request.setAttribute("movieGridPageInfo", pageInfo);
        return "moviegrid";
    }

    @RequestMapping("/moviegridfw")
    public String ShowByMoviegridfw(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 12);
        List<Movie> mediaList = movieService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(mediaList,3);
        request.setAttribute("movieGridfwPageInfo", pageInfo);
        return "moviegridfw";
    }

    @RequestMapping("/tvplaylist")
    public String Show(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<TVPlay> mediaList = tvPlayService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(mediaList,3);
        request.setAttribute("tvPlayListPageInfo", pageInfo);
        return "tvplaylist";
    }

    @RequestMapping("/moviesingle")
    public String moviesingle(HttpServletRequest request){
        String movieid1=request.getParameter("movieid");
        Integer movieid=Integer.parseInt(movieid1);
        Movie movie=movieService.selectByPrimaryKey(movieid);
        int ms= (int) Math.round(movie.getMoviestar());
        List<MovieComment> movieComments=movieCommentService.selectAllByMovieId(movieid);
        List<String> usernames=new ArrayList<>();
        for (MovieComment movieComment:movieComments){
            usernames.add(userService.selectByPrimaryKey(movieComment.getUserid()).getUsername());
        }
        List<Favorite> favorites=favoriteService.selectAll();
        for (Favorite favorite:favorites){
            if (favorite.getMovieid()==movieid&&favorite.getUserid()==((User)request.getSession().getAttribute("user")).getUserid()){
                request.getSession().setAttribute("movieStatus",favorite.getStatus());
            }
        }

        request.getSession().setAttribute("usernames",usernames);
        request.getSession().setAttribute("movieComments",movieComments);
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
        List<TVPlayComment> tvPlayComments=tvPlayCommentService.selectAllByTVId(tvid);
        List<String> usernames=new ArrayList<>();
        for (TVPlayComment tvPlayComment:tvPlayComments){
            usernames.add(userService.selectByPrimaryKey(tvPlayComment.getUserid()).getUsername());
        }
        List<Favorite> favorites=favoriteService.selectAll();
        for (Favorite favorite:favorites){
            if (favorite.getTvplayid()==tvid&&favorite.getUserid()==((User)request.getSession().getAttribute("user")).getUserid()){
                request.getSession().setAttribute("tvPlayStatus",favorite.getStatus());
            }
        }

        request.getSession().setAttribute("usernames",usernames);
        request.getSession().setAttribute("tvPlayComments",tvPlayComments);
        request.getSession().setAttribute("ts",ts);
        request.getSession().setAttribute("tvPlay",tvPlay);
        return "seriessingle";
    }

    @RequestMapping("/movieComment")
    @ResponseBody
    public MovieComment movieComment(@RequestParam String title, @RequestParam Integer star0, @RequestParam String content, @RequestParam Integer userid, @RequestParam Integer movieid, HttpServletResponse response,HttpServletRequest request) throws IOException {
        Date date=new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String time=sdf.format(date);
        MovieComment movieComment=new MovieComment(userid,movieid,time,star0,title,content);
        movieCommentService.insert(movieComment);
        request.getSession().setAttribute("commentUsername",userService.selectByPrimaryKey(userid).getUsername());
        return movieComment;
    }

    @RequestMapping("/tvplayComment")
    @ResponseBody
    public TVPlayComment tvplayComment(@RequestParam String title, @RequestParam Integer star, @RequestParam String content, @RequestParam Integer userid, @RequestParam Integer tvid, HttpServletResponse response,HttpServletRequest request) throws IOException {
        Date date=new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String time=sdf.format(date);
        TVPlayComment tvPlayComment=new TVPlayComment(userid,tvid,time,star,title,content);
        tvPlayCommentService.insert(tvPlayComment);
        request.getSession().setAttribute("commentUsername",userService.selectByPrimaryKey(userid).getUsername());
        return tvPlayComment;
    }

    @RequestMapping("/typeList")
    public String type(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn,@RequestParam String type,HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        //将用户信息放入PageInfo对象里
        List<Movie> movieLists=movieService.searchByTypeLike(type);
        PageInfo pageInfo = new PageInfo(movieLists,3);
        request.setAttribute("typePageInfo", pageInfo);
        request.setAttribute("typeName", type);
        return "type";

    }

    @RequestMapping("/userdetails")
    public String userdetails(@RequestParam Integer userid,HttpServletRequest request){
        UserInfo userInfo=userInfoService.selectByUserId(userid);
        request.getSession().setAttribute("userInfo",userInfo);
        return "userdetails";
    }

    @RequestMapping("/userprofile")
    public String saveUserInfo(@RequestParam Integer userid,HttpServletRequest request){
        UserInfo userInfo=userInfoService.selectByUserId(userid);
        request.getSession().setAttribute("userInfo",userInfo);
        return "userprofile";
    }


    @RequestMapping("/saveUserInfo")
    public String saveUserInfo(HttpServletRequest request,@RequestParam Integer userid,@RequestParam String firstname,@RequestParam String lastname,@RequestParam String address){
        UserInfo userInfo=new UserInfo(userid,firstname,lastname,address);
        userInfoService.insert(userInfo);
        UserInfo userInfo1=userInfoService.selectByUserId(userid);
        request.getSession().setAttribute("userInfo",userInfo1);
        return "userprofile";
    }

    @RequestMapping("/modifyPassword")
    public String modifyPassword(HttpServletRequest request,@RequestParam Integer userid,@RequestParam String oldPassword,@RequestParam String newPassword){
        User user=userService.selectByPrimaryKey(userid);
        User user1=new User();
        user1.setPassword(newPassword);
        user1.setUserid(userid);
        user1.setUsername(user.getUsername());
        user.setEmail(user.getEmail());
        if (user.getPassword().equals(oldPassword)){
            userService.updateByPrimaryKey(user1);
            return "userprofile";
        }else {
            request.getSession().setAttribute("msg","密码错误！");
            return "userprofile";
        }
    }

    @RequestMapping("/userrate")
    public String userrate(HttpServletRequest request,@RequestParam Integer userid,@RequestParam(required = false,value="pn",defaultValue="1")Integer pn){
        //从第一条开始 每页查询三条数据
        PageHelper.startPage(pn, 3);
        //将用户信息放入PageInfo对象里
        List<MovieComment> movieComments1=movieCommentService.selectAllByUserId(userid);
        List<Movie> movies1=new ArrayList<>();
        PageInfo pageInfo = new PageInfo(movieComments1,3);
        for (MovieComment movieComment:movieComments1){
            movies1.add(movieService.selectByPrimaryKey(movieComment.getMovieid()));
        }
        request.setAttribute("movieCommentsPageInfo", pageInfo);
        request.setAttribute("movies1",movies1);
        return "userrate";
    }

    @RequestMapping("/deleteFavoriteByMovieId")
    public Favorite deleteFavoriteByMovieId(@RequestParam Integer movieid,@RequestParam Integer userid){
        favoriteService.deleteFavoriteByMovieId(movieid,userid);
        return new Favorite();
    }

    @RequestMapping("/deleteFavoriteByTVPlayId")
    public Favorite deleteFavoriteByTVPlayId(@RequestParam Integer tvplayid,@RequestParam Integer userid){
        favoriteService.deleteFavoriteByTVPlayId(tvplayid,userid);
        return new Favorite();
    }

    @RequestMapping("/addFavoriteMovie")
    public Favorite addFavorite(@RequestParam Integer movieid,@RequestParam Integer userid){
        Favorite favorite=new Favorite();
        favorite.setMovieid(movieid);
        favorite.setUserid(userid);
        favorite.setStatus(1);
        favoriteService.insert(favorite);
        return favorite;
    }

    @RequestMapping("/addFavoriteTVPlay")
    public Favorite addFavoriteTVPlay(@RequestParam Integer tvplayid,@RequestParam Integer userid){
        Favorite favorite=new Favorite();
        favorite.setTvplayid(tvplayid);
        favorite.setUserid(userid);
        favorite.setStatus(1);
        favoriteService.insert(favorite);
        return favorite;
    }

    @RequestMapping("/userfavoritelist")
    public String userfavoritelist(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn,@RequestParam Integer userid,HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 2);
        List<Favorite> favorites = favoriteService.selectByUserId(userid);
        List<TVPlay> tvPlays=new ArrayList<>();
        List<Movie> movies=new ArrayList<>();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(favorites,3);
        for (Favorite favorite:favorites){
            if (favorite.getMovieid()==0){
                tvPlays.add(tvPlayService.selectByPrimaryKey(favorite.getTvplayid()));
            }else {
                movies.add(movieService.selectByPrimaryKey(favorite.getMovieid()));
            }
        }
        request.setAttribute("favoriteMovies",movies);
        request.setAttribute("favoriteTVPlays",tvPlays);
        request.setAttribute("userfavoritelist", pageInfo);
       return "userfavoritelist";
    }

    @RequestMapping("/userfavoritegrid")
    public String userfavoritegrid(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn,@RequestParam Integer userid, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<Favorite> favorites = favoriteService.selectByUserId(userid);
        List<TVPlay> tvPlays=new ArrayList<>();
        List<Movie> movies=new ArrayList<>();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(favorites,3);
        for (Favorite favorite:favorites){
            if (favorite.getMovieid()==0){
                tvPlays.add(tvPlayService.selectByPrimaryKey(favorite.getTvplayid()));
            }else {
                movies.add(movieService.selectByPrimaryKey(favorite.getMovieid()));
            }
        }
        request.setAttribute("favoriteMovies",movies);
        request.setAttribute("favoriteTVPlays",tvPlays);
        request.setAttribute("userfavoritegrid", pageInfo);
        return "userfavoritegrid";
    }

}

