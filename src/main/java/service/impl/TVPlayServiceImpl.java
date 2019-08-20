package service.impl;

import dao.TVPlayMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.TVPlay;
import service.TVPlayService;

import java.util.List;

@Service
public class TVPlayServiceImpl implements TVPlayService {
    @Autowired
    private TVPlayMapper tvPlayMapper;

    @Override
    public int deleteByPrimaryKey(Integer tvid) {
        return tvPlayMapper.deleteByPrimaryKey(tvid);
    }

    @Override
    public int insert(TVPlay record) {
        return tvPlayMapper.insert(record);
    }

    @Override
    public TVPlay selectByPrimaryKey(Integer tvid) {
        return tvPlayMapper.selectByPrimaryKey(tvid);
    }

    @Override
    public List<TVPlay> selectAll() {
        return tvPlayMapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(TVPlay record) {
        return tvPlayMapper.updateByPrimaryKey(record);
    }
}
