package service;

import pojo.Movie;

import java.util.List;

public interface MovieService {
    int deleteByPrimaryKey(Integer movieid);
    int insert(Movie record);
    Movie selectByPrimaryKey(Integer movieid);
    List<Movie> selectAll();
    int updateByPrimaryKey(Movie record);
    List<Movie> searchByLike(String name);
    List<Movie> searchByTypeLike(String type);
    List<Movie> searchByOrder();
}
