/*
 * 文 件 名:  util.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月1日
 */
package com.research.sso;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月1日]
 */
public class Util
{
    //模拟数据库数据
    public static final String USERNAME = "admin";
    
    public static final String PASSWAOR = "123";
    
    //判断登录是否有效
    public static boolean checkLogin(String username, String password)
    {
        if (username.equals(USERNAME) && password.equals(PASSWAOR))
        {
            return true;
        }
        return false;
    }
    
    //判断cookie是否有效
    public static boolean checkCookie(HttpServletRequest request)
    {
        Cookie[] cookies = request.getCookies();
        if (cookies != null)
        {
            for (Cookie cookie : cookies)
            {
                if (cookie.getName().equals("ssoCookie") && cookie.getValue().equals("sso"))
                {
                    return true;
                }
            }
        }
        return false;
    }
}
