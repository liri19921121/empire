package come.pojo;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "activity_double_puzzle")
public class ActivityDoublePuzzle implements java.io.Serializable
{
    
    private Integer id;
    
    private Integer userId;
    
    private Integer acquireChance;
    
    private Integer availableChance;
    
    private String updateTime;
    
    public ActivityDoublePuzzle()
    {
    }
    
    @GenericGenerator(name = "generator", strategy = "increment")
    @Id
    @GeneratedValue(generator = "generator")
    @Column(name = "id", unique = true, nullable = false)
    public Integer getId()
    {
        return this.id;
    }
    
    public void setId(Integer id)
    {
        this.id = id;
    }
    
    @Column(name = "user_id", precision = 5, scale = 0)
    public Integer getUserId()
    {
        return this.userId;
    }
    
    public void setUserId(Integer userId)
    {
        this.userId = userId;
    }
    
    @Column(name = "acquire_chance")
    public Integer getAcquireChance()
    {
        return this.acquireChance;
    }
    
    public void setAcquireChance(Integer acquireChance)
    {
        this.acquireChance = acquireChance;
    }
    
    @Column(name = "available_chance")
    public Integer getAvailableChance()
    {
        return this.availableChance;
    }
    
    public void setAvailableChance(Integer availableChance)
    {
        this.availableChance = availableChance;
    }
    
    @Column(name = "update_time", length = 30)
    public String getUpdateTime()
    {
        return this.updateTime;
    }
    
    public void setUpdateTime(String updateTime)
    {
        this.updateTime = updateTime;
    }
    
}