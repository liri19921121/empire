/*
 * 文 件 名:  SsoConsole.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月1日
 */
package com.research.sso;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月1日]
 */
@Controller
@RequestMapping("/login")
public class SsoConsole
{
    @RequestMapping("/tologin")
    public String toLogin(HttpServletRequest request, HttpServletResponse response, String username, String password,
        String gotoURL)
    {
        boolean ok = Util.checkLogin(username, password);
        if (ok)
        {
            Cookie cookie = new Cookie("ssoCookie", "sso");
            //设置cookie过期时间 so set cookie's age to 1 days: 1 * 24 * 60 * 60 * 60 seconds
            cookie.setMaxAge(5184000);
            cookie.setPath("/");
            response.addCookie(cookie);
            String url = gotoURL.replaceAll("%2", "/");
            return "redirect:" + url;
        }
        return null;
    }
    
}
