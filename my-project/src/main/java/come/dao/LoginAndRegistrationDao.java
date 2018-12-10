/*
 * 文 件 名:  loginDao.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年12月10日
 */
package come.dao;

import come.base.HibernateSupport;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2017年12月10日]
 */
@Service
public class LoginAndRegistrationDao
{
    /** 注入数据库操作层 */
    @Resource
    private HibernateSupport dao;
    
    public String queryUserByUserId(String userName, String password)
    {
        StringBuffer sql = new StringBuffer("SELECT id FROM userbasicsinfo WHERE userName =? AND password = ?");
        Object obj = dao.findObjectBySql(sql.toString(), userName, password);
        if (obj != null)
        {
            return obj.toString();
        }
        else
        {
            return null;
        }
    }
    
    public String queryNameByUserId(String userId)
    {
        StringBuffer sql = new StringBuffer("SELECT name FROM userbasicsinfo WHERE id=?");
        Object obj = dao.findObjectBySql(sql.toString(), userId);
        return obj.toString();
    }
}
