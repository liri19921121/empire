/*
 * 文 件 名:  IndexDao.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年12月9日
 */
package come.dao;

import come.base.HibernateSupport;
import come.pojo.ActivityDoublePuzzle;
import come.pojo.Message;
import come.pojo.Movie;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年12月9日]
 */
@Service
public class IndexDao
{
    /** 注入数据库操作层 */
    @Resource
    private HibernateSupport dao;
    
    public Object queryAp()
    {
        StringBuffer sql = new StringBuffer("SELECT COUNT(1) FROM activity_double_puzzle");
        Object ap = dao.findObjectBySql(sql.toString());
        return ap;
    }
    
    public ActivityDoublePuzzle queryAdp()
    {
        StringBuffer sql = new StringBuffer("SELECT * FROM activity_double_puzzle WHERE user_id=36712");
        ActivityDoublePuzzle adp = dao.findObjectBySql(sql.toString(), ActivityDoublePuzzle.class, null);
        return adp;
    }
    
    public List<Movie> queryMovieList()
    {
        String sql = "select * from movie";
        List<Movie> list = dao.findBySql(sql, Movie.class);
        return list;
    }
    
    public List<Movie> queryMovieListTop1()
    {
        String sql = "select * from movie where grade = 6";
        List<Movie> list = dao.findBySql(sql, Movie.class);
        return list;
    }
    
    public List<Movie> queryMovieListSecond()
    {
        String sql = "select * from movie m where !ISNULL(m.sesond_url) ORDER BY update_time LIMIT 4";
        List<Movie> list = dao.findBySql(sql, Movie.class);
        return list;
    }
    
    public List<Message> queryMessage()
    {
        String sql = "select * from message order by time desc";
        List<Message> list = dao.findBySql(sql, Message.class);
        return list;
    }
    
    public void saveOrUpdateT(Object t)
    {
        dao.saveOrUpdate(t);
    }
}
