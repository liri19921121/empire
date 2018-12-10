/*
 * 文 件 名:  LucklyDrawDao.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年6月14日
 */
package come.dao;

import come.base.HibernateSupport;
import come.pojo.Gold;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年6月14日]
 */
@Service
public class LucklyDrawDao
{
    /** 注入数据库操作层 */
    @Resource
    private HibernateSupport dao;
    
    public String queryNumberByUserId(String userId)
    {
        StringBuffer sql = new StringBuffer("SELECT number FROM gold where user_id = ?");
        Object ap = dao.findObjectBySql(sql.toString(), userId);
        return ap.toString();
    }
    
    public Gold queryGoldByUserId(String userId)
    {
        StringBuffer sql = new StringBuffer("SELECT * FROM gold where user_id = ?");
        return dao.findObjectBySql(sql.toString(), Gold.class, userId);
    }
    
    public void updateT(Object t)
    {
        dao.update(t);
    }
}
