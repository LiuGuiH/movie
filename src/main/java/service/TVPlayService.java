package service;

import pojo.TVPlay;

import java.util.List;

public interface TVPlayService {
    int deleteByPrimaryKey(Integer tvid);
    int insert(TVPlay record);
    TVPlay selectByPrimaryKey(Integer tvid);
    List<TVPlay> selectAll();
    int updateByPrimaryKey(TVPlay record);
    List<TVPlay> searchByLike(String name);
}
