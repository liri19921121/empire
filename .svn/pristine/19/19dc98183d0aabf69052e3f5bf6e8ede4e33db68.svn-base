package come.pojo;

import javax.persistence.*;
import java.util.Date;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "movie")
public class Movie implements java.io.Serializable
{
    
    // Fields
    
    private Integer id;
    
    private String movieName;
    
    private String url;
    
    private String coverUrl;
    
    private Date updateTime;
    
    private Integer grade;
    
    private Integer state;
    
    private Integer type;
    
    private String introduction;
    
    private String sesondUrl;
    
    // Constructors
    
    /** default constructor */
    public Movie()
    {
    }
    
    /** full constructor */
    public Movie(String movieName, String url, String coverUrl, Date updateTime, Integer grade, Integer state,
        Integer type, String introduction, String sesondUrl)
    {
        this.movieName = movieName;
        this.url = url;
        this.coverUrl = coverUrl;
        this.updateTime = updateTime;
        this.grade = grade;
        this.state = state;
        this.type = type;
        this.introduction = introduction;
        this.sesondUrl = sesondUrl;
    }
    
    // Property accessors
    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    public Integer getId()
    {
        return this.id;
    }
    
    public void setId(Integer id)
    {
        this.id = id;
    }
    
    @Column(name = "movie_name", length = 100)
    public String getMovieName()
    {
        return this.movieName;
    }
    
    public void setMovieName(String movieName)
    {
        this.movieName = movieName;
    }
    
    @Column(name = "url", length = 100)
    public String getUrl()
    {
        return this.url;
    }
    
    public void setUrl(String url)
    {
        this.url = url;
    }
    
    @Column(name = "cover_url", length = 100)
    public String getCoverUrl()
    {
        return this.coverUrl;
    }
    
    public void setCoverUrl(String coverUrl)
    {
        this.coverUrl = coverUrl;
    }
    
    @Temporal(TemporalType.DATE)
    @Column(name = "update_time", length = 10)
    public Date getUpdateTime()
    {
        return this.updateTime;
    }
    
    public void setUpdateTime(Date updateTime)
    {
        this.updateTime = updateTime;
    }
    
    @Column(name = "grade")
    public Integer getGrade()
    {
        return this.grade;
    }
    
    public void setGrade(Integer grade)
    {
        this.grade = grade;
    }
    
    @Column(name = "state")
    public Integer getState()
    {
        return this.state;
    }
    
    public void setState(Integer state)
    {
        this.state = state;
    }
    
    @Column(name = "type")
    public Integer getType()
    {
        return this.type;
    }
    
    public void setType(Integer type)
    {
        this.type = type;
    }
    
    @Column(name = "introduction", length = 300)
    public String getIntroduction()
    {
        return this.introduction;
    }
    
    public void setIntroduction(String introduction)
    {
        this.introduction = introduction;
    }
    
    @Column(name = "sesond_url", length = 100)
    public String getSesondUrl()
    {
        return this.sesondUrl;
    }
    
    public void setSesondUrl(String sesondUrl)
    {
        this.sesondUrl = sesondUrl;
    }
    
}