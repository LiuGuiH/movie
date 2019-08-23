package service;

import pojo.TVPlayComment;

import java.util.List;

public interface TVPlayCommentService {
    int deleteByPrimaryKey(Integer typlaycommentid);
    int insert(TVPlayComment record);
    TVPlayComment selectByPrimaryKey(Integer typlaycommentid);
    List<TVPlayComment> selectAll();
    int updateByPrimaryKey(TVPlayComment record);
    List<TVPlayComment> selectAllByTVId(Integer typlayid);
}
