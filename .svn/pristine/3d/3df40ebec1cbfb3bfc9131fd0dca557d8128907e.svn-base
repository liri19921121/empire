/*
 * 文 件 名:  IndexService.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年12月9日
 */
package come.service;

import come.dao.IndexDao;
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
public class IndexService
{
    @Resource
    private IndexDao indexDao;
    
    public Object test()
    {
        Object obj = indexDao.queryAp();
        ActivityDoublePuzzle adp = indexDao.queryAdp();
        return obj;
    }
    
    public ActivityDoublePuzzle test2()
    {
        ActivityDoublePuzzle adp = indexDao.queryAdp();
        return adp;
    }
    
    public List<Movie> queryMovieList()
    {
        List<Movie> list = indexDao.queryMovieList();
        return list;
    }
    
    public List<Movie> queryMovieListTop1()
    {
        List<Movie> list = indexDao.queryMovieListTop1();
        return list;
    }
    
    public List<Movie> queryMovieListSecond()
    {
        List<Movie> list = indexDao.queryMovieListSecond();
        return list;
    }
    
    public List<Message> queryMessageList()
    {
        List<Message> list = indexDao.queryMessage();
        return list;
    }
    
    public void saveOrUpdateT(Object t)
    {
        indexDao.saveOrUpdateT(t);
    }
}
