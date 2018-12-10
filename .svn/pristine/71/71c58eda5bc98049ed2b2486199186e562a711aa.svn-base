package com.research.imageVerify.controller;

import com.research.imageVerify.model.ImageResult;
import com.research.imageVerify.util.GenerateImage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Set;

@Controller
/*@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)*/
@RequestMapping("/img")
public class LoginController
{
    /**
     * 登录主页
     *
     * @param model
     * @param response
     * @param request
     * @return
     * @throws IOException
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpServletRequest request)
        throws IOException
    {
        ImageResult imageResult = GenerateImage.generateImage(request);
        request.setAttribute("tip", imageResult.getTip());
        request.setAttribute("name", imageResult.getName());
        request.getSession().setAttribute("imageResult", imageResult);
        return "/imageVerify/jsp/login";
    }
    
    /**
     * 验证消息
     *
     * @param location
     * @param request
     * @param userName
     * @param password
     * @return
     */
    @RequestMapping(value = "/doLogin", method = RequestMethod.POST)
    public String doLogin(String location, HttpServletRequest request, String username, String password)
    {
        if (username == null || password == null)
        {
            request.getSession().setAttribute("msg", "请输入用户名或密码!");
            return "redirect:/img/login";
        }
        ImageResult imageResult = (ImageResult)request.getSession().getAttribute("imageResult");
        if (imageResult != null)
        {
            if (location != null && !location.trim().equals(""))
            {
                String[] locations = location.split(";");
                int count = 0;
                for (int i = 0; i < locations.length; i++)
                {
                    String[] loc = locations[i].split(",");
                    int x = Integer.valueOf(loc[0]);
                    int y = Integer.valueOf(loc[1]);
                    boolean result = validateLocation(imageResult, x, y);
                    if (!result)
                    {
                        request.getSession().setAttribute("msg", "验证码错误!");
                        return "redirect:/img/login";
                    }
                    else
                    {
                        count++;
                    }
                }
                if (count != imageResult.getKeySet().size())
                {
                    request.getSession().setAttribute("msg", "验证码错误!");
                    return "redirect:/img/login";
                }
                else
                {
                    //验证成功
                    return "/imageVerify/jsp/main";
                }
            }
            else
            {
                request.getSession().setAttribute("msg", "您还没有选择图片验证码!");
                return "redirect:/img/login";
            }
        }
        else
        {
            request.setAttribute("msg", "系统错误!");
            return "redirect:/img/login";
        }
    }
    
    /**
     * 验证是否正确
     *
     * @param result 用于存储的
     * @param x      x left
     * @param y      y top
     * @return
     */
    private boolean validateLocation(ImageResult result, int x, int y)
    {
        Set<Integer> keySet = result.getKeySet();
        //判断x
        for (Integer i : keySet)
        {
            int minX = 0;
            int maxX = 0;
            if (i < 4)
            {
                minX = i * 100;
            }
            else
            {
                minX = (i % 4 * 100);
            }
            maxX = minX + 100;
            if (x > minX && x < maxX)
            {
                int minY = 0;
                int maxY = 0;
                if (i < 4)
                {
                    minY = 0;
                    maxY = 100;
                }
                else
                {
                    minX = 100;
                    maxY = 200;
                }
                if (y > minY && y < maxY)
                {
                    return true;
                }
            }
        }
        return false;
    }
    
}
