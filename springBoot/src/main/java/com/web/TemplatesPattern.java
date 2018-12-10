package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/*模板模式
 * 必须放在templates下并且引入
 * <dependency>
 * <groupId>org.springframework.boot</groupId>
 * <artifactId>spring-boot-starter-thymeleaf</artifactId>
 * </dependency>
 *
 * 且不能用RestController只能用Controller
 *
 * 当模板.html修改之后需要重启才能生效
 */

@Controller
public class TemplatesPattern
{
    @RequestMapping("/")
    public String index(ModelMap map)
    {
        // 加入一个属性，用来在模板中读取
        map.addAttribute("host", "http://www.shareyo.club");
        // return模板文件的名称，对应src/main/resources/templates/index.html
        return "index";
    }
    
    @RequestMapping("/login")
    public String login()
    {
        return "login";
    }
    
}
