package com.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Spring4之后加入的注解，原来在@Controller中返回json
 * 需要@ResponseBody来配合，如果直接用@RestController
 * 替代@Controller就不需要再配置@ResponseBody，默认返回json格式。
 * 
 * 
 * @Controller：修饰class，用来创建处理http请求的对象
 * @RestController：Spring4之后加入的注解，原来在@Controller中返回json需要@ResponseBody来配合，
 * 如果直接用@RestController替代@Controller就不需要再配置@ResponseBody，默认返回json格式。
 * @RequestMapping：配置url映射
 * 
 * @author   sun
 * @version  [版本号, 2018年5月23日]
 */
@RestController
public class HelloController
{
    
    @RequestMapping("/helloll")
    public String index()
    {
        return "Hello World";
    }
}
