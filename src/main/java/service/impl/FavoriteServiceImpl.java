package service.impl;

import dao.FavoriteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Favorite;
import service.FavoriteService;
import java.util.List;

@Service
public class FavoriteServiceImpl implements FavoriteService {
    @Autowired
    private FavoriteMapper favoriteMapper;

    @Override
    public int deleteByPrimaryKey(Integer favoriteid) {
        return favoriteMapper.deleteByPrimaryKey(favoriteid);
    }

    @Override
    public int insert(Favorite record) {
        return favoriteMapper.insert(record);
    }

    @Override
    public Favorite selectByPrimaryKey(Integer favoriteid) {
        return favoriteMapper.selectByPrimaryKey(favoriteid);
    }

    @Override
    public List<Favorite> selectAll() {
        return favoriteMapper.selectAll();
    }


    @Override
    public int updateByPrimaryKey(Favorite record) {
        return favoriteMapper.updateByPrimaryKey(record);
    }

    @Override
    public Favorite selectByMovieId(Integer movieid, Integer userid) {
        return favoriteMapper.selectByMovieId(movieid, userid);
    }

    @Override
    public Favorite selectByTVPlayId(Integer tvplayid, Integer userid) {
        return selectByTVPlayId(tvplayid, userid);
    }

    @Override
    public List<Favorite> selectByUserId(Integer userid) {
        return favoriteMapper.selectByUserId(userid);
    }


    @Override
    public int deleteFavoriteByMovieId(Integer movieid, Integer userid) {
        return favoriteMapper.deleteFavoriteByMovieId(movieid, userid);
    }

    @Override
    public int deleteFavoriteByTVPlayId(Integer tvplayid, Integer userid) {
        return favoriteMapper.deleteFavoriteByTVPlayId(tvplayid, userid);
    }


}
