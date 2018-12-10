/*
 * 文 件 名:  IndexController.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年12月4日
 */
package come.controller;

import com.alibaba.fastjson.JSONObject;
import come.pojo.ActivityDoublePuzzle;
import come.pojo.Message;
import come.pojo.Movie;
import come.service.IndexService;
import come.util.DateUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年12月4日]
 */
@Controller
@RequestMapping("/welcome")
public class indexController
{
    @Resource
    IndexService indexService;
    
    //跳到主页
    @RequestMapping("/dancing")
    public String dancing(HttpServletRequest request)
    {
        return "/index/dancing";
    }
    
    //跳到主页
    @RequestMapping("/index")
    public String index(HttpServletRequest request)
    {
        //banner循环电影
        List<Movie> bannerMovieList = indexService.queryMovieList();
        request.setAttribute("bannerMovieList", bannerMovieList);
        //主推电影
        List<Movie> firstMovie = indexService.queryMovieListTop1();
        request.setAttribute("firstMovie", firstMovie);
        //次推电影
        List<Movie> sesondMovie = indexService.queryMovieListSecond();
        request.setAttribute("sesondMovie", sesondMovie);
        
        /*仿B站
         *  return "/index/homePage";*/
        return "/index/video/homePage_video";
    }
    
    @RequestMapping("/archive")
    public String archive(HttpServletRequest request)
    {
        return "/index/video/archive";
    }
    
    @RequestMapping("/contact")
    public String contact(HttpServletRequest request)
    {
        return "/index/video/contact";
    }
    
    @RequestMapping("/single")
    public String single(HttpServletRequest request, String movieName)
    {
        //banner循环电影
        List<Movie> bannerMovieList = indexService.queryMovieList();
        request.setAttribute("bannerMovieList", bannerMovieList);
        return "/index/video/single";
    }
    
    //相册
    @RequestMapping("/page")
    public String page1(HttpServletRequest request)
    {
        return "/index/pag1";
    }
    
    //博客
    @RequestMapping("/blog")
    public String blog(HttpServletRequest request)
    {
        return "/index/blog/blog_index";
    }
    
    //简历
    @RequestMapping("/jimoban")
    public String jimoban(HttpServletRequest request)
    {
        return "/index/jimoban";
    }
    
    @RequestMapping("/love")
    public String love(HttpServletRequest request)
    {
        List<Message> list = indexService.queryMessageList();
        request.setAttribute("messageList", list);
        return "/index/love";
    }

    @RequestMapping("/lovePictureWall")
    public String lovePictureWall(HttpServletRequest request)
    {
        return "/index/lovePictureWall";
    }
    
    @RequestMapping("/love-add-message")
    @ResponseBody
    public JSONObject addMessage(String message, String name, HttpServletRequest request)
        throws UnsupportedEncodingException
    {
        String messages = new String(message.getBytes("ISO-8859-1"), "UTF-8");
        message = java.net.URLDecoder.decode(messages, "UTF-8");
        if (StringUtils.isBlank(name))
        {
            name = "不愿意透露姓名的无名氏";
        }
        else
        {
            String names = new String(name.getBytes("ISO-8859-1"), "UTF-8");
            name = java.net.URLDecoder.decode(names, "UTF-8");
        }
        
        JSONObject json = new JSONObject();
        Message mes = new Message();
        mes.setMessage(message);
        mes.setWriter(name);
        mes.setTime(DateUtil.now());
        indexService.saveOrUpdateT(mes);
        json.put("mes", "success");
        return json;
    }
    
    @RequestMapping("/loveNote")
    public String loveNote(HttpServletRequest request)
    {
        return "/index/loveNote";
    }
    
    @RequestMapping("/test")
    public String test(HttpServletRequest request)
    {
        Object a = indexService.test();
        ActivityDoublePuzzle adp = indexService.test2();
        System.out.println(adp.getUpdateTime() + "----------");
        System.out.println(a + "========");
        return "/index/jimoban";
    }

    @RequestMapping("/fireworks")
    public String fireworks(HttpServletRequest request)
    {
        return "/index/yanhua";
    }

    @RequestMapping("/indexBefore")
    public String indexBefore(HttpServletRequest request)
    {
        return "welcome2";
    }

    @RequestMapping("/web-overview")
    public String webOverview(HttpServletRequest request)
    {
        return "/index/webOverview";
    }

}
