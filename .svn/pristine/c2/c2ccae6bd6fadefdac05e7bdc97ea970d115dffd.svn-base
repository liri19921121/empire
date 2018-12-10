/*
 * 文 件 名:  userLoginTest.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月2日
 */
package com.research.customerAnnotation.copy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月2日]
 */
@Controller
@RequestMapping("/users")
@CheckLogin(value = CheckLogin.WEB)
public class userLoginTest
{
    @RequestMapping("/test")
    public String test()
    {
        System.out.println("进入方法");
        return "userLogin";
    }
}
