package com.controller;

import com.vo.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

    @RequestMapping("/test.do")
    @ResponseBody
    public String test() {
        return "test";
    }

    @RequestMapping(
            value = "/subLogin",
            method = RequestMethod.POST,
            produces = "application/json;charset=utf-8")
    @ResponseBody
    public String subLogin(User user) {
        //获得主体
        Subject subject = SecurityUtils.getSubject();
        //主体提交请求
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());
        try {
            //登录
            subject.login(token);
        } catch (Exception e) {
            //账号或密码错误捕捉异常信息
            return e.getMessage();
        }

        // 编码方式判断是否具有管理员身份
        if (subject.hasRole("admin")) {
            return "有admin权限";
        }
        return "无admin权限";
    }

    //@RequiresRoles("admin")表示当前主体必须有admin权限
    @RequiresRoles("admin")
    @RequestMapping(value = "/testRole", method = RequestMethod.GET)
    @ResponseBody
    public String testRole() {
        return "test role success";
    }

    //与配置相对应
    @RequestMapping(value = "/testRoles1", method = RequestMethod.GET)
    @ResponseBody
    public String testRoles1() {
        return "test roles1 success";
    }

    //与配置相对应
    @RequestMapping(value = "/testPerms", method = RequestMethod.GET)
    @ResponseBody
    public String testPerms() {
        return "testPerms  success";
    }

}
