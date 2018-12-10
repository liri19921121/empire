package come.controller;

import com.alibaba.fastjson.JSONObject;
import come.dao.LoginAndRegistrationDao;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/login-and-register")
public class LoginAndRegistrationController
{
    @Resource
    private LoginAndRegistrationDao loginAndRegistrationDao;
    
    @RequestMapping("/to-login")
    public String toLogin(HttpServletRequest request)
    {
        return "/views/login";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject login(String userName, String password, HttpServletRequest request)
    {
        JSONObject json = new JSONObject();
        String userId = loginAndRegistrationDao.queryUserByUserId(userName, password);
        if (StringUtils.isBlank(userId))
        {
            json.put("msg", "用户名或密码错误");
        }
        else
        {
            request.getSession().setAttribute("userId", userId);
            json.put("msg", "success");
        }
        return json;
    }
    
    @RequestMapping(value = "/to-register", method = RequestMethod.POST)
    @ResponseBody
    public String register(String userName, String passWord, String realName, String phone, HttpServletRequest request)
    {
        System.out.println(userName);
        return "error";
        // return "/views/register";
    }
    
    @RequestMapping(value = "/forget-password")
    public String forgetPassword(HttpServletRequest request)
    {
        return "/views/forgetPassword";
    }
}
