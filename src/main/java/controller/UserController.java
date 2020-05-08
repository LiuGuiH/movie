package controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.VerticalAlignment;
import org.apache.poi.xssf.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import pojo.*;
import service.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.*;


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
    @Autowired
    private AdminService adminService;


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
        String role=request.getParameter("role");
        if ("0".equals(role)){
            User user=userService.selectByUsername(username);
            if (user!=null){
                if(password.equals(user.getPassword())){
                    request.getSession().setAttribute("user",user);
                }
            }
            return "redirect:/";
        }else {
            Admin admin=adminService.selectByAdminname(username);
            if (admin!=null){
                if (password.equals(admin.getAdminpassword())){
                    request.getSession().setAttribute("admin",admin);
                }
            }
            return "adminIndex";
        }

    }

    @RequestMapping("/signup")
    public String signup(User user,HttpServletRequest request){
        if (userService.insert(user)>0){
            User user1=userService.selectByUsername(user.getUsername());
            request.getSession().setAttribute("user",user1);
        }
        return "redirect:/";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
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
        if (request.getSession().getAttribute("user")!=null){
            List<Favorite> favorites=favoriteService.selectAll();
            for (Favorite favorite:favorites){
                if (favorite.getMovieid()==movieid&&favorite.getUserid()==((User)request.getSession().getAttribute("user")).getUserid()){
                    request.setAttribute("movieStatus",favorite.getStatus());
                }
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
        if (request.getSession().getAttribute("user")!=null){
            List<Favorite> favorites=favoriteService.selectAll();
            for (Favorite favorite:favorites){
                if (favorite.getTvplayid()==tvid&&favorite.getUserid()==((User)request.getSession().getAttribute("user")).getUserid()){
                    request.setAttribute("tvPlayStatus",favorite.getStatus());
                }
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

    @RequestMapping("/adminComment")
    public String adminComment(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<MovieComment> adminMovieComments = movieCommentService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(adminMovieComments,3);
        request.setAttribute("adminComments", pageInfo);
        return "adminComment";
    }

    @RequestMapping("/adminTVComment")
    public String adminTVComment(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<TVPlayComment> adminTVPlayComments = tvPlayCommentService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(adminTVPlayComments,3);
        request.setAttribute("adminTVComments", pageInfo);
        return "adminTVComment";
    }

    @RequestMapping("/adminUser")
    public String adminUser(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<User> users = userService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(users,3);
        request.setAttribute("adminUser", pageInfo);
        return "adminUser";
    }

    @RequestMapping("/adminList")
    public String adminList(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<Admin> admins = adminService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(admins,3);
        request.setAttribute("adminList", pageInfo);
        return "adminList";
    }

    @RequestMapping("/adminMovie")
    public String adminMovie(@RequestParam(required = false,value="pn",defaultValue="1")Integer pn, HttpServletRequest request){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<Movie> movies = movieService.selectAll();
        //将用户信息放入PageInfo对象里
        PageInfo pageInfo = new PageInfo(movies,3);
        request.setAttribute("adminMovie", pageInfo);
        return "adminMovie";
    }

    @RequestMapping("/adminCommentDelete")
    public String adminCommentDelete(@RequestParam Integer moviecommentid){
            movieCommentService.deleteByPrimaryKey(moviecommentid);
            return "redirect:/adminComment";
        }

    @RequestMapping("/adminTVCommentDelete")
    public String adminTVCommentDelete(@RequestParam Integer typlaycommentid){
        tvPlayCommentService.deleteByPrimaryKey(typlaycommentid);
        return "redirect:/adminTVComment";
    }

    @RequestMapping("/adminAddMovie")
    public String adminAddMovie(@RequestParam("movieuri")MultipartFile file,String moviename,String movietype,String movieoverview,Double moviestar){
        String name=file.getOriginalFilename();
        String movieuri="img/"+name;
        try {
            file.transferTo(new File("C:\\Users\\刘桂华\\IdeaMavenProjects\\movie\\src\\main\\webapp\\img\\"+name));
        } catch (IOException e) {
            e.printStackTrace();
        }
        Movie movie=new Movie();
        movie.setMoviename(moviename);
        movie.setMovieoverview(movieoverview);
        movie.setMoviestar(moviestar);
        movie.setMovietype(movietype);
        movie.setMovieuri(movieuri);
        movieService.insert(movie);
        return "redirect:/adminMovie";
    }

    @RequestMapping("/adminMovieDelete")
    public String adminMovieDelete(@RequestParam Integer movieid){
        movieService.deleteByPrimaryKey(movieid);
        return "redirect:/adminMovie";
    }

    @RequestMapping("/adminUserDelete")
    public String adminUserDelete(@RequestParam Integer userid){
        userService.deleteByPrimaryKey(userid);
        return "redirect:/adminUser";
    }

    @RequestMapping("/adminModifyPassword")
    public String adminModifyPassword(HttpServletRequest request,@RequestParam(value = "mpass")String mpass,@RequestParam(value = "newpass") String newpass){
        Admin admin=(Admin)request.getSession().getAttribute("admin");
        if (admin.getAdminpassword().equals(mpass)){
            admin.setAdminpassword(newpass);
            adminService.updateByPrimaryKey(admin);
            return "redirect:/adminList";
        }else {
            return "adminPassword";
        }
    }

    @RequestMapping("/exportMovie")
    public String exportMovie(HttpServletRequest request){
        List<Movie> movies = movieService.selectAll();
        List<Map<String, Object>> data = new ArrayList<>();
        for(Movie movie : movies){
            Map<String, Object> map = new LinkedHashMap<>();
            map.put("movieId",movie.getMovieid());
            map.put("movieName",movie.getMoviename());
            map.put("movieUri",movie.getMovieuri());
            map.put("movieType",movie.getMovietype());
            map.put("movieStar",movie.getMoviestar());
            map.put("movieOverview",movie.getMovieoverview());
            data.add(map);
        }
        //将用户信息放入PageInfo对象里
        String sheetName = "movies";
        String[] headers = {"movieId","movieName","movieUri","movieType","movieStar","movieOverview"};
        String exportExcelName = "movies";
        exportExcel(sheetName,data,headers,exportExcelName);
//        request.setAttribute("adminMovie", pageInfo);
        return "redirect:/adminMovie";
    }

    /**
     *  导出Excel
     * @param sheetName 表格 sheet 的名称
     * @param headers  标题名称
     * @param dataList 需要显示的数据集合
     * @param exportExcelName 导出excel文件的名字
     */
    public  static void exportExcel(String sheetName, List<Map<String, Object>> dataList,
                                    String[] headers,String exportExcelName) {

        // 声明一个工作薄
        XSSFWorkbook workbook = new XSSFWorkbook();
        // 生成一个表格
        XSSFSheet sheet = workbook.createSheet(sheetName);
        // 设置表格默认列宽度为15个字节
        sheet.setDefaultColumnWidth(15);

        // 生成表格中非标题栏的样式
        XSSFCellStyle style = workbook.createCellStyle();
        // 设置这些样式
        style.setFillForegroundColor(HSSFColor.WHITE.index);//背景色
        style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        style.setBorderBottom(BorderStyle.THIN);
        style.setBorderLeft(BorderStyle.THIN);
        style.setBorderRight(BorderStyle.THIN);
        style.setBorderTop(BorderStyle.THIN);
        style.setAlignment(HorizontalAlignment.CENTER);
        // 生成表格中非标题栏的字体
        XSSFFont font = workbook.createFont();
        font.setColor(HSSFColor.BLACK.index);
        font.setFontHeightInPoints((short) 12);
        font.setBold(true);
        // 把字体应用到当前的样式
        style.setFont(font);


        // 设置表格标题栏的样式
        XSSFCellStyle titleStyle = workbook.createCellStyle();
        titleStyle.setFillForegroundColor(HSSFColor.BLUE_GREY.index);
        titleStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        titleStyle.setBorderBottom(BorderStyle.THIN);
        titleStyle.setBorderLeft(BorderStyle.THIN);
        titleStyle.setBorderRight(BorderStyle.THIN);
        titleStyle.setBorderTop(BorderStyle.THIN);
        titleStyle.setAlignment(HorizontalAlignment.CENTER);
        titleStyle.setVerticalAlignment(VerticalAlignment.CENTER);
        // 设置标题栏字体
        XSSFFont titleFont = workbook.createFont();
        titleFont.setColor(HSSFColor.WHITE.index);
        titleFont.setFontHeightInPoints((short) 12);
        titleFont.setBold(true);
        // 把字体应用到当前的样式
        titleStyle.setFont(titleFont);

        // 产生表格标题行
        XSSFRow row = sheet.createRow(0);
        for (short i = 0; i < headers.length; i++) {
            XSSFCell cell = row.createCell(i);
            cell.setCellStyle(titleStyle);
            XSSFRichTextString text = new XSSFRichTextString(headers[i]);
            cell.setCellValue(text);
        }

        // 遍历集合数据，产生数据行
        Iterator<Map<String, Object>> it = dataList.iterator();
        int index = 0;
        while (it.hasNext()) {
            index++;
            row = sheet.createRow(index);
            Map<String, Object> data = it.next();
            int i = 0;
            for(String key : data.keySet()){
                XSSFCell cell = row.createCell(i);
                cell.setCellStyle(style);
                XSSFRichTextString text = new XSSFRichTextString(data.get(key)+"");
                cell.setCellValue(text);
                i++;
            }
        }
        OutputStream out = null;
        try {
            String tmpPath = "E:\\excel\\" + exportExcelName + ".xlsx";
            out = new FileOutputStream(tmpPath);
            workbook.write(out);
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            if(workbook != null){
                try {
                    workbook.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(out != null){
                try {
                    out.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

