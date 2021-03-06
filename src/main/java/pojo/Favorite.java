package pojo;

import org.springframework.stereotype.Component;

@Component
public class Favorite {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column favorite.favoriteId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    private Integer favoriteid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column favorite.userId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    private Integer userid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column favorite.movieId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    private Integer movieid=0;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column favorite.tvplayId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    private Integer tvplayid=0;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column favorite.status
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    private Integer status;


    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column favorite.favoriteId
     *
     * @return the value of favorite.favoriteId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    public Integer getFavoriteid() {
        return favoriteid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column favorite.favoriteId
     *
     * @param favoriteid the value for favorite.favoriteId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    public void setFavoriteid(Integer favoriteid) {
        this.favoriteid = favoriteid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column favorite.userId
     *
     * @return the value of favorite.userId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column favorite.userId
     *
     * @param userid the value for favorite.userId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column favorite.movieId
     *
     * @return the value of favorite.movieId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    public Integer getMovieid() {
        return movieid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column favorite.movieId
     *
     * @param movieid the value for favorite.movieId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    public void setMovieid(Integer movieid) {
        this.movieid = movieid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column favorite.tvplayId
     *
     * @return the value of favorite.tvplayId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    public Integer getTvplayid() {
        return tvplayid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column favorite.tvplayId
     *
     * @param tvplayid the value for favorite.tvplayId
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    public void setTvplayid(Integer tvplayid) {
        this.tvplayid = tvplayid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column favorite.status
     *
     * @return the value of favorite.status
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column favorite.status
     *
     * @param status the value for favorite.status
     *
     * @mbggenerated Sat Aug 24 20:21:29 CST 2019
     */
    public void setStatus(Integer status) {
        this.status = status;
    }


}