package service.impl;

import dao.TVPlayCommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.TVPlayComment;
import service.TVPlayCommentService;

import java.util.List;
@Service
public class TVPlayCommentServiceImpl implements TVPlayCommentService {
    @Autowired
    private TVPlayCommentMapper tvPlayCommentMapper;


    @Override
    public int deleteByPrimaryKey(Integer tvplaycommentid) {
        return tvPlayCommentMapper.deleteByPrimaryKey(tvplaycommentid);
    }

    @Override
    public int insert(TVPlayComment record) {
        return tvPlayCommentMapper.insert(record);
    }

    @Override
    public TVPlayComment selectByPrimaryKey(Integer tvplaycommentid) {
        return tvPlayCommentMapper.selectByPrimaryKey(tvplaycommentid);
    }

    @Override
    public List<TVPlayComment> selectAll() {
        return null;
    }

    @Override
    public int updateByPrimaryKey(TVPlayComment record) {
        return 0;
    }
}