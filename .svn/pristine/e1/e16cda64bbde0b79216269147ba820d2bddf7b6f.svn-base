package come.pojo;

import javax.persistence.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "message")
public class Message implements java.io.Serializable
{
    
    private Long id;
    
    private String message;
    
    private String time;
    
    private String writer;
    
    public Message()
    {
    }
    
    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    public Long getId()
    {
        return this.id;
    }
    
    public void setId(Long id)
    {
        this.id = id;
    }
    
    @Column(name = "message")
    public String getMessage()
    {
        return message;
    }
    
    public void setMessage(String message)
    {
        this.message = message;
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
    
    @Column(name = "writer")
    public String getWriter()
    {
        return writer;
    }
    
    public void setWriter(String writer)
    {
        this.writer = writer;
    }
    
}