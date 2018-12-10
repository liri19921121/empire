/*
 * 文 件 名:  BlogController.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年4月18日
 */
package come.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年4月18日]
 */
@Controller
@RequestMapping("/blog")
public class BlogController
{
    //跳到主页
    @RequestMapping("/index")
    public String index(HttpServletRequest request)
    {
        return "/blog/index";
    }
    
    @RequestMapping("/archives")
    public String archives(HttpServletRequest request)
    {
        return "/blog/archives";
    }
    
    @RequestMapping("/detail")
    public String detail(HttpServletRequest request)
    {
        return "/blog/detail";
    }
    
    @RequestMapping("/disclaimer")
    public String disclaimer(HttpServletRequest request)
    {
        return "/blog/disclaimer";
    }
    
    @RequestMapping("/guestbook")
    public String guestbook(HttpServletRequest request)
    {
        return "/blog/guestbook";
    }
    
    @RequestMapping("/links")
    public String links(HttpServletRequest request)
    {
        return "/blog/links";
    }
    
    @RequestMapping("/sitemap")
    public String sitemap(HttpServletRequest request)
    {
        return "/blog/sitemap";
    }
    
    @RequestMapping("/about")
    public String about(HttpServletRequest request)
    {
        return "/blog/about";
    }
    
}
