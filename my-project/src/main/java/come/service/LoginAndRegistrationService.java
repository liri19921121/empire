/*
 * 文 件 名:  loginService.java
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年12月10日
 */
package come.service;

import come.dao.LoginAndRegistrationDao;
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
public class LoginAndRegistrationService
{
    @Resource
    LoginAndRegistrationDao loginAndRegistrationDao;
    
}
