package pojo;

import org.springframework.stereotype.Component;

@Component
public class TVPlay {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tvplay.TVId
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    private Integer tvid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tvplay.TVName
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    private String tvname;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tvplay.TVUri
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    private String tvuri;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tvplay.TVType
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    private String tvtype;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tvplay.TVStar
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    private Double tvstar;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tvplay.TVOverview
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    private String tvoverview;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tvplay.TVId
     *
     * @return the value of tvplay.TVId
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public Integer getTvid() {
        return tvid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tvplay.TVId
     *
     * @param tvid the value for tvplay.TVId
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public void setTvid(Integer tvid) {
        this.tvid = tvid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tvplay.TVName
     *
     * @return the value of tvplay.TVName
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public String getTvname() {
        return tvname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tvplay.TVName
     *
     * @param tvname the value for tvplay.TVName
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public void setTvname(String tvname) {
        this.tvname = tvname == null ? null : tvname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tvplay.TVUri
     *
     * @return the value of tvplay.TVUri
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public String getTvuri() {
        return tvuri;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tvplay.TVUri
     *
     * @param tvuri the value for tvplay.TVUri
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public void setTvuri(String tvuri) {
        this.tvuri = tvuri == null ? null : tvuri.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tvplay.TVType
     *
     * @return the value of tvplay.TVType
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public String getTvtype() {
        return tvtype;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tvplay.TVType
     *
     * @param tvtype the value for tvplay.TVType
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public void setTvtype(String tvtype) {
        this.tvtype = tvtype == null ? null : tvtype.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tvplay.TVStar
     *
     * @return the value of tvplay.TVStar
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public Double getTvstar() {
        return tvstar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tvplay.TVStar
     *
     * @param tvstar the value for tvplay.TVStar
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public void setTvstar(Double tvstar) {
        this.tvstar = tvstar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tvplay.TVOverview
     *
     * @return the value of tvplay.TVOverview
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public String getTvoverview() {
        return tvoverview;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tvplay.TVOverview
     *
     * @param tvoverview the value for tvplay.TVOverview
     *
     * @mbggenerated Mon Aug 19 19:53:04 CST 2019
     */
    public void setTvoverview(String tvoverview) {
        this.tvoverview = tvoverview == null ? null : tvoverview.trim();
    }

    @Override
    public String toString() {
        return "TVPlay{" +
                "tvid=" + tvid +
                ", tvname='" + tvname + '\'' +
                ", tvuri='" + tvuri + '\'' +
                ", tvtype='" + tvtype + '\'' +
                ", tvstar=" + tvstar +
                ", tvoverview='" + tvoverview + '\'' +
                '}';
    }
}