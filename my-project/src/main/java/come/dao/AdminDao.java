/*
 * 文 件 名:  IndexDao.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年12月9日
 */
package come.dao;

import come.base.HibernateSupport;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年12月9日]
 */
@Service
public class AdminDao
{
    /** 注入数据库操作层 */
    @Resource
    private HibernateSupport dao;
    
}
