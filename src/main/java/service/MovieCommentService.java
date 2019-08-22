package service;

import pojo.MovieComment;

import java.util.List;

public interface MovieCommentService {
    int deleteByPrimaryKey(Integer moviecommentid);
    int insert(MovieComment record);
    MovieComment selectByPrimaryKey(Integer moviecommentid);
    List<MovieComment> selectAll();
    int updateByPrimaryKey(MovieComment record);
}
