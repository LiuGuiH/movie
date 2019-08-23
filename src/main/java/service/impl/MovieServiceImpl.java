package service.impl;

import dao.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Movie;
import service.MovieService;

import java.util.List;
@Service
public class MovieServiceImpl implements MovieService {
    @Autowired
    private MovieMapper movieService;

    @Override
    public int deleteByPrimaryKey(Integer movieid) {
        return movieService.deleteByPrimaryKey(movieid);
    }

    @Override
    public int insert(Movie record) {
        return movieService.insert(record);
    }

    @Override
    public Movie selectByPrimaryKey(Integer movieid) {
        return movieService.selectByPrimaryKey(movieid);
    }

    @Override
    public List<Movie> selectAll() {
        return movieService.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Movie record) {
        return movieService.updateByPrimaryKey(record);
    }

    @Override
    public List<Movie> searchByLike(String name) {
        return movieService.searchByLike(name);
    }

    @Override
    public List<Movie> searchByTypeLike(String type) {
        return movieService.searchByTypeLike(type);
    }

    @Override
    public List<Movie> searchByOrder() {
        return movieService.searchByOrder();
    }
}
