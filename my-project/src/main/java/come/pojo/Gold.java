package come.pojo;

import javax.persistence.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "gold")
public class Gold implements java.io.Serializable
{
    private Integer id;
    
    private String number;
    
    private String userId;
    
    private String time;
    
    public Gold()
    {
    }
    
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
    
    @Column(name = "number")
    public String getNumber()
    {
        return number;
    }
    
    public void setNumber(String number)
    {
        this.number = number;
    }
    
    @Column(name = "user_id")
    public String getUserId()
    {
        return userId;
    }
    
    public void setUserId(String userId)
    {
        this.userId = userId;
    }
    
    @Column(name = "time")
    public String getTime()
    {
        return time;
    }
    
    public void setTime(String time)
    {
        this.time = time;
    }
    
}