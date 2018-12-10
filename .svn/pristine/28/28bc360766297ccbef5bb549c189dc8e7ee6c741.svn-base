/*
 * 文 件 名:  controller1.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月1日
 */
package com.research.sso;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 完全同域下的sso
 * 还有同父域，完全跨域两种情况，使用不多
 * @author  sun
 * @version  [版本号, 2017年11月1日]
 */
@Controller
@RequestMapping("/index")
public class controller
{
    @RequestMapping("/gotopage")
    public String index(HttpServletRequest request)
    {
        if (Util.checkCookie(request))
        {
            request.getSession().setAttribute("login", "userlogin");
            return "index";
        }
        return "login";
    }
    
    @RequestMapping("/gotopage2")
    public String index2(HttpServletRequest request)
    {
        if (Util.checkCookie(request))
        {
            return "index2";
        }
        return "login2";
    }
    
}
