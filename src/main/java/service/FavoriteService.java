package service;

import org.apache.ibatis.annotations.Param;
import pojo.Favorite;

import java.util.List;

public interface FavoriteService {
    int deleteByPrimaryKey(Integer favoriteid);
    int insert(Favorite record);
    Favorite selectByPrimaryKey(Integer favoriteid);
    List<Favorite> selectAll();
    int updateByPrimaryKey(Favorite record);
    Favorite selectByMovieId(@Param(value = "movieid") Integer movieid,@Param(value = "userid") Integer userid);
    Favorite selectByTVPlayId(@Param(value = "tvplayid") Integer tvplayid,@Param(value = "userid") Integer userid);
    List<Favorite> selectByUserId(Integer userid);
    int deleteFavoriteByMovieId(@Param(value = "movieid") Integer movieid, @Param(value = "userid") Integer userid);
    int deleteFavoriteByTVPlayId(@Param(value = "tvplayid") Integer tvplayid,@Param(value = "userid") Integer userid);
}
