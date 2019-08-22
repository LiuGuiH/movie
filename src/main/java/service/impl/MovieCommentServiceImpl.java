package service.impl;

import dao.MovieCommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.MovieComment;

import java.util.List;
@Service
public class MovieCommentServiceImpl implements MovieCommentMapper {
    @Autowired
    private MovieCommentMapper movieCommentMapper;

    @Override
    public int deleteByPrimaryKey(Integer moviecommentid) {
        return movieCommentMapper.deleteByPrimaryKey(moviecommentid);
    }

    @Override
    public int insert(MovieComment record) {
        return movieCommentMapper.insert(record);
    }

    @Override
    public MovieComment selectByPrimaryKey(Integer moviecommentid) {
        return movieCommentMapper.selectByPrimaryKey(moviecommentid);
    }

    @Override
    public List<MovieComment> selectAll() {
        return movieCommentMapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(MovieComment record) {
        return movieCommentMapper.updateByPrimaryKey(record);
    }
}
